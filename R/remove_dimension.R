
remove_dimension <- function (s) {

  # Remove commonly used volume formats
  s <- gsub("obl\\.1/[0-9]⁰\\.", NA, s)
  s <- gsub("long [0-9][0-9]⁰\\.", NA, s)
  s <- gsub("[0-9][0-9]-[0-9][0-9] cm\\. \\([0-9]⁰; [0-9]⁰\\)", " ", s)
  s <- gsub("[0-9][0-9]-[0-9][0-9] cm\\. \\([0-9]⁰", " ", s)
  s <- gsub("[0-9]/[0-9]⁰-[0-9]⁰\\.", " ", s)
  s <- gsub("[0-9]⁰ \\([0-9][0-9]\\,[0-9] cm\\.\\)", " ", s)
  s <- gsub("[0-9]⁰ \\([0-9][0-9]\\.[0-9] cm\\.\\)", " ", s)
  s <- gsub("[0-9][0-9] cm\\.\\([0-9][0-9]⁰\\)", " ", s)
  s <- gsub("\\([0-9][0-9] cm\\.\\) [0-9][0-9]⁰", " ", s)
  s <- gsub("[0-9][0-9] cm\\.\\([0-9]⁰\\)", " ", s)
  s <- gsub("[0-9][0-9] cm\\. \\([0-9]\\)", " ", s)
  s <- gsub("[0-9][0-9] cm\\. \\(1/[0-9]⁰\\)", " ", s)
  s <- gsub("[0-9][0-9] cm\\. \\([0-9]to\\)", " ", s)
  s <- gsub("[0-9]⁰ \\([0-9][0-9] cm\\.\\)", " ", s)
  s <- gsub("[0-9]⁰ \\([0-9][0-9]-[0-9][0-9] cm\\.\\)", " ", s)
  s <- gsub("[0-9]⁰\\)", " ", s)
  s <- gsub("[0-9][0-9]⁰\\.f", " ", s)
  s <- gsub("[0-9]⁰ in [0-9]\\.", " ", s)
  s <- gsub("[0-9][0-9]⁰", " ", s)
  s <- gsub("[0-9][0-9] ⁰", " ", s)
  s <- gsub("[0-9] ⁰", " ", s)
  s <- gsub("[0-9]⁰", " ", s)
  s <- gsub("[0-9] D[0-9]\\.", " ", s)
  s <- gsub("[0-9][0-9] cm\\.", " ", s)
  s <- gsub("[0-9]to", " ", s)
  s <- gsub("[0-9]vo", " ", s)
  s <- gsub("[0-9][0-9]cm\\.", " ", s)

  if (is.na(s) || s == "") {s <- NA}

  s

}

