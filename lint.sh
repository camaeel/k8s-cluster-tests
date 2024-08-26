#!/bin/bash

set -e
chainsaw lint configuration -f chainsaw/config.yaml

for test_file in `find chainsaw -name chainsaw-test.yaml` ; do
  echo "linting $test_file"
  chainsaw lint test -f $test_file
done