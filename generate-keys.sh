#!/bin/bash

mkdir -p keys/web keys/worker

export WEB_DIR=./keys/web
export WORK_DIR=./keys/worker

ssh-keygen -t rsa -f $WEB_DIR/tsa_host_key -N ''
ssh-keygen -t rsa -f $WEB_DIR/session_signing_key -N ''

ssh-keygen -t rsa -f $WORK_DIR/worker_key -N ''

cp $WORK_DIR/worker_key.pub $WEB_DIR/authorized_worker_keys
cp $WEB_DIR/tsa_host_key.pub $WORK_DIR
