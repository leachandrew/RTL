% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chart_spreads.R
\name{chart_spreads}
\alias{chart_spreads}
\title{Futures contract spreads comparison across years}
\usage{
chart_spreads(
  cpairs = cpairs,
  daysFromExpiry = 200,
  from = "2012-01-01",
  conversion = c(1, 1),
  feed = "CME_NymexFutures_EOD",
  iuser = "x@xyz.com",
  ipassword = "pass",
  title = "March/April ULSD Nymex Spreads",
  yaxis = "$ per bbl",
  output = "chart"
)
}
\arguments{
\item{cpairs}{Tibble of contract pairs - see example for expiry when not expired yet.}

\item{daysFromExpiry}{Number of days (numeric) from expiry to compute spreads.}

\item{from}{From date as character string}

\item{conversion}{Defaults to c(1,1) first and second contracts. 42 from $ per gallons to bbls.}

\item{feed}{Morningstar Feed Table.}

\item{iuser}{Morningstar user name as character - sourced locally in examples.}

\item{ipassword}{Morningstar user password as character - sourced locally in examples.}

\item{title}{Title for chart.}

\item{yaxis}{y-axis label.}

\item{output}{"chart" for plotly object or "data" for dataframe.}
}
\value{
A plotly object or a dataframe
}
\description{
Plots specific contract pairs across years with time being days from expiry.
}
\examples{
\dontrun{
cpairs <- dplyr::tibble(
 year = c("2018", "2019", "2020","2021","2022","2023"),
 first = c("@HO8H", "@HO9H", "@HO0H","@HO21H","@HO22H","@HO23H"),
 second = c("@CL8H", "@CL9H", "@CL0H","@CL21H","@CL22H","@CL23H"),
 expiry = c(NA,NA,NA,NA,NA,"2023-02-23")
)
chart_spreads(
  cpairs = cpairs, daysFromExpiry = 200, from = "2012-01-01",
  conversion = c(42, 1), feed = "CME_NymexFutures_EOD",
  iuser = "x@xyz.com", ipassword = "pass",
  title = "March/April ULSD Nymex Spreads",
  yaxis = "$ per bbl",
  output = "data"
)
}

}
\author{
Philippe Cote
}
