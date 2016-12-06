# madircd/madircd Dockerfile

This repository contains **Dockerfile** of [MadIRCd](https://git.byteturtle.eu/MadIRC/MadIRCd) a fork of [InspIRCd](http://www.inspircd.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/sheogorath/madircd/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

- [debian](https://registry.hub.docker.com/_/debian/)

## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/sheogorath/madircd/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull sheogorath/madircd`

## Usage

Create a directory containing the configuration for the [MadIRCd](https://git.byteturtle.eu/MadIRC/MadIRCd) with at least the [inspircd.conf](https://github.com/inspircd/inspircd/blob/master/docs/conf/inspircd.conf.example)

Then launch it with your configuration:

```
docker run -d -p 6667:6667 -v /home/myuser/config:/inspircd/conf sheogorath/madircd
```

There is also a nice blog article about our config management at MadIRC.
https://www.shivering-isles.com/config-management-at-madirc/

Easy!

