ws(3) -- Simple Local Web Server
=============================

## SYNOPSIS

ws \[-v|--verbose\] \[-d|--directory DIRECTORY\] \[-p|--port PORT\] \[-h|--help\]

## DESCRIPTION

ws is a simple script which launches a server for testing of static websites.

## EXAMPLES

### Launch a server with the current directory as the root

ws

### Launch a server with the current directory as the root, on port 1337

ws -p 1337

### Launch a server on port 1337, with the home folder as the root, in verbose mode

ws -d ~ -p 1337 -v

### Show help

ws -h

## Author

Kenneth Powers <mail@kenpowers.net>  
http://bitbucket.org/KenPowers