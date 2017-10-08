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

# TODO: add odd format (1:2 / 3.0)
odds_to_prob <- function(odds){
  prob <- 1 / odds
  return(prob / sum(prob))
}

#'
#' @export
#'
prob_to_odds <- function(prob, return_rate = 0.825, type = c("win", "q")){
  type <- match.arg(type)
  if(type == "win"){
    return(return_rate / prob)
  }else if(type == "q"){
    probs <- outer(prob,prob) * 4
    for(i in 1:length(prob)){
      for(j in 1:i){
        probs[i,j]<-0
      }
    }
    return(return_rate / probs)
  }
  return(return_rate / prob)
}

odds_to_pool <- function(odds, total_pool = 1000000, return_rate = 0.825){
  pool <- 1 / odds
  return(pool / sum(pool) * total_pool / return_rate)
}

pool_to_odds <- function(prob){
  return(1 / prob)
}
