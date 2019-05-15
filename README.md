# **Basic OpenNMT model**
crawl, walk, run

## **Crawl** (References)

* [OpenNMT Quickstart](http://opennmt.net/OpenNMT-tf/quickstart.html)

* [Korean Parallel Corpora](https://github.com/jungyeul/korean-parallel-corpora)

* [Korean Corpus Example for Training](https://github.com/jungyeul/korean-parallel-corpora/blob/master/korean-english-news-v1/korean-english-park.train.tar.gz)


## **Walk** (Prep Linux VM)

* OS    :  Linux is required; no support for ms-windows

* Python:  Need **python3**; NO support for 3.7
```
# Example to check python version requirements:
> python3 --version
Python 3.6.8
> pip3 --version
pip 9.0.3 from /usr/lib/python3.6/site-packages (python 3.6)
```
* Use helper script **0_install.sh** to setup virtual environment
```
# If you are using a GPU, edit 0_install.sh to toggle the comment on the tensorflow-gpu
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
