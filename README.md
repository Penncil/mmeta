# Development repsitory for mmeta package



## Important information for developers/ maintainers
* Current maintainer: Jiajie Chen <jiajie.chen@pennmedicine.upenn.edu>

* Tips for new developers/ maintainers
    * There are 3 repositories hosting the package: `Penncil/mmeta-dev`, `Penncil/mmeta`, `CRAM`.  Please refer to section `Repositories` for details.
    * The latest design doc [`design_doc/V3.0.0/design_doc_mmeta_3.0.md`](https://github.com/Penncil/mmeta-dev/blob/design_doc/V3.0.0/design_doc_mmeta_3.0.md) desribes the design and structure of the package.The [`naming convention document`](https://github.com/Penncil/mmeta-dev/blob/design_doc/tech_docs/naming_convention.md) may also help developers undertand the source codes.
    * The [`Penncil/mmeta-dev:design_doc/work_log.md`](https://github.com/Penncil/mmeta-dev/blob/change_request/work_log.md) may help the new developer learn the evolution and important events of the pacakge development quickly. 
    * The folder [`Penncil/mmeta-dev:change_request`](https://github.com/Penncil/mmeta-dev/tree/change_request/change_request) saves the change requests forms describing the reasons, changes and deliverables for major changes. The change requests forms also include the links to related documents such as test reports, code review and important communications/email/meeting notes.  Those documents may help new developers/maintainers understand the pacakge development. 
    * If you are not familiar with Git and/or R package development, please go to the section `Learning resources` for learning resorces.
    * To make the software development sustainable, please follow the recommended workflow. See  section `Recommended workflow`. 
    * Please make sure the `Penncil/mmeta-dev:main`, `Penncil/mmeta:main` and `CRAN` are synchronized .
    * To learn how to download/upload source codes/documents, please read the section `Onboarding guide for new maintainers`.
    * If you woudl lke to edit this `README.md` and `.gitIg` file, please use GitHub web interface because `Penncil/mmeta-dev:main`, `Penncil/mmeta:main` . 


* Tips for developers/ maintainers who are going to sign out:
    * To makesure the notifications from CRAN can be received, the developers/ maintainers who are going to sign out need to transfer the responsibility to new developers/ maintainers. 
    * The steps for sign-out process:
        * Add new maintainer as a collaborator of  the following 2 repositories: `Penncil/mmeta-dev` and `Penncil/mmeta`.
        * Update maintainer email in DESCRIPTION file.
        * Increase version number by 0.01.
        * Release a new version on all repositories: `Penncil/mmeta-dev`, `Penncil/mmeta`, `CRAM`
        * Add the information about the change in [`Penncil/mmeta-dev:design_doc/work_log.md`](https://github.com/Penncil/mmeta-dev/blob/change_request/work_log.md):
            * 20XX-XX-XX: release new version X.X.X to change maintainer from XXX to XXX



## Repositories
Four repositories host the mmeta package:
* `Penncil/mmeta-dev`: https://github.com/Penncil/mmeta-dev (current repository)
    * Primary private repository for development
    * The `main` branch is the lastest release version. 
    * In addition to `main` branch, there are seperate branches:
        * `dev_{version number}`: versions under development
        * `change_request`: change request forms, work_log
        * `design_doc`: design documents, naming convention, archetecture and paper 
        * `change_and_test`: log for RCMD check , unit test and UAT, ect.
    * documents related to the packages: design documents, change request forms, code review comments and test results, ect.
    * Please never merge `main` branch with `change_request`, `design_doc` or  `change_and_test`.

* `Penncil/mmeta`: https://github.com/Penncil/mmeta
    * public GitHub repository for release
    * The `main` branch of `Penncil/mmeta` is synchronized with `Penncil/mmeta-dev:main` branch.

* `CRAN/mmeta`: https://cran.r-project.org/web/packages/mmeta/index.html]
    * Current maintainer: Jiajie Chen <jiajie.chen@pennmedicine.upenn.edu>
    * The latest released version is synchronized with `Penncil/mmeta-dev:main` branch. 

* `esuxiao/mmeta`: https://github.com/esuxiao/mmeta
    * private mirror of primary development GitHub repository
    * refer as `esuxiao/mmeta`
    * freeze on 02-06-2022



## Onboarding guide for new maintainers/deveopers

### For developers/maintainers who are not going to use Git for development
Creating local git repository for version control during the development is highly recommended. However, if you are not going to do that, you can also use Github web to download the files as zip files from GitHub repository `Penncil/mmeta-dev` via web interface. and edit the codes/documents in local workspace. After the development is complete, you can also upload the files to `Penncil/mmeta-dev` via web interface.  

![Repositories communication for non-git user](https://github.com/Penncil/mmeta-dev/blob/design_doc/image/repositories_non_git_users.jpg)

#### Download files
You can go to [`Penncil/mmeta-dev`](https://github.com/Penncil/mmeta-dev) and then choose the target branch. Then you can download the source code or other documents as Zip files following the following instruction: [GitHub download zip](https://github.com/Mottie/GitHub-userscripts/wiki/GitHub-download-zip).

#### Upload files:
To upload files, you can go to [`Penncil/mmeta-dev`](https://github.com/Penncil/mmeta-dev) or  [`Penncil/mmeta`](https://github.com/Penncil/mmeta) and then choose the target branch. Then you can download the source code or other documents as Zip files following the following instruction: 
* [Editing files](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files)
* [Adding a file to a repository](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository)



#### Create new branch
To create or delete branch in GitHub via web interface, please read the following instruction
* [Creating and deleting branches within your repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository)


#### Merging a pull request
Merge a pull request into the upstream branch when work is completed. Anyone with push access to the repository can complete the merge.please read the following instruction
* [Merging a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request)





### For developers/maintainers who are going to use Git for development 
* It is a good practice to use Git/GitHub for development for several reasons. 
    * It is easier to track changes in your code across versions.
    * By using GitHub, you make it easier to get excellent documentation. Their help section and guides have articles for nearly any topic related to git that you can think of.
 
* To use Git for development, the new new maintainers/deveopers need to create local repository.

![Repositories communication for Git user](https://github.com/Penncil/mmeta-dev/blob/design_doc/image/repositories.jpg)

#### Create local repository and clone

* step 0: local setup: Please refer to document [`Git tutorial`](https://github.com/Penncil/mmeta-dev/blob/design_doc/tech_docs/Git_GitHub.md)

* step 1: create working directory <working_direcotory>  for the package, such as `d:/user/mmeta`. 

* step 2: add the two remote repositories by running the following git command in shell command line 
```
cd <working_direcotory>
git remote add release https://github.com/Penncil/mmeta.git
git remote add origin https://github.com/Penncil/mmeta-dev.git
```
Here, we refer the remote repository `Penncil/mmeta-dev` as `origin` and remote repository `Penncil/mmeta` as `release`
* step 3: clone the remote `Penncil/mmeta-dev` repository run the following commands in terminal:

```
cd <working_direcotory>
git clone release 
```
#### Switch branches
To switch branch, you can run the following commands in terminal:
```
git checkout <branch_name>
```

#### Create new branches
To create branch, you can run the following commands in terminal:
```
git checkout -b <new_branch_name>
```


#### Pull changes from remote repositories
To pull changes from remote repositories for specific branch, you can run the following commands in terminal:
```
git checkout -b <branch_name>
git pull
```

#### Push changes to remote repositories
The 'push' means uploading the changes to remote repositories. If you would like push the change of branch of <branch_name>, such as `main` of repository `Penncil/mmeta-dev` (refered as `origin`), you can run the following commands in terminal:
```
git push origin:<branch_name>
```

After the development is complete in `Penncil/mmeta-dev`, you can push the chanages in main branch to repository `Penncil/mmeta` by the following commands:
```
git checkout main
git push release main --force
```


#### Merch branch

```
git checkout main
git merge dev
```

#### More information about Git/GitHub
* If you would like to get more information about Git/GitHub, please refer to the document [`Git tutorial`](https://github.com/Penncil/mmeta-dev/blob/design_doc/tech_docs/Git_GitHub.md)
* If you don't like to use shell command, most of the operations can be done via GitHub Desktop app. Rstudio and VS Code can also work with Git. Please refer to the document [`Git tutorial`](https://github.com/Penncil/mmeta-dev/blob/design_doc/tech_docs/Git_GitHub.md) for more information.
* If you woudl lke to edit this `README.md` file, please use GitHub web interface. 


## Recommended workflow

### Step 1: prepare for the change

* You can skip this step for very minor changes, such as chaning the maintainer.
* Create change request form files ` ` in `Penncil/mmeta-dev:change_requst/change_requst`. The form should include the following information:
    * reasons
    * plans of the change
    * start date
    * requster/assignee
    * paraent commit
* For major refactor or re-design, please write a design documents first and save as `design_doc_vX.X.X.md` at `Penncil/mmeta-dev:design_doc/VX.X.X`

### Step 2: create new branch for development
* For minor change, you can also skip this step and commit the change to main branch directly.
* Creating new branch for development 

### Step 3: finish development in local workspace
* You can start to work on the development such as editing the functions.
* After you complete the development, you need to commit the changes to local repository. 

### Step 4: pre-build test

* The step can be skipped if there is no major change.

* The pre-build test include the following components:
    * unit test: test the low level computation functions
    * user accptance test: test whether the exported functions can work.
    * edge cases test: test whether the error messges can be delivered when input is illegal.

### Step 5: R CMD check

* Push/upload the check log or test reports to `Penncil/mmeta-dev:chek_and_test`

### Step 6: merge to main

* After the development version has passed all the tests, the developers/maintainers can merge the `dev` branch with `main` branch in `Penncil/mmeta-dev`.
* For minor change, you can also skip this step because all the changes have been commited to main branch directly.

### Step 7 synchronize to `Penncil/mmeta`
* Push or upload all the changes in `Penncil/mmeta-dev:main` to `Penncil/mmeta` via the following git command or via web interface. 
    ```
    git checkout main
    git push release:main

    ```
* Delete the `README.md` file in `Penncil/mmeta:main`

### Step 8: release
* Release the main branch to `Penncil/mmeta` following this [instruction](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)

* Release to `CRAN`



### Step 9: wrap up
* Update change request forms:
    * complete date
    * last commit
    * deliverables
* Add a brief summary about the change in [`Penncil/mmeta-dev:design_doc/work_log.md`](https://github.com/Penncil/mmeta-dev/blob/change_request/work_log.md) .
* Document important emails/communication/takeaways.
* If you woudl lke to edit this `README.md` file, please use GitHub web interface. 





## Learning resources
* [GitHub tutorials](https://github.com/Penncil/mmeta-dev/blob/design_doc/tech_docs/Git_GitHub.md)

## Related papers
All the papers can be found at [`Penncil/mmeta-dev:design_doc/paper`](https://github.com/Penncil/mmeta-dev/tree/design_doc/paper)
1.	Luo, S., Chen, Y., Su, X., Chu, H., (2014). mmeta: An R Package for Multivariate Meta-Analysis. Journal of Statistical Software, 56(11), 1-26.
2.	Chen, Y., Luo, S., (2011a). A Few Remarks on "Statistical Distribution of the Difference of Two Proportions' by Nadarajah and Kotz, Statistics in Medicine 2007; 26(18):3518-3523" . Statistics in Medicine, 30(15), 1913-1915.
3.	Chen, Y., Chu, H., Luo, S., Nie, L., & Chen, S. (2015). Bayesian analysis on meta-analysis of case-control studies accounting for within-study correlation. Statistical methods in medical research, 24(6), 836-855.
4.	Chen, Y., Luo, S., Chu, H., Su, X., & Nie, L. (2014). An empirical Bayes method for multivariate meta-analysis with an application in clinical trials. Communications in Statistics-Theory and Methods, 43(16), 3536-3551.
5.	Chen, Y., Luo, S., Chu, H., & Wei, P. (2013). Bayesian inference on risk differences: an application to multivariate meta-analysis of adverse events in clinical trials. Statistics in Biopharmaceutical Research, 5(2), 142-155.






