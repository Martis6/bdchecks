% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perform.R
\name{perform_dc}
\alias{perform_dc}
\title{Perform Data Checks}
\usage{
perform_dc(data = NULL, wanted_dc = NULL, ...)
}
\arguments{
\item{data}{Data set to perform data checks}

\item{wanted_dc}{Character vector of names for data checks that should be 
performed (ie perform only these data checks)}

\item{...}{A value for the input-based checks
(possible choices: temporal_res, spatial_res, lowest_rank, lowest_date)}
}
\value{
Object of a DataCheckFlagSet class (combined result for all 
performed data checks)
}
\description{
`perform_dc()` is a function for performing all available data checks
on a give data set
}
\examples{
perform_dc(data_bats)

}
