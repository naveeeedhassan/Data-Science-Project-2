dogtime <- read.table('dog_time.txt', header = FALSE)
date <- data.frame(paste(dogtime$V1, dogtime$V2))
names(date) <- c("Date")




date$Date <- strptime(date$Date, format='%D/%M/%y %H:%M')

class(date$Date)

install.packages('plotly')
library(plotly)


ggplot(date, aes(x=Date, text=as.character(Date))) +  
  theme_bw() +  geom_histogram(binwidth=7, fill="darkblue",color="black") +
  labs(x="Date", y="Frequency") + 
  theme(axis.text.x=element_text(angle=60)) +
  scale_x_date(date_breaks = "weeks", date_labels = "%d/%m/%Y", 
               limits=c(as.Date("6/1/12"), as.Date("7/11/16"))) 
