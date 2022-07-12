#!/bin/bash

function SayHello() {
    echo "Hello World!"
}

function produce_output() {
  jq -n --arg arg1 "arg 1" '{"arg1":$arg1}'
}

SayHello
produce_output