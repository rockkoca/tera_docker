#!/usr/bin/env bash

node set password:$password

pm2-runtime start run-node.js

