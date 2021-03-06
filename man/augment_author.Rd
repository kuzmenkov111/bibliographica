% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/augment_author.R
\name{augment_author}
\alias{augment_author}
\title{Augment Author Info}
\usage{
augment_author(df, life_info = NULL, ambiguous_authors = NULL)
}
\arguments{
\item{df}{data.frame with author_birth, author_death and author_name}

\item{life_info}{Additional author life years info table}

\item{ambiguous_authors}{Author synonyme table}
}
\value{
Augmented data.frame
}
\description{
Estimate missing entries in author info.
}
\details{
Augments author life years (author_birth and author_death) based on information from other entries of the same author where the info is available. Also supports manually provided information tables. Adds author_unique field which combines full author name and life years to provide a unique author identifier. Finally harmonizes ambiguous author names based on synonyme table.
}
\examples{
# augment_author_life(df)
}
\author{
Leo Lahti \email{leo.lahti@iki.fi}
}
\references{
See citation("bibliographica")
}
\keyword{utilities}

