# **Basic OpenNMT model**
crawl, walk, run

## **Crawl** (References)

* [OpenNMT Quickstart](http://opennmt.net/OpenNMT-tf/quickstart.html)

* [Korean Parallel Corpora](https://github.com/jungyeul/korean-parallel-corpora)

* [Korean Corpus Example for Training](https://github.com/jungyeul/korean-parallel-corpora/blob/master/korean-english-news-v1/korean-english-park.train.tar.gz)

* FYSA:  Helper scripts provided in this git repo more or less follow OpenNMT Quickstart (usage is explained in the steps below)
```
> ls *.sh
0_install.sh
1_prep.sh
2_vocab.sh
3_train_export_bidirectional_big.sh
3_train_export_bidirectional_med.sh
3_train_export.sh
4_infer.sh
```

* Be **aware of the python and tensorflow versions**


## **Walk** (Prep Linux VM)

* OS    :  Linux is required; no support for ms-windows

* Python:  **python35** MUST be in your path; NO support for 3.6 or 3.7 (tensorflow 1.4.0 requires 3.5)
```
# Most likely, you will need to sudo install python35.  (EG:)
>sudo dnf install python35 
>python35 --version
Python 3.5.7
```

* Virtual Environment:  **python35**  uses virtualenv
```
# Most likely, you will need to sudo pip install virtualenv
>sudo pip install virtualenv
# Example version
>virtualenv --version
16.6.0
```

* Use helper script to setup:   **0_install.sh** 
```
# If you are using a GPU, edit requirements.txt to use tensorflow-gpu
./0_install.sh
```

## **Walk some more** (Prep Data)

* Datafiles:  Copy text-file sentence pairs for both train and test into the dataOriginal folder
```
# Example files of pairs:
>ls dataOriginal
en-test.txt  en-train.txt  kor-test.txt  kor-train.txt
```

* Prepare **env** file to match your dataOriginal/filenames
```
# Env:  Edit the env file to match your filenames (SRC and TGT)
vi env 
```

* Use helper script **1_prep.sh** to tokenize data
```
./1_prep.sh
```

* Use helper script **2_vocab.sh** to create vocab file
```
./2_vocab.sh
```

## **Run** (Create models....)
* Use helper script **3_train_export_bidirectional_SIZE.sh**
```
# Run the trainer (either big, med, small):
./3_train_export_bidirectional_big.sh
```

* The output models are in the run folder ... good luck with that...
