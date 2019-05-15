#/bin/bash

source ./venv35/bin/activate

set -x

head -1 ./data/src-test.txt >/tmp/testfile.txt
onmt-main infer --auto_config --config data.yml --features_file /tmp/testfile.txt
