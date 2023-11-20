comments <- read.table('comments.txt', header = FALSE)
names(comments) <- c("Post Type", "No. of Comments")


boxplot <- ggplot(comments, aes(x = `Post Type`, y = `No. of Comments`)) + geom_boxplot()
boxplot

library(dplyr)
fltr <- filter(comments, comments$'No. of Comments' < 1000)

boxplot <- ggplot(fltr, aes(x = `Post Type`, y = `No. of Comments`)) + geom_boxplot()
boxplot



most_effective <- aggregate(comments$`No. of Comments`, list(comments$`Post Type`), FUN=median)
names(most_effective) <- c("Post Type", "Median Comment Count")
most_effective
