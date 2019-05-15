#/bin/bash

source ./VENV/bin/activate

set -x

head -5
onmt-main infer --auto_config --config data.yml --features_file ./data/kor-test.txt
