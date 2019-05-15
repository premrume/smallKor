# **Basic OpenNMT model**
crawl, walk, run

## **Crawl** (References)

* [OpenNMT Quickstart](http://opennmt.net/OpenNMT-tf/quickstart.html)

* [Korean Parallel Corpora](https://github.com/jungyeul/korean-parallel-corpora)

* [Korean Corpus Example for Training](https://github.com/jungyeul/korean-parallel-corpora/blob/master/korean-english-news-v1/korean-english-park.train.tar.gz)

* Helper scripts provided in this git repo that more or less follow OpenNMT Quickstart (usage is explained in the steps below)
```
> ls *.sh
0_install.sh
1_prep.sh
2_vocab.sh
3_train_export_bidirectional_big.sh # train... 
3_train_export_bidirectional_med.sh
3_train_export.sh
4_infer.sh
```

* Be aware of the python and tensorflow versions


## **Walk** (Prep Linux VM)

* OS    :  Linux is required; no support for ms-windows

* Python:  **python35** MUST be in your path; NO support for 3.6 or 3.7 (tensorflow 1.4.0 requires 3.5)
```
# Most likely, you will need to sudo install python35.  EG:  sudo dnf install python35 
> python35 --version
Python 3.5.7

# Most likely, you will need to sudo pip install virtualenv
> sudo pip install virtualenv
# Example version
> virtualenv --version
16.6.0
```

* Use helper script **0_install.sh** to setup virtual environment
```
# (1) If you are using a GPU, edit requirements.txt to use
# Run the setup:
./0_install.sh
```

## **Walk some more** (Prep Data)

* Copy text-file sentence pairs for both train and test into the dataOriginal folder
```
# Example files of pairs:
>ls dataOriginal
en-test.txt  en-train.txt  kor-test.txt  kor-train.txt
```

* Prepare **env** file to match your dataOriginal/filenames
```
# Edit the env file to match your file. 
vi env 
# update the SRC and TGT file names to match your filenames in dataOriginal
```

* Use helper script **1_prep.sh** to tokenize data
```
# Run the setup:
./1_prep.sh
```

* Use helper script **2_vocab.sh** to create vocab file
```
# Run the setup:
./2_vocab.sh
```

## **Run** (Create models....)
* Use helper script **3_train_export_bidirectional_SIZE.sh**
```
# Run the trainer (either big, med, small):
./3_train_export_bidirectional_big.sh
```

* The output models are in the run folder ... good luck
