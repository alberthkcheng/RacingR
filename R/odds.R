#' convert odds to probability
#'
#' \code{odds_to_prob} covert odds to probabilty
#'
#' @param odds A vector of odds
#' @return The probablity
#' @examples
#' odds_to_prob(c(2.0,5.0,11.2))
odds_to_prob <- function(odds){
  prob <- 1 / odds
  return(prob / sum(prob))
}
prob_to_odds <- function(prob){
  return(1 / prob)
}
