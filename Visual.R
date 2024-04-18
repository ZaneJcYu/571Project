## library
library(ggplot2)


## data load
Mdata <- read.csv('Mario Kart Data - Merged.csv')
colnames(Mdata) <- c('Round', 'Race', 'Race Name', 'Vehicle', 'Type(C/B)', 'Place', 
                     'Completion Time', 'Player', 'Completion Time(s)')

## Different Players
Allplayers <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Race Name`,shape=`Vehicle`)) + 
  geom_point(size = 3, alpha=0.6)
Allplayers
  
SingplePlayer <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Race Name`)) + 
  geom_point(size = 3, alpha=0.6)+
  facet_grid( ~ Player)
SingplePlayer 

## Different cars
Difcars <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Race Name`)) + 
  geom_point(size = 3, alpha=0.6)+
  facet_grid( ~ `Vehicle`)
Difcars

## Different race
### different maps with people
DifRP <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Player`)) + 
  geom_point(size = 3, alpha=0.6)+
  facet_grid( ~ `Race Name`)
DifRP
### different maps with vehicle
DifRC <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Vehicle`)) + 
  geom_point(size = 3, alpha=0.6)+
  facet_grid( ~ `Race Name`)
DifRC

### different maps with vehicle type
DifRCT <- ggplot(data=Mdata, mapping = aes(x=Round, y=`Completion Time(s)`,color=`Type(C/B)`)) + 
  geom_point(size = 3, alpha=0.6)+
  facet_grid( ~ `Race Name`)
DifRCT
