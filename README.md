# Prep Python

Simple script to create a python environment, install a language server and all
in it and then add a `.envrc` file that will automatically source the
environment.

This is just a simple script to speed up my workflow.

## Install

Make the script executable and move it into your path.

``` sh
chmod +x prep_python.sh
cd /somewhere/in/my/path
ln -s /prep_python/location prep_python
```

## Usage

Make sure your gloabl python environment is the one you want to use for the
project. This can be easily achieved by using `pyenv`. Then run the script:

``` sh
prep_python
```
