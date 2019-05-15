# **Basic OpenNMT model**
crawl, walk, run

## **Crawl** (References)

* [OpenNMT Quickstart](http://opennmt.net/OpenNMT-tf/quickstart.html)

* [Korean Parallel Corpora](https://github.com/jungyeul/korean-parallel-corpora)

* [Korean Corpus Example for Training](https://github.com/jungyeul/korean-parallel-corpora/blob/master/korean-english-news-v1/korean-english-park.train.tar.gz)


## **Walk** (Prep Linux VM)

* OS    :  Linux is required; no support for ms-windows

* Python:  Need python ~3.6; no support for 3.7
```
# Example to check python version requirements:
> python3 --version
Python 3.6.8
> pip3 --version
pip 9.0.3 from /usr/lib/python3.6/site-packages (python 3.6)
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

## **Run**
```
#  run scripts
```
