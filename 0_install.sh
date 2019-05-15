#/bin/bash

set -x

# Note this expect python35 in your path!!!
virtualenv -p python35 venv35
source ./venv35/bin/activate

pip install -r ./requirements.txt
