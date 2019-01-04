#/bin/bash

source VENV/bin/activate
source ./env

# Brut force ...
set -x
rm -rf ./data
mkdir ./data

cat ${SRC_TEST}   | onmt-tokenize-text --tokenizer OpenNMTTokenizer >${SRC_TEST_PREP}
cat ${SRC_TRAIN}  | onmt-tokenize-text --tokenizer OpenNMTTokenizer >${SRC_TRAIN_PREP}
cat ${TGT_TEST}   | onmt-tokenize-text --tokenizer OpenNMTTokenizer >${TGT_TEST_PREP}
cat ${TGT_TRAIN}  | onmt-tokenize-text --tokenizer OpenNMTTokenizer >${TGT_TRAIN_PREP}
