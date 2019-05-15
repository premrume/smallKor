#/bin/bash

source ./venv35/bin/activate

set -x

onmt-main train_and_eval --model_type NMTSmall --auto_config --config data.yml

