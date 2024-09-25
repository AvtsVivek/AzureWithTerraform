#!/bin/bash
# ssh_key_generator - designed to work with the Terraform External Data Source provider
#   https://www.terraform.io/docs/providers/external/data_source.html
#  this script takes the 2 key_* arguments as JSON formatted stdin
#  produces public_key & private_key (contents) and the private_key_file (path) as JSON formatted stdout
#  DEBUG statements may be safely uncommented as they output to stderr

function error_exit() {
  echo "$1" 1>&2
  exit 1
}

function check_deps() {
  test -f $(which ssh-keygen) || error_exit "ssh-keygen command not found in path, please install it"
  test -f $(which jq) || error_exit "jq command not found in path, please install it"
}

function parse_input() {
  # jq reads from stdin so we don't have to set up any inputs, but let's validate the outputs
  eval "$(jq -r '@sh "export KEY_NAME=\(.key_name) KEY_ENVIRONMENT=\(.key_environment)"')"
  if [[ -z "${KEY_NAME}" ]]; then export KEY_NAME=none; fi
  if [[ -z "${KEY_ENVIRONMENT}" ]]; then export KEY_ENVIRONMENT=none; fi
}

function create_ssh_key() {
  script_dir=$(dirname $0)
  export ssh_key_file="${script_dir}/${KEY_NAME}-${KEY_ENVIRONMENT}.sshkeys"
  # echo "DEBUG: ssh_key_file = ${ssh_key_file}" 1>&2
  if [[ ! -f "${ssh_key_file}" ]]; then
    ssh-keygen -q -m PEM -t rsa -b 4096 -N '' -f $ssh_key_file
  fi
}

function produce_output() {
  public_key_file_name=$ssh_key_file.pub
  public_key_contents=$(cat ${ssh_key_file}.pub)
  # echo "DEBUG: public_key_contents ${public_key_contents}" 1>&2
  private_key_contents=$(cat ${ssh_key_file} | awk '$1=$1' ORS='  \n')
  # echo "DEBUG: private_key_contents ${private_key_contents}" 1>&2
  # echo "DEBUG: private_key_file ${ssh_key_file}" 1>&2
  jq -n \
    --arg name $KEY_NAME \
    --arg public_key_contents "$public_key_contents" \
    --arg private_key_contents "$private_key_contents" \
    --arg environment $KEY_ENVIRONMENT \
    --arg ssh_key_file "$ssh_key_file" \
    --arg script_dir $script_dir \
    --arg public_key_file_name $public_key_file_name \
    '{"name":$name, "public_key_contents":$public_key_contents, "private_key_contents":$private_key_contents, "environment":$environment, "ssh_key_file":$ssh_key_file, "script_dir":$script_dir, "public_key_file_name": $public_key_file_name }'
}

# main()
check_deps
# echo "DEBUG: received: $INPUT" 1>&2
parse_input
create_ssh_key
produce_output
