# metaProbiotics
Mining the probiotics from metagenomic bins primary sequences using the language model

## Contact
Any question, please do not hesitate to contact me: fangzc@smu.edu.cn

## Change logs
2025.03.02 The link of the virtual machine has been updated;
2024.07.19 The README.md was updated with a few modification;
2024.04.15 The manual was updated with a few modification;

## Introduction

metaProbiotics is designed to identify the probiotics bins from metagenomic data. The tool takes one or more fasta files as input, where each fasta file contains sequences from the same bin, and identifies bins originating from probiotic bacteria. metaProbiotics can be run on the virtual machine, via the docker, or via Matlab interface. For non-computer professionals, we recommend running the virtual machine version of metaProbiotics on local PC. In this way, users do not need to install any dependency package.

![image](https://github.com/zhenchengfang/metaProbiotics/assets/48039512/deb1361c-4351-423b-9bc7-e2725ae9275c)


## Version
+ metaProbiotics 1.0 (Tested on Ubuntu 16.04)

## Manuals
------------
Please refer to [manual](https://github.com/zhenchengfang/metaProbiotics/blob/main/metaProbiotics_manual-20250221-revised.pdf) for the detailed metaProbiotics usage.

## Overview: three approaches of using metaProbiotics

### 1 Using virtual machine (Recommended for non-computer professionals)

If you are non-computer professionals who unfamiliar with the Linux operating system, we recommend using the virtual machine of metaProbiotics. In this manner, you don't need to have strong computer skills, especially the ability of using the command line. The installation of the virtual machine is easy. Please refer to the manual for a step by step guide with screenshot to see how to install the vertual machine.When you have installed the virtual machine and set the shared folder, you can go into the metaProbiotics_v_1_0 folder on the desktop, and double click the “metaProbiotics.sh” file.

![image](https://github.com/zhenchengfang/metaProbiotics/assets/48039512/0eed9a33-fc83-4d30-a3ef-608febf52015)



Then, wait for a few seconds and select your input file and click the "Open" button, and the program will start running. 

![image](https://github.com/zhenchengfang/metaProbiotics/assets/48039512/71032c12-ed15-4dad-b0c8-46b7085b68f4)


### 2 Using docker images

We also provide a docker version of metaProbiotics docker images have build completedlly, user can download metaProbiotics images as the start several docker containers of metaProbiotics in a manner of mutually independence.
![image](https://github.com/zhenchengfang/metaProbiotics/assets/48039512/450e1cb7-a0ad-441d-8b1a-33869965835f)

### 3 Using MATLAB interface (Linux system is required)

Users who have installed the MATLAB software and are familiar with MATLAB, we recommand you to run metaProbiotics througth the MATLAB script. User could start a MATLAB GUI and directly select the file or folder needed to be predicted.


![Matlab](https://github.com/zhenchengfang/metaProbiotics/assets/48039512/ee76b5b6-3552-43ce-97f9-64a6cc45a04e)





  


  
## Output

The output of metaProbiotics consists of three columns:

Input_file | Score | Is_probiotics |
---------- | ----- | ------------- |

The bin with a higher score is more likely to be probiotic. By default, the bin with a score higher than 0.5 will be predicted as probiotic.



# Citation
+ Wu S, Feng T, Tang W, Qi C, Gao J, He X, Wang J, Zhou H, Fang Z. metaProbiotics: a tool for mining probiotic from metagenomic binning data based on a language model. Brief Bioinform. 2024 Jan 22;25(2):bbae085. doi: 10.1093/bib/bbae085. PMID: 38487846; PMCID: PMC10940841.



