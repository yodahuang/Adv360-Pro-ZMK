#!/usr/bin/env bash

set -e

container_cmd="docker"
command -v "$container_cmd" || container_cmd="podman"

"$container_cmd" run -it --name zmk zmk
"$container_cmd" cp zmk:/app/firmware/ ./
"$container_cmd" stop zmk
"$container_cmd" rm zmk