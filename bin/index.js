#!/usr/bin/env node

'use strict';

const argv = require('yargs')
  .help('help').alias('help', 'h')
  .usage('Usage: str-repeat <string> <number>')
  .example('str-repeat w 10', 'print wwwwwwwwww')
  .example('str-repeat foo 3', 'print foofoofoo')
  .argv;

const string = argv._[0].toString();
const number = argv._[1];

console.log(string.repeat(number));
