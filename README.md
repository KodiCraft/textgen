# Simple Textgen Setup

This is a simple notebook for text generation using the models available on [Hugging Face](https://huggingface.co/transformers/). It allows you to generate text using a pretrained model and tokenizer in a friendly interface.

## Setup

### Install Dependencies and Create Virtual Environment

The preferred way to run this notebook is to use a virtual environment. If you are on Linux, the helper script `setup-venv.sh` will create it for you and give you further instructions. If you would like to do it manually, you can use the following commands:

```bash
python3 -m venv .venv
source .venv/bin/activate # Only for bash/zsh!
source .venv/bin/activate.fish # Only for fish!
pip install -r requirements.txt
```

Make sure that you install the pytorch version that matches your computer. You can find the instructions [here](https://pytorch.org/get-started/locally/).
If you are running this notebook in the cloud, check that it supports pytorch.

### Install the Kernel for Jupyter

If you are using Jupyter, you can install the kernel for the virtual environment so that you can use it in the notebook. To do so, run the following command:

```bash
python -m ipykernel install --user --name=.venv
```

### Run the Notebook

Now you can run the notebook. If you are using Jupyter, you can run the following command:

```bash
jupyter notebook notebook.ipynb
```

In the notebook, be sure to use the kernel that you installed in the previous step.

## Usage

Instructions can be found within the notebook itself. While basic familiarity with Jupyter is assumed, the notebook is designed to be as simple as possible.

## Issues

If you have any issues, please open an issue on the [GitHub repository](https://www.github.com/KodiCraft/textgen/).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details. Remember that the models as well as the dependencies are licensed under their own licenses. Make sure to check them out before using them.