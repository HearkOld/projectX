/* Dice Game written by Heark

'||  ||`                       '||      
 ||  ||                         ||      
 ||''||  .|''|,  '''|.  '||''|  || //`  
 ||  ||  ||..|| .|''||   ||     ||<<    
.||  ||. `|...  `|..||. .||.   .|| \\.  
                                        
                                        
.|'''''|                                            .|'''',           
|| .                         ''                     ||                
|| |''||  '''|.  '||),,(|,   ||  `||''|,  .|''|,    ||      .|''|,    
||    || .|''||   || || ||   ||   ||  ||  ||  ||    ||      ||  ||    
`|....|' `|..||. .||    ||. .||. .||  ||. `|..||    `|....' `|..|' .. 
                                              ||                      
*/
var game = prompt("What mode would you like to play? Doubles or Singles?", "Singles");
var die = Math.floor(Math.random() * 6) + 1;
var die2 = Math.floor(Math.random() * 6) + 1;
var oppdie = Math.floor(Math.random() * 6) + 1;
var oppdie2 = Math.floor(Math.random() * 6) + 1;
var score;
var oppscore;
if (game === "Singles" || "singles"){
    if (die == 1){
        score = 0;
    } else {
        score = this.die;
    }
    if (oppdie == 1){
        oppscore = 0;
    } else {
        oppscore = this.oppdie;
    }
 console.log("You rolled a " +die+ " for a score of " +score+ "");
 console.log("Your opponent rolled a " +oppdie+ " for a score of " +oppscore+ "");
 if (score > oppscore){
  console.log("You win!");
 } else if (score < oppscore){
  console.log("You Lose!");
 } else if (score = oppscore){
  console.log("Tie Game!");
 }
}
if (game === "Doubles" || "doubles"){
 if (die || die2 == 1){
  score = 0;
 } else {
  score = this.die + this.die2 
 }
 if (die = die2){
  score = this.die + this.die2 * 2
 }
 if (oppdie || oppdie2 == 1){
  oppscore = 0;
 } else {
  oppscore = this.oppdie + this.oppdie2
 }
 if (oppdie = oppdie2){
  oppscore = this.oppdie + this.oppdie2 * 2
 }
 console.log("You rolled a " +die+ " & " +die2+ " for a score of " +score);
 console.log("Your opponent rolled a " +oppdie+ " & " +oppdie2+ " for a score of " +oppscore);
  if (score > oppscore){
  console.log("You win!");
 } else if (score < oppscore){
  console.log("You Lose!");
 } else if (score = oppscore){
  console.log("Tie Game!");
 }
}
