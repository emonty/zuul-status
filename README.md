zuul-status
===========

Realtime graphical status for OpenStack zuul.

### Prerequisites: Quick build/CI

* Xvfb
* GCC 4.2 or newer
* Python 2.6 or 2.7
* GNU Make 3.81 or newer
* libexecinfo (FreeBSD and OpenBSD only)

### Prerequisites: Dev

* NodeJS 0.10.24 or newer
* Grunt 0.4.2
* bower 1.2.8

### Command reference:

**Install node/npm

* sudo apt-get install nodejs npm

**Bootstrap & build the CI environment**

* `./bin/bootstrap.sh`
* `./bin/build.sh`

**Add local commands to your path**

* export PATH=$(pwd)/node_modules/.bin:$(pwd)/.local/bin:$PATH

**Run a local development server**

`grunt server`

**Run the test suite**

`grunt test`

**Package the distro**

`grunt build`
