#!/bin/bash
### Author: Josè Daniel Lara-Tufiño
### Date: 29/05/20
### Bashscript to analyze raw sequences (ddRADseq) in ipyrad (Eaton and Overcast, 2020), and subsequently evaluate the processed data using the "Cumulative variance explained by major principal components" metric explained and implemented in McCartney‐Melstad, Gidiş and Bradley-Shaffer (2019), in order to choose the optimal clustering threshold.

#### Install ipyrad (in this case for Linux)
##### Install miniconda3:
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

##### Install miniconda into $HOME/miniconda3:
bash Miniconda3-latest-Linux-x86_64.sh

#### Install ipyrad with Conda:
conda install ipyrad -c bioconda

### Evaluate the raw sequences with ipyrad
#### Create params.txt file:
ipyrad -n test

#### Select a params file (-p) and steps to run (-s) for this assembly: 
##### Note:Remember that you have to run ipyrad using different grouping thresholds (modifying parameter # 14 of the params.txt file).
ipyrad -p params-data1.txt -s 1234567 # As a result of the analysis, a directory called "iptest_outfiles" will be generated, in which there is a .vcf file that will be used later.

### Evaluation of the metrics proposed by McCartney‐Melstad, Gidiş and Bradley-Shaffer (2019), in this case the metric is implemented: "Cumulative variance explained by major principal components":
#### Copy the necessary script package:
git clone https://github.com/atcg/clustOpt.git

#### Inside the directory called "clustOpt" place the .vcf files located in the "iptest_outfiles" directory resulting from the analysis with ipyrad. If you put yourself in the "iptest_outfiles" directory you can move each .vcf file to the clustOpt directory with the command:
mv .vcf ../clustOpt

#### Install library:
install.packages(SNPRelate)

#### Generate a vcfListFile (with text editor) with the absolute paths to all the .vcf files that you want to evaluate. Place the vcfListFile inside the clustOpt directory.
#### Calculate the summed variance explained by the first N principal components for a group of VCF files. In this script we used 4 principal components, but you can modify. Please run the script in bash.

Rscript ../clustOpt/vcfToPCAvarExplained.R vcfListFile 4 > fichero.txt

#### With the file fichero.txt you can cook a scatter plot in R. The script to make the graph is found in the bin directory.


