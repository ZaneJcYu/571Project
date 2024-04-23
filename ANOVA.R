Mdata <- read.csv('Mario Kart Data - Merged.csv')
colnames(Mdata) <- c('Round', 'Race', 'Race Name', 'Vehicle', 'Type(C/B)', 'Place', 
                     'Completion Time', 'Player', 'Completion Time(s)')




## Check if there's round effect in the game
round_aov <- aov(`Completion Time(s)` ~ as.factor(Round), data=Mdata)
summary(round_aov)
### The result shows that there's no significant difference only considering the round and the player effect


##Check if there's race # effect in the game 
race_no_aov <- aov(`Completion Time(s)` ~ ordered(as.factor(Race)), data=Mdata)
race_no_aov <- aov(`Completion Time(s)` ~ Race, data=Mdata)
summary(race_no_aov)
### The result shows that race number has significant effect, this is intuitive.


## Check the whole model
whole_aov <- aov(`Completion Time(s)` ~ as.factor(Round) + Vehicle + `Race Name` + Player, data=Mdata)
summary(whole_aov)
TukeyHSD(whole_aov)
### Only the player is significant and Here I did a `TukeyHSD` want to decide the winner of the game


## Interaction between cars and blocks
whole_inter_aov <- aov(`Completion Time(s)` ~ Vehicle * (as.factor(Round) + Player + `Race Name`), data=Mdata)
summary(whole_inter_aov)
