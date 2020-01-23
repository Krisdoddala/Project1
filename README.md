# Project1
Data wrangling on US Colleges that were founded before 1848.


Hi there! Thank you for visiting my github profile. In this readme file, I'll make you understand about my project in a step by step fashion.

Languages used : R programming
Tools used     : RStudio

Step 1 : If you've never installed RStudio on your laptop/Desktop, please go to https://rstudio.com/products/rstudio/download/ and install RStudio Desktop.

Step 2 : After the installation of RStudio, please download my project repository.

Step 3 : Extract the Project1 repository to a particular location on your system.

Step 4 : Now, open RStudio. Then, Click File>Open File then select the datawrangling.R that's in the repository. Then you should have something like this.

![](images/shot1.png)

Step 5 : Load the dplyr and ggplot2 libraries. 

By the way, to execute a statement place the cursor on that line and press CTRL and Enter together on Windows
and CMD and Enter on Mac 

Step 6 : Install the historydata package and load it.

Step 7 : Next load early colleges data

Step 8 : View early_colleges data. You should have something like this

![](images/shot2.png)

Step 9 : We can see that in the first row and sixth column the sponsorship of Harvard has some extra characters in addition to the Congregational so we need to tidy it

Step 10 : After tidying, we should have something like this

![](images/shot3.png)

Step 11 : We use the select() function to exclude the original name column because it has many NAs

![](images/shot4.png)

Step 12 : We use the filter() function to see only rows that has established year < 1800

![](images/shot5.png)
 
 Step 12 : We use mutate() function to create a new column called location that has city and state.
 
![](images/shot6.png) 

Step 13 : Next we use arrange() function to have the rows in the order of descending order of established date

![](images/shot7.png)

Step 14 : Next we use summarise() function to calculate the average year of the colleges

 ![](images/shot8.png)





  