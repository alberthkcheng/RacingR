race <- function(x) {
  # if (!is.numeric(x)) stop("X must be numeric") check invalid fields
  structure(list(x), class = "race")
}

print.race <- function(r){
  str(r)
}

predict.race <- function(){
  "test"
}
