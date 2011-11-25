Puppet Mac Module
====================

Module for configuring Mac based systems.

Tested on Debian GNU/Linux 6.0 Squeeze and Ubuntu 10.4 LTS with
Puppet 2.6. Patches for other operating systems are welcome.


Installation
------------

Clone this repo to a mac directory under your Puppet modules directory:

    git clone git://github.com/uggedal/puppet-module-mac.git mac

If you don't have a Puppet Master you can create a manifest file
based on the notes below and run Puppet in stand-alone mode
providing the module directory you cloned this repo to:

    puppet apply --modulepath=modules test_mac.pp


Usage
-----

Essential Mac programs are installed by including the `mac` class:

    include mac

To get a Mac keyboard working simply include the `mac::keyboard` class:

    include mac::keyboard

If you don't use the default *us* keyboard layout this can be overwritten:

    class { "mac::keyboard":
      layout => "no",
    }
