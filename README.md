# Development repsitory for mmeta package



## Important information for developers/ maintainers
* Current maintainer: Jiajie Chen <jiajie.chen@pennmedicine.upenn.edu>
* Lastest release version: V3.0.0

* Tips for new developers/ maintainers
    * There are 3 repositories hosting the package: `Penncil/mmeta_dev`, `Penncil/mmeta`, `CRAM`.  Please refer to section `Repositories` for details.
    * The latest design doc [`design_doc/V3.0.0/design_doc_mmeta_3.0.md`](https://github.com/Penncil/mmeta-dev/blob/design_doc/V3.0.0/design_doc_mmeta_3.0.md) desribes the design and structure of the package.The [`naming convention document`](https://github.com/Penncil/mmeta-dev/blob/design_doc/tech_docs/naming_convention.md) may also help developers undertand the source codes.
    * The [`Penncil/mmeta_dev:design_doc/work_log.md`]() may help the new developer learn the evolution and important events of the pacakge development quickly. 
    * The folder [`Penncil/mmeta_dev:change_request]() saves the change requests forms describing the reasons, changes and deliverables for major changes. The change requests forms also include the links to related documents such as test reports, code review and important communications/email/meeting notes.  Those documents may help new developers/maintainers undertand the pacakge development. 
    * If you are not familiar with Git and/or R package development, please go to the section `Learning resources` for learning resorces.
    * To make the software development sustainable, please follow the recommended workflow. See  section `Recommended workflow`. 
    * Please make sure the `Penncil/mmeta_dev:main`, `Penncil/mmeta:main` and `CRAN` are synchronized .
    * To learn how to download/upload source codes/documents, please read the section `Onboarding guide for new maintainers`.


* Tips for developers/ maintainers who are going to sign out:
    * To makesure the notifications from CRAN can be received, the developers/ maintainers who are going to sign out need to transfer the responsibility to new developers/ maintainers. 
    * The steps for sign-out process:
        * Add new maintainer as a collaborator of  the following 2 repositories: `Penncil/mmeta_dev` and `Penncil/mmeta`.
        * Update maintainer email in DESCRIPTION file.
        * Increase version number by 0.01.
        * Release a new version on all repositories: `Penncil/mmeta_dev`, `Penncil/mmeta`, `CRAM`
        * Add the information about the change in [`Penncil/mmeta_dev:design_doc/work_log.md`]():
            * 20XX-XX-XX: release new version X.X.X to change maintainer from XXX to XXX



## Repositories
Four repositories host the mmeta package:
* `Penncil/mmeta_dev`: https://github.com/Penncil/mmeta-dev (current repository)
    * Primary private repository for development
    * The `main` branch is the lastest release version. 
    * In addition to `main` branch, there are seperate branches:
        * `dev_{version number}`: versions under development
        * `change_request`: change request forms, work_log
        * `design_doc`: design documents, naming convention, archetecture and paper 
        * `change_and_test`: log for RCMD check , unit test and UAT, ect.
    * documents related to the packages: design documents, change request forms, tickets and test results, ect.

* `Penncil/mmeta`: https://github.com/Penncil/mmeta
    * public GitHub repository for release
    * The `main` branch of `Penncil/mmeta` is synchronized with `Penncil/mmeta_dev:main` branch.

* `CRAN/mmeta`: https://cran.r-project.org/web/packages/mmeta/index.html]
    * Current maintainer: Jiajie Chen <jiajie.chen@pennmedicine.upenn.edu>
    * The latest released version is synchronized with `Penncil/mmeta_dev:main` branch. 

* `esuxiao/mmeta`: https://github.com/esuxiao/mmeta
    * private mirror of primary development GitHub repository
    * refer as `esuxiao/mmeta`
    * freeze on 02-06-2022



## Onboarding guide for new maintainers

### For developers/maintainers who are not going to use Git for development
Creating local git repository for version control during the development is highly recommended. However, if you are not going to do that, you can also use Github web to download/upload files from/to the remote GitHub repositories. 

![Repositories communication for non-git user](https://github.com/Penncil/mmeta-dev/blob/design_doc/image/repositories_non_git_users.jpg)

#### Download files
You can go to [`Penncil/mmeta_dev`](https://github.com/Penncil/mmeta-dev) and then choose the target branch. Then you can download the source code or other documents as Zip files following the following instruction: [GitHub download zip](https://github.com/Mottie/GitHub-userscripts/wiki/GitHub-download-zip).

#### Upload files:
To upload files, you can go to [`Penncil/mmeta_dev`](https://github.com/Penncil/mmeta-dev) or  [`Penncil/mmeta`](https://github.com/Penncil/mmeta) and then choose the target branch. Then you can download the source code or other documents as Zip files following the following instruction: 
* [Editing files](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files)
* [Adding a file to a repository](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository)






### For developers/maintainers who are going to use Git for development 
![Repositories communication for Git user](https://github.com/Penncil/mmeta-dev/blob/design_doc/image/repositories.jpg)
#### 1. Local setup and clone the  repositories

* step 1: create working directory <working_direcotory>  for the package, such as `d:/user/mmeta`. 

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
#### 2. Switch branches


#### 3. Push to remote repositories






## Recommended workflow

### Release new version
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

## Learning resources
* GitHub tutorials

## Related papers
All the papers can be found at [`Penncil/mmeta_dev:design_doc/paper`]()
1.	Luo, S., Chen, Y., Su, X., Chu, H., (2014). mmeta: An R Package for Multivariate Meta-Analysis. Journal of Statistical Software, 56(11), 1-26.
2.	Chen, Y., Luo, S., (2011a). A Few Remarks on "Statistical Distribution of the Difference of Two Proportions' by Nadarajah and Kotz, Statistics in Medicine 2007; 26(18):3518-3523" . Statistics in Medicine, 30(15), 1913-1915.
3.	Chen, Y., Chu, H., Luo, S., Nie, L., & Chen, S. (2015). Bayesian analysis on meta-analysis of case-control studies accounting for within-study correlation. Statistical methods in medical research, 24(6), 836-855.
4.	Chen, Y., Luo, S., Chu, H., Su, X., & Nie, L. (2014). An empirical Bayes method for multivariate meta-analysis with an application in clinical trials. Communications in Statistics-Theory and Methods, 43(16), 3536-3551.
5.	Chen, Y., Luo, S., Chu, H., & Wei, P. (2013). Bayesian inference on risk differences: an application to multivariate meta-analysis of adverse events in clinical trials. Statistics in Biopharmaceutical Research, 5(2), 142-155.






