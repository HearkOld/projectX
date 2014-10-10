/////////////////////////
//1st Game by Heark || //
/////////////////////////
var rps = function(points, wins, losses, ties){
  points = this.points;
  wins = this.wins;
  losses = this.losses;
  ties = this.ties;
};
var score = new rps(0, 0, 0, 0);
score.wins = 0;
score.points = 0;
score.losses = 0;
score.ties = 0;
// Creating the computer
var computerItems = ["Rock", "Paper", "Scissors"];
var computerChoice = computerItems[Math.floor(Math.random()*computerItems.length)];
// User Input
var userChoice = prompt("Rock, paper or scissors?");
if (userChoice == "Rock", "rock" && computerChoice == "Rock"){
  score.points = score.points + 50
  score.ties = score.ties + 1
  console.log("You both chose Rock, Tie game!");
} else if (userChoice == "Rock", "rock" && computerChoice == "Paper"){
  score.points = score.points - 20
  score.losses = score.losses + 1
  console.log("Paper covers rock, You lose!");
} else if (userChoice == "Rock", "rock" && computerChoice == "Scissors"){
  score.wins = score.wins + 1
  score.points = score.points + 100
  console.log("Rock smashes scissors, You win!");
} else if (userChoice == "Paper", "paper" && computerChoice == "Paper"){
  score.points = score.points + 50
  score.ties = score.ties + 1
  console.log("You both chose paper, Tie game!");
} else if (userChoice == "Paper", "paper" && computerChoice == "Scissors"){
  score.points = score.points - 20
  score.losses = score.losses + 1
  console.log("Scissors cut paper, You Lose!");
} else if (userChoice == "Paper", "paper" && computerChoice == "Rock"){
  score.wins = score.wins + 1
  score.points = score.points + 100
  console.log("Paper covers rock, You win!");
} else if (userChoice == "Scissors", "scissors" && computerChoice == "Scissors"){
  score.points = score.points + 50
  score.ties = score.ties + 1
  console.log("You both chose scissors, Tie game!")
} else if (userChoice == "Scissors", "scissors" && computerChoice == "Paper"){
  score.wins = score.wins + 1
  score.points = score.points + 100
  console.log("Scissor cuts paper, You win!")
} else if (userChoice == "Scissors", "scissors" && computerChoice == "Rock"){
  score.points = score.points - 20
  score.losses = score.losses + 1
  console.log("Rock smashes scissors, You lose!")
} 
console.log("Your Score is " +score.wins+ " wins, " +score.losses+ "lossess, " +score.ties+ "ties, " +score.points+ " points.")
