#!/bin/bash

function produce_output() {
  jq -n --arg arg1 "arg 1" '{"arg1":$arg1}'
}

produce_output