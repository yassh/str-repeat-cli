#!/bin/sh

function test() {
  local INPUT=$1
  local EXPECTED=$2
  local ACTUAL=$(eval "./bin/index.js $1")
  local TESTCASE="INPUT: $INPUT, EXPECTED: $EXPECTED, ACTUAL: $ACTUAL"

  if [ "$EXPECTED" = "$ACTUAL" ]; then
    echo "✓ $TESTCASE"
    return 0
  else
    echo "✖ $TESTCASE"
    return 1
  fi
}

test 'w 10' 'wwwwwwwwww' || exit 1
test 'foo 3' 'foofoofoo' || exit 1
test '3 10' '3333333333' || exit 1
