# Development repsitory for mmeta package


## Repositories
Four repositories host the mmeta package:
* https://github.com/Penncil/mmeta-dev (current repository)
    * primary private repository for development
    * refer as `Penncil/mmeta_dev`
    * The `main` branch is the lastest release version. 
    * In addition to release version, the branch also hosts the following documents in seperate branches:
        * `dev_{version number}`: versions under development
        * `change_request`: change request forms, work_log
        * `design_doc`: design documents, naming convention, archetecture and paper 
        * `change_and_test`: log for RCMD check , unit test and UAT, ect.
    * documents related to the packages: design documents, change request forms, tickets and test results, ect.

* https://github.com/Penncil/mmeta
    * public repository for release
    * refer as `Penncil/mmeta`
    * the `main` branch of `Penncil/mmeta` is synchronized with `Penncil/mmeta_dev:main` branch.

* https://cran.r-project.org/web/packages/mmeta/index.html]
    * Current maintainer: Jiajie Chen <jiajie.chen@pennmedicine.upenn.edu>
    * refer as `CRAN/mmeta`
    * the latest released version is synchronized with `Penncil/mmeta_dev:main` branch. 

* https://github.com/esuxiao/mmeta
    * private mirror of primary development GitHub repository
    * refer as `esuxiao/mmeta`
    * freeze on 02-06-2022


## Achetectures design for current version
* 
Please refer to `Penncil/mmeta_dev:design_doc/V3.0.0/design`


## Install the package

### install lastest release version from CRAN：
In R console:
```
install.package('mmeta')

```

### install lastest release version from `Penncil/mmeta`
In R console:

```
library(devtools)
install_github('mmeta')

```

### install version under development from `Penncil/mmeta_dev`

In R console:

```
library(devtools)
install_github('mmeta', ref = 'dev')

```



## Onboarding documents for new maintainers

### For maintainers who are familiar with Git and GitHub

#### 1. Local setup

* step 1: create working directory <working_direcotory>  for the package.

* step 2: add the two remote repositories by running the following git command in command line 
```
cd <working_direcotory>
git remote add public https://github.com/Penncil/mmeta.git
git remote add private https://github.com/Penncil/mmeta_dev.git
```
* step 3: clone the private repository run the following commands in terminal
```
git clone private 
```

#### 2.Development: fix bugs or 
* Step 1: create new 
* update work_log

#### Release new version
* Step 1：Push all updates to `dev` branch on `Penncil/mmeta_dev`
* Step 2: merge `dev` branch to `main` branch on `Penncil/mmeta_dev`
* Step 3: push update to `Penncil/mmeta`
```
git push public main

```

* Step 4: release on `Penncil/mmeta`
Release new version : 
https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository

* Step 5: release on CRAN
* Step 6: the information about the change in work_log:

### For maintainers who are unfamiliar with Git and GitHub
Highly recommand to use Git for version control

#### Download files
You can download all files you need 

#### Development

#### Release new version
* Step 1：Update all files in `main` branch on `Penncil/mmeta_dev` via web
* Step 2: Update all files in `main` branch on `Penncil/mmeta` via web
* Step 3: release on `Penncil/mmeta`
Release new version : 
https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository

* Step 4: release on CRAN

## Checkout notes for maintainers
* Update maintainer and makesure the notifications from CRAN can be received 
    * Update maintainer email in DESCRIPTION file.
    * Increase version number by 0.01.
    * Release a new version on all repositories: `Penncil/mmeta_dev`, `Penncil/mmeta`, `CRAM`
* Add the information about the change in work_log:
    * 20XX-XX-XX: release new version X.X.X to change of maintainer from XXX to XXX

## Additonal notes for maintainers/devopers

* Update work_log

* Write change request forms for each major update

* Highly recommend to use GitHub to track the change and control version

* Make sure the 3 repositories synchranized. 

## Related papers
All the papers can be found at `Penncil/mmeta_dev:design_doc/paper`
1.	Luo, S., Chen, Y., Su, X., Chu, H., (2014). mmeta: An R Package for Multivariate Meta-Analysis. Journal of Statistical Software, 56(11), 1-26.
2.	Chen, Y., Luo, S., (2011a). A Few Remarks on "Statistical Distribution of the Difference of Two Proportions' by Nadarajah and Kotz, Statistics in Medicine 2007; 26(18):3518-3523" . Statistics in Medicine, 30(15), 1913-1915.
3.	Chen, Y., Chu, H., Luo, S., Nie, L., & Chen, S. (2015). Bayesian analysis on meta-analysis of case-control studies accounting for within-study correlation. Statistical methods in medical research, 24(6), 836-855.
4.	Chen, Y., Luo, S., Chu, H., Su, X., & Nie, L. (2014). An empirical Bayes method for multivariate meta-analysis with an application in clinical trials. Communications in Statistics-Theory and Methods, 43(16), 3536-3551.
5.	Chen, Y., Luo, S., Chu, H., & Wei, P. (2013). Bayesian inference on risk differences: an application to multivariate meta-analysis of adverse events in clinical trials. Statistics in Biopharmaceutical Research, 5(2), 142-155.



## Learning resources
* GitHub tutorials
    * Youtube tutorial
    * GitHub document
    * Rstudio + GitHub
    * VS Code + GitHub

