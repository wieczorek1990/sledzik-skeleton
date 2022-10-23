#!/bin/bash

nginx -c "$(pwd)/proxy/nginx.conf" -t
