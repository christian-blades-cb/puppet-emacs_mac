# Emacs Mac Port Puppet Module for Boxen

[![Build Status](https://travis-ci.org/christian-blades-cb/puppet-emacs_mac.png)](https://travis-ci.org/christian-blades-cb/puppet-emacs_mac)

Installs the excellent [Emacs Mac Port](https://github.com/railwaycat/emacs-mac-port).

## Usage

```puppet
include emacs_mac
```

## Issues

Currently won't install during the initial bootstrap because homebrew
is not yet in the PATH. Not sure how to deal with this issue, but the
easiest workaround is to run `boxen` a second time in a _new_ terminal.

## Required Puppet Modules

* `boxen`
* `homebrew`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
