% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polish_years.R
\name{polish_years}
\alias{polish_years}
\title{Polish Years}
\usage{
polish_years(x, start_synonyms = NULL, end_synonyms = NULL,
  verbose = TRUE, check = FALSE)
}
\arguments{
\item{x}{year field (a vector)}

\item{start_synonyms}{Synonyme table for start year}

\item{end_synonyms}{Synonyme table for end year}

\item{verbose}{verbose}

\item{check}{If true, remove entries (replace by NA) where start > end}
}
\value{
data.frame with the fields 'start' and 'end'
}
\description{
Pick and polish the year interval (start and end years) from a time field which is of the form 1800 or 1823-1845 etc.
}
\examples{
\dontrun{df <- polish_years(c("1746", "1745-1750"))}
}
\author{
Leo Lahti and Niko Ilomaki \email{leo.lahti@iki.fi}
}
\references{
See citation("bibliographica")
}
\keyword{utilities}

