#!/bin/bash
#
# Tim de Klijn - 2023
#
# This script should speed up the process of setting up python for a new
# project. The steps of virtual envrironment creation, sourcing and installing
# of lsp tools is the same for each project.

# create and source virtual environment
echo "[INFO] Creating virtual environment"
python -m venv .venv/
source .venv/bin/activate

# Install lsp and tools. `-q` reduces the output of pip.
# TODO: this can be cased based on client or project type. Also have a
#       fallthrough that does not install anything. I also need to think about
#       how to handle the quotes, these are only required for zsh (assuming I
#       will stay with zsh and bash).
echo "[INFO] Installing python language server and tools"
pip -q install "python-lsp-server[pylint]" pylsp-mypy pyls-isort python-lsp-black


# source virtual environment automatically next time we enter the directory
echo "[INFO] Setting up direnv"
touch .envrc
echo "source .venv/bin/activate" > .envrc

# Do not automatically run direnv allow to prevent unwanted things from
# happening.
echo "[WARNING] Do not forget to run 'direnv allow' to enable the environment"
