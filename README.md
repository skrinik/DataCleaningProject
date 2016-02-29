#Data Cleaning Project **READ ME**

##Links:
The link provided: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) leads to the source for the data sets. 
You can download the data set *.zip* file directly [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##About This Repo:
The files in this repo include this **README.md** file, **CodeBook.md** which will provide details on the variable names in the **run_analysis.R** file which is the script file you will run to achieve the goals listed below.

##Goals for **run_analysis.R**

When running the R code, the script will achieve:

1. Importing the datasets, assigning them to usable variables and creating tidy dataframes *(see instructions below for data set import info)*
2. Merge the training and test data sets and extract only mean and standard deviation data
3. Merged data set will be tidy with descriptive names
4. A tidy data set will automatically be created (in *.csv* format) within the working directory showing averages by subject number and activity type  

##Instructions:

Please follow the following instructions to achieve the goals listed above. As a side note, my script creates tidy sets for the test, training and merged data. These can be extracted by the user for more specific use.

1. Clone this repo to your local directory. You will use this local repo as your working directory. 
2. Follow the following link to download the *.zip* file, unzip the file and extract the files into your working directory (repo directory). [**download**](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. Once the data sets are in your working directory, open *run_analysis.R* and make sure the working directory is correct. If you have issues, use the *setwd()* R function and include the repo location in quotes within the parenthesis i.e. *setwd("repo_directory")*
4. Run the script, you should end up with the *tidy_means.csv* file in your directory once the code executes.

