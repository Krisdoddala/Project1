library(dplyr)
library(ggplot2)

# Install historydata package
install.packages("historydata")

# Load historydata package
library(historydata)

# Load early colleges data
data(early_colleges)     

#View early colleges data
early_colleges


#Tidying the data
early_colleges[1,6] <- "Congregational"
early_colleges






#We would like to set the columns except original name because it has many NAs

select(early_colleges, college, city, state, established, sponsorship)


#We can also use select funcion with the help of pipe operator

early_colleges %>%
  select(college, city, state, established, sponsorship) 


#Instead of selecting all the remaining columns we can just subtract original name column in the select function 
early_colleges%>%
  select(-original_name)



#With the help of filter function we can just select all the rows that have established year less than 1800
early_colleges%>%
  filter(established < 1800)



#Mutate function helps us to create new columns. Here we create a new column called location which combines city and state
early_colleges%>%mutate(location=paste(city,state,sep=","))


#Dplyr doesn't save or manipulate the original date so we need to create a new permanent variable if we like to save the information
early_colleges_with_location <- early_colleges%>%
  mutate(location=paste(city, state, sep=","))

# View the new tibble with the location added
early_colleges_with_location


#We have rows in increasing order of the established data so we can use arrange function to manipulate the data in descending order of established dates 
early_colleges %>%
  arrange(desc(established))




#We use summarise() function to calculate the average year of the colleges
early_colleges%>%summarise(mean(established))





