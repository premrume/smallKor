#/bin/bash

# Note to self:  python version 3.7 will not work - need 3.5 or 3.6 ...
set -x

python3 -m venv VENV
source VENV/bin/activate

#pip install tensorflow-gpu
pip3 install tensorflow
pip3 install OpenNMT-tf
