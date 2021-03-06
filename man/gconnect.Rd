% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gtrends.R
\name{gconnect}
\alias{.getDefaultConnection}
\alias{gconnect}
\title{Connect to Google account}
\usage{
gconnect(usr = NULL, psw = NULL, verbose = FALSE)

.getDefaultConnection()
}
\arguments{
\item{usr}{User name (ex.: yourmail@gmail.com); alternatively the 
environment variable \code{GOOGLE_USER} as well as 
\code{options("google.user")} can be used to supply the user name.}

\item{psw}{Account password; alternatively the environment
variable \code{GOOGLE_PASSWORD} as well as 
\code{options("google.password")} can be used to supply the password.}

\item{verbose}{Logical for displaying additional information}
}
\value{
A libcurl handle is returned (invisibly).
}
\description{
The resulting connection object is also stored in the package-local
environment from which the (internal) helper function
\code{.getDefaultConnection()} retrieves it as needed.
}
\details{
If the environment variables \code{GOOGLE_USER} and
\code{GOOGLE_PASSWORD} are set, they will be retrieved in case no
argument has been supplied.  Similarly, the environment variable
\code{GOOGLE_PASSWORD} or \code{options("google.password")} can be
used. Lastly, if the environment variable \code{GOOGLE_AUTOCONNECT}
is set to (the text string) \sQuote{TRUE}, or the the R option
\code{options("google.autoconnect")} is set to \sQuote{TRUE} then
the connection is automatically made at package load.
}
\note{
Should you have trouble connecting, and also use two-factor authentication on
your Google Account, then consider creating another Google account (without
two-factor authentication) which should allow automated (i.e. programmatic)
connection here.
}
\examples{
\dontrun{
# use with explicit arguments
ch <- gconnect("usr@gmail.com", "psw")

# use with arguments stored in env.var or options()
# this is preferred for scripts shared with others who
# can place their secret password in a file only they know
ch <- gconnect("usr@gmail.com", "psw")
}
}

