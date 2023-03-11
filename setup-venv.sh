#!/bin/bash

# This script is used to setup the venv for the project.

# Check if the .venv directory exists
if [ -d ".venv" ]; then
    echo "The .venv directory already exists!"
else
    # Check if the user has the venv module installed
    if ! python3 -m venv --help > /dev/null 2>&1; then
        echo "The venv module is not installed. Please install it with the following command:"
        echo "python3 -m pip install --user virtualenv"
        exit 1
    fi
    # Create the .venv directory
    echo "Creating the .venv directory..."
    python3 -m venv .venv
fi

# Tell the user how to activate the venv for their shell
echo "To activate the venv, run the following command:"

SHELL_NAME = $( basename $SHELL )

if [ $SHELL_NAME = "bash" ]; then
    echo "source .venv/bin/activate"
elif [ $SHELL_NAME = "zsh" ]; then
    echo "source .venv/bin/activate"
elif [ $SHELL_NAME = "fish" ]; then
    echo "source .venv/bin/activate.fish"
elif [ $SHELL_NAME = "csh" ]; then
    echo "source .venv/bin/activate.csh"
elif [ $SHELL_NAME = "tcsh" ]; then
    echo "source .venv/bin/activate.csh"
elif [ $SHELL_NAME = "pwsh" ]; then
    echo "source .venv/bin/Activate.ps1"
else
    echo "Unknown shell: $SHELL_NAME. Please search how to activate the venv for your shell."
fi

# Tell the user how to install the requirements

echo "To install the requirements, run the following command:"
echo "pip install -r requirements.txt"

echo "Finally, open the notebook and select the kernel named .venv ."