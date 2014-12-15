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
function Game() {
var die = Math.floor(Math.random() * 6) + 1;
var die2 = Math.floor(Math.random() * 6) + 1;
var oppdie = Math.floor(Math.random() * 6) + 1;
var oppdie2 = Math.floor(Math.random() * 6) + 1;
var score;
var oppscore;

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
 var x = document.createElement("div");
x.textContent = "You rolled a " +die+ " for a score of " +score+ "";         
document.body.appendChild(x); 
x.textContent = "Your opponent rolled a " +oppdie+ " for a score of " +oppscore+ "";         
document.body.appendChild(x); 
 console.log();
 if (score > oppscore){
  x.textContent = "You win!";         
document.body.appendChild(x); 
 } else if (score < oppscore){
    x.textContent = "You lose!";         
document.body.appendChild(x); 
 } else if (score = oppscore){
    x.textContent = "Tie game!";         
document.body.appendChild(x); 
 }
}
}
