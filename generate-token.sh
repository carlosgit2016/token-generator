#!/bin/bash

EXPIRE=${1:-3600}

if [[ ! -e /tmp/token-generator ]]; then
    mkdir /tmp/token-generator 2> /dev/null
fi

if [[ ! -e /tmp/token-generator/gen-jwt.py ]]; then
    curl -SsL "https://github.com/carlosgit2016/token-generator/releases/download/v1.0.0/gen-jwt.py" -o /tmp/token-generator/gen-jwt.py
fi

if [[ ! -e /tmp/token-generator/key.pem ]]; then
    curl -SsL "https://github.com/carlosgit2016/token-generator/releases/download/v1.0.0/key.pem" -o /tmp/token-generator/key.pem
fi


pushd /tmp/token-generator

python ./gen-jwt.py ./key.pem --expire "$EXPIRE" "$@"
