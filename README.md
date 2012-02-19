# Nmag-meta #

This repository helps to compile Nmag from the sources when checked 
out from the bitbucket repositories.

This is all tested on Ubuntu 11.10. If you use a different OS or distro,
please adapt the commands as necessary.

# Getting started -- cloning this NMAG-META repository ##

Clone this repository, for example:

:::shell

   hg clone https://fangohr@bitbucket.org/fangohr/nmag-meta

or -- if you ssh key is known to bitbucket --:

:::shell

   hg clone ssh://hg@bitbucket.org/fangohr/nmag-meta

Then change the working directory to the `meta` directory into the cloned `nmag-meta` repository, i.e.

:::shell

   cd nmag-meta/meta

# Do it all (only on Ubuntu 11.10) #

To fetch the full source, doc, tests, install sundials 2.3 and all
other packages, run the tests and build the documentation in one go,
just run

:::shell

   sh do-all.sh

If you have sundials 2.3 already installed, you may want to use

:::shell

   sh do-all-except-sundials.sh

Alternatively, the next section gives a more detailed manual break down of the necessary steps.

# Now we describe the individual necessary steps 

The change the working directory to the `` directory into the 

## Installing the required Ubuntu/Debian packages ##

Run:

  sh get-required-ubuntu-11.10-packages.sh

## Now clone the source, test, doc and dist repositories ##

By running:

:::shell

  sh clone-hgs.sh

## Install Sundials 2.3 ##

:::shell

  sh install-sundials.sh

## Compile Nmag executables ##

:::shell

  sh compile-nmag.sh

## Run regression tests ##

:::shell

   sh run-tests.sh

## Build documentation ##

:::shell

   sh compile-nmag-doc.sh



Hans Fangohr, 19 Feb 2012