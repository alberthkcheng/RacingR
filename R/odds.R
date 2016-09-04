odds_to_prob <- function(odds){
  prob <- 1 / odds
  return(prob / sum(prob))
}
prob_to_odds <- function(prob){
  return(1 / prob)
}
