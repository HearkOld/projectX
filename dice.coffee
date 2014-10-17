# Dice Game written by Heark
#
#'||  ||`                       '||      
# ||  ||                         ||      
# ||''||  .|''|,  '''|.  '||''|  || //`  
# ||  ||  ||..|| .|''||   ||     ||<<    
#.||  ||. `|...  `|..||. .||.   .|| \\.  
#                                        
#                                        
#.|'''''|                                            .|'''',           
#|| .                         ''                     ||                
#|| |''||  '''|.  '||),,(|,   ||  `||''|,  .|''|,    ||      .|''|,    
#||    || .|''||   || || ||   ||   ||  ||  ||  ||    ||      ||  ||    
#`|....|' `|..||. .||    ||. .||. .||  ||. `|..||    `|....' `|..|' .. 
#                                              ||                      
#
die = Math.floor(Math.random() * 6) + 1
die2 = Math.floor(Math.random() * 6) + 1
oppdie = Math.floor(Math.random() * 6) + 1
oppdie2 = Math.floor(Math.random() * 6) + 1
score = undefined
oppscore = undefined
if die is 1
  score = 0
else
  score = @die
if oppdie is 1
  oppscore = 0
else
  oppscore = @oppdie
console.log "You rolled a " + die + " for a score of " + score + ""
console.log "Your opponent rolled a " + oppdie + " for a score of " + oppscore + ""
if score > oppscore
  console.log "You win!"
else if score < oppscore
  console.log "You Lose!"
else console.log "Tie Game!"  if score = oppscore
