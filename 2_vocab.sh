#/bin/bash

source ./env
source ./venv35/bin/activate

# brut force
set -x

onmt-build-vocab --size 50000 --save_vocab ${SRC_VOCAB} ${SRC_TRAIN_PREP}
onmt-build-vocab --size 50000 --save_vocab ${TGT_VOCAB} ${TGT_TRAIN_PREP}
