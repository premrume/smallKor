#/bin/bash

source ./VENV/bin/activate

set -x

onmt-main infer --auto_config --config data.yml --features_file ./data/kor-test.txt
