## library
library(ggplot2)


## data load
Mdata <- read.csv('Mario Kart Data - Merged.csv')
colnames(Mdata) <- c('Round', 'Race', 'Race Name', 'Vehicle', 'Type(C/B)', 'Place', 
                     'Completion Time', 'Player', 'Completion Time(s)')

## Single player plot
SingplePlayer <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Race Name`)) + 
  geom_point(size = 4, alpha=0.7)+
  facet_grid( ~ Player)

SingplePlayer 

## Different Races
DifRace <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Race Name`)) + 
  geom_point(size = 4, alpha=0.7)+
  facet_grid( ~ Player)