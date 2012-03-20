ws(3) -- Simple Local Web Server
=============================

## SYNOPSIS
    :::text
    ws \[-v | --verbose\] \[-d | --directory DIRECTORY\] \[-p | --port PORT\] \[-h | --help\]

## INSTALLTION

To install, make sure you have the latest version of Ruby and RubyGems installed (tested and working on Ruby 1.9.3, RubyGems 1.8.19) and execute `gem install ws`.

## DESCRIPTION

`ws` is a simple script which launches a server for testing of static websites.

## EXAMPLES

### Launch a server with the current directory as the root

    :::text
    ws

### Launch a server with the current directory as the root, on port 1337

    :::text
    ws -p 1337

### Launch a server on port 1337, with the home folder as the root, in verbose mode

    :::text
    ws -d ~ -p 1337 -v

### Show help

    :::text
    ws -h

## Author

Kenneth Powers [`mail@kenpowers.net`](mailto:mail@kenpowers.net)  
[http://bitbucket.org/KenPowers](http://bitbucket.org/KenPowers)