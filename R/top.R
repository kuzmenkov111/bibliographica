#' @title Identify Top Entries
#' @description Identify the top entries in a vector or for a given field in a data frame.
#' @param x data.frame, matrix, or vector 
#' @param field Field or column to check for a data.frame or matrix
#' @param n Number of top entries to show
#' @param output Output format: vector or data.frame
#' @param round Optional rounding
#' @return Vector of top counts, named by the corresponding entries
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples \dontrun{p <- top(df, field, 10)}
#' @keywords utilities
top <- function (x, field = NULL, n = NULL, output = "vector", round = NULL) {

  if (is.vector(x)) {
    s <- rev(sort(table(x)))
    N <- length(x)
  } else if (is.data.frame(x) || is.matrix(x)) {
    if (is.null(field)) {
      #warning("Indicate the selected field for the top function.")
      return(NULL)
    }
    N <- nrow(x)
    s <- rev(sort(table(x[, field])))
  }

  if (!is.null(n)) {
    s <- s[1:min(n, length(s))]
  }

  if (output == "data.frame") {
    s <- data_frame(name = names(s), n = unname(s), fraction = 100*unname(s)/N)
    names(s) <- c(field, "Entries (N)", "Fraction (%)")
    if (!is.null(round)) {
      s[,3] = round(s[,3], round)
    }
 
  }

  s

}

