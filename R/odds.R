#' convert odds to probability
#'
#' \code{odds_to_prob} covert odds to probabilty
#'
#' @param odds A vector of odds
#' @return The probablity
#' @examples
#' odds_to_prob(c(2.0,5.0,11.2))
#' @export
#'
#' TODO: add odd format (1:2 / 3.0)
odds_to_prob <- function(odds){
  prob <- 1 / odds
  return(prob / sum(prob))
}

prob_to_odds <- function(prob){
  return(1 / prob)
}
odds_to_pool <- function(odds, total_pool = 1000000, return_rate = 0.825){
  pool <- 1 / odds
  return(pool / sum(pool) * total_pool / return_rate)
}

pool_to_odds <- function(prob){
  return(1 / prob)
}
