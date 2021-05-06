# This is my notes and code I created to import to the script report. 

if(!require(tidyverse)) install.packages("tidyverse", repos = "http://cran.us.r-project.org") # We need this for read_csv as well
# as ggplot2 functions.

# Get the UK E- commerce Dataset from GitHub

# This is the URL for the data that will be analyzed.
#urlfile <- "https://github.com/ccopeland1/is4300project/blob/main/UK_Commerce.csv"
urlfile <- "https://raw.githubusercontent.com/ccopeland1/is4300project/main/UK_Commerce.csv"
# Read the data into R and name it cricketers.
UK <- read_csv(url(urlfile))
head(UK)
#top7 bar chart
#confidence interval 
purchases <- UK [,3]
str(purchases)
item_count= table(purchases)
item_count
decreasing_item_count= order(item_count, decreasing = TRUE)
decreasing_item_count
ordered_items= item_count[decreasing_item_count]
ordered_items
#Plot the top 7 
top_seven_ordered= ordered_items[1:7]
top_seven_ordered
names(top_seven_ordered) <- c("HW Union","HW Dog", "Light Holder", "HQ Owl", "PCK 50s", "PCK Vintage", "HW Retro")
barplot(top_seven_ordered, las=1, col="deepskyblue1",cex.names = 0.7,
        main = "Top Seven Clothing Pieces")
#analysis quantitative purchase quantity variables 
#analysis on the quantity to provide a confidence variables of how many purchaces
#compute them r confidence interval very simple

t.test(UK$UnitPrice,conf.level = .9)
#90 confidence interval of purchases

#Introduction goal to analysis items top 7 order purchases as well as provde confidence interval of things ordered.
#Analysis confidence interval 90 eprcent confident that it is going to fall in between the two numbers 