getwd()
setwd("C:/Users/navee/OneDrive/Desktop/A3")
cat <- read.table('cat_pos.txt', header = FALSE)
names(cat) <- c("Love Count", 'Angry Count')


dog <- read.table('dog_pos.txt', header = FALSE)
names(dog) <- c("Love Count", 'Angry Count')


dog_love = c(sum(dog$`Love Count`))
dog_angry = c(sum(dog$`Angry Count`))
cat_love = c(sum(cat$`Love Count`))
cat_angry = c(sum(cat$`Angry Count`))

compare <- c(dog_love,dog_angry,cat_love,cat_angry)
label <- c('Dog Love Reactions', 'Dog Angry Reactions', 'Cat Love Reactions', 'Cat Angry Reactions')
pie(compare, label, main = 'Comparison of positive feelings between Cats and Dogs'  , col = topo.colors(length(compare)))






