# To keep track combination of odds and decide which bet is most profitable

# define bet object:

# Bet type, horse, odds

all_bet_type <- c("Win","Place","Q","QP","Trio")
all_bet_type_abbr <- c("W","P","Q","QP","T")

# No. of horse, is ordered
bet_type_breakdown <- list(win=list(1,TRUE))

compare_bet <- function(bet1, bet2){

  # print bet1, bet2, whihc is better
}

win_odds_to_q_odds <- function(odds, horse1, horse2){
  prob <- odds_to_prob(odds)
  prob_ex1 <- prob/sum(prob[-horse1])
  prob_ex2 <- prob/sum(prob[-horse2])
  # print(prob)
  # print(prob_ex1)
  # print(prob_ex2)
  # print(prob[horse1] * prob_ex1[horse2])
  # print(prob[horse2] * prob_ex2[horse1])

  qprob <- prob[horse1] * prob_ex1[horse2] + prob[horse2] * prob_ex2[horse1]
  1/qprob
}

win_odds_to_double_odds <- function(odds1, odds2, horse1, horse2){


  # 1st prize

  # 2nd prize
}

#' Find arbitrage
#'
#'
#'
#'
