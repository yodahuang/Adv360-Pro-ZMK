#!/usr/bin/env bash

set -e

container_cmd="docker"
command -v "$container_cmd" || container_cmd="podman"

"$container_cmd" build --tag zmk .