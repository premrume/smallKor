#/bin/bash

# Note to self:  python version 3.7 will not work - need 3.5 or 3.6 ...
set -x

python3 -m venv VENV
source VENV/bin/activate

#pip3 install tensorflow-gpu==1.4.0
pip3 install tensorflow==1.4.0
pip3 install OpenNMT-tf
