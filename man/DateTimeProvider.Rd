% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datetime-provider.R
\docType{data}
\name{DateTimeProvider}
\alias{DateTimeProvider}
\title{DateTimeProvider}
\description{
DateTimeProvider
}
\details{
\strong{Methods}
\describe{
\item{\code{unix_time(start_date = NULL, end_date = "now")}}{
Get a timestamp between January 1, 1970 and now, unless passed
explicit \code{start_date} or \code{end_date} values
param \code{start_date}: start date, a valid date format
param \code{end_date}: start date, a valid date format, default: now
ref: https://en.wikipedia.org/wiki/Unix_time
}
\item{\code{date(pattern)}}{
Generate a date between January 1, 1970 and now, with given pattern
param \code{pattern}: date pattern, default: \code{\%Y-\%m-\%d}
}
\item{\code{date_time(tzinfo = NULL)}}{
Generate a date time between January 1, 1970 and now
param \code{tzinfo}: timezone, see \link{timezone}
}
\item{\code{date_time_fromtimestamp(timestamp, tzinfo = NULL)}}{
Generate a iso8601 format date
param \code{timestamp}: a timestamp
param \code{tzinfo}: timezone, see \link{timezone}
ref: https://en.wikipedia.org/wiki/Unix_time
}
\item{\code{iso8601(tzinfo = NULL)}}{
Generate a iso8601 format date
param \code{tzinfo}: timezone, see \link{timezone}
}
\item{\code{year()}}{
generate a year
}
\item{\code{century()}}{
generate a century
}
\item{\code{timezone()}}{
generate a timezone
}
\item{\code{date_time_between(start_date, end_date = "now", tzinfo = NULL)}}{
Generate a date time based on a random date between two given dates
param \code{start_date}: start date, a valid date format
param \code{end_date}: start date, a valid date format, default: now
param \code{tzinfo}: timezone, see \link{timezone}
}
}
}
\examples{
z <- DateTimeProvider$new()
z$countries
z$centuries
z$century()
z$timezone()
z$unix_time()
z$date("\%Y-\%M-\%d")
z$date_time()
z$year()
z$iso8601("1932-02-12 05:32:12")
# z$iso8601("January 4, 1981")

# date time between a range of dates
(start_date <- Sys.time() - 604800L)
z$date_time_between(start_date = start_date)
# in the year 1900
z$date_time_between("1900-01-01 00:00:00 PST", "1900-12-31 00:00:00 PST")
z$date_time_between("1900-01-01", "1900-12-31")
}
\keyword{internal}
