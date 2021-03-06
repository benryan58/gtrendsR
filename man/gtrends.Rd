% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gtrends.R
\name{gtrends}
\alias{as.zoo.gtrends}
\alias{gtrends}
\alias{gtrends.default}
\alias{plot.gtrends}
\alias{summary.gtrends}
\title{Google Trends Query}
\usage{
gtrends(query, geo, cat, ch, ...)

\method{gtrends}{default}(query, geo, cat, ch, res = "week",
  start_date = as.Date("2004-01-01"), end_date = as.Date(Sys.time()), ...)

\method{summary}{gtrends}(object, ...)

\method{plot}{gtrends}(x, type = c("trend", "regions", "topmetros", "cities"),
  region = "world", resolution = c("countries", "provinces", "metros"),
  displaymode = c("auto", "regions", "markers"), ind = 1L, ...)

\method{as.zoo}{gtrends}(x, ...)
}
\arguments{
\item{query}{A character vector with the actual Google Trends query keywords.
Multiple keywords are possible using \code{gtrends(c("NHL", "NBA", "MLB", 
"MLS"))}.}

\item{geo}{A character vector denoting geographic regions for the query,
default to \dQuote{all} for global queries. Multiple regions are possible
using \code{gtrends("NHL", c("CA", "US"))}.}

\item{cat}{A character denoting the category, defaults to \dQuote{0}.}

\item{ch}{A valid handle which can be created via \code{\link{gconnect}}. 
Users can either supply an explicit handle, or rely on the helper function 
\code{.getDefaultConnection()} to retrieve the current connection handle.}

\item{...}{Additional parameters passed on in method dispatch.}

\item{res}{Resolution of the trending data to be returned. Either \code{week}
for weekly data or \code{day} for daily data.}

\item{start_date}{Starting date using yyyy-mm-dd format. Must be breater than
2004-01-01.}

\item{end_date}{Starting date using yyyy-mm-dd format. Must be before than 
current date.}

\item{object}{A \code{\link{gtrends}} object}

\item{x}{A \code{\link{gtrends}} object}

\item{type}{A character variable selecting the type of plot;
permissible values are \sQuote{trends} (which is also the
default), \sQuote{regions} and \sQuote{cities}.}

\item{region}{A character variable with default
\sQuote{world}. Oher permissible value are country codes like
\sQuote{CA} or \sQuote{GB}, a US Metro code such as \sQuote{US-IL}
or a three-digit code for a continent or sub-continent; see the
help for \link[googleVis]{gvisGeoChart} for details.}

\item{resolution}{A character variable selecting the granularity
of the plot; permissble values are \sQuote{countries},
\sQuote{provinces} or \sQuote{metros}.}

\item{displaymode}{A character variable indicating the mode of
display, with values \sQuote{auto}, \sQuote{regions} or
\sQuote{markers} with latter preferable for cities.}

\item{ind}{A integer selecting the result set in case of multiple
search terms.}
}
\value{
An object of class \sQuote{gtrends} which is list with six elements 
  containing the results.
}
\description{
The \code{gtrends} default method performs a Google Trends query for the 
\sQuote{query} argument and handle \sQuote{ch}. Optional arguments for 
geolocation and category can also be supplied.
}
\examples{
\dontrun{
ch <- gconnect("usr@gmail.com", "psw")
sport_trend <- gtrends(c("NHL", "NBA", "MLB", "MLS"))

sport_trend <- gtrends("NHL", geo = c("CA", "US"))
}
data("sport_trend")
plot(sport_trend)
}

