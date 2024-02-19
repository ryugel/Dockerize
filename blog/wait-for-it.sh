#!/bin/bash
set -e
diesel migration run && cargo run
