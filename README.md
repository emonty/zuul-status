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

### Getting setup:

There are two options - you can run some scripts which will set up everything
purely in your local directory without installing anything on your machine,
or you can actually install the helper commands globally.

### Just running in the local dir:

**Install node/npm from packages (optional)

The bootstrap script, which runs next, will download and build node.js
from source if it's not installed from packages. If it is installed already
the bootstrap script will not do that.

* sudo apt-get install nodejs npm

**Bootstrap & build the CI environment**

* `./bin/bootstrap.sh`
* `./bin/build.sh`

**Add local commands to your path**

* export PATH=$(pwd)/node_modules/.bin:$(pwd)/.local/bin:$PATH

If you want, you can also just run the following to accomplish that:

* source bin/setenv.sh

### Installing globally:

* `sudo apt-get install nodejs npm`
* `sudo npm install -s bower grunt-cli`

You'll probably need to make a symlink somewhere making node link to nodejs,
because node things expect it to be called node in some cases, and debian
installs it as nodejs. For instance:

* `ln -s /usr/bin/nodejs ~/bin/node

**Bootstrap & build the environment**

Both of these script will do less things locally if you've installed
node, npm, grunt and bower globally.

* `./bin/bootstrap.sh`
* `./bin/build.sh`

### Operating:

**Run a local development server**

`grunt server`

**Run the test suite**

`grunt test`

**Package the distro**

`grunt build`
