% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sport_trend.R
\docType{data}
\name{sport_trend}
\alias{sport_trend}
\title{Google Trends sport data}
\format{An object of class \code{\link{gtrends}} containing:
\describe{
  \item{query}{Query information such has keywords and time of the query}
  \item{meta}{Meta data returned by Google Trends upon a query}
  \item{tend}{A data frame containing Google Trends data for each keyword}
  \item{regions}{A list containing one data frame with top regions hit search for each keyword}
  \item{topmetros}{A list containing one data frame with top metros hit search for each keyword}
  \item{cities}{A list containing one data frame with top cities hit search for each keyword}
  \item{searches}{Top related searches for each keyword}
  \item{rising}{Rising searches for each keyword}
  \item{headers}{Header information for each bloc described above}
  }}
\source{
\url{www.google.com/trends}
}
\usage{
data("sport_trend")
}
\description{
Google Trends data for keywords \code{nhl}, \code{nba} and \code{nfl} between
2004-01-04 and 2015-11-14.
}
\examples{
\dontrun{
ch <- gconnect("usr@gmail.com", "psw")
sport_trend <- gtrends(ch, c("nhl", "nba", "nfl"))
}

data("sport_trend")
plot(sport_trend)
}
\references{
Data Source: Google Trends (www.google.com/trends)
}
\keyword{datasets}

