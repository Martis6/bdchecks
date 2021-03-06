% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_geodeticdatum_present.R,
%   R/documentation_geodeticdatum_present.R
\name{dc_geodeticdatum_present}
\alias{dc_geodeticdatum_present}
\title{Data check geodeticdatum_present Check if geodeticDatum exists and is not
empty.}
\format{
An object of class function to perform a specific data check.
}
\usage{
dc_geodeticdatum_present(input = NULL)
}
\arguments{
\item{input}{a vector of geodeticDatum information. To pass it must be
non-empty entry.}
}
\description{
This data check answers: "Is geodeticDatum information present?"
question.\cr Data check will pass if \strong{The value for geodeticDatum is
present.} and will fail if \strong{The value for geodeticDatum is
missing.}.\cr Dimension of this data check is \strong{} and it's flagging
type is: \strong{FLAG}\cr Example of entries that will pass:
\code{geodeticDatum=WGS84}, such data check would return \code{TRUE}.\cr
Example of entries that will fail: \code{geodeticDatum=}, such data check
would return \code{FALSE}.
}
\section{samplePassData}{

The value for geodeticDatum is present.
}

\section{sampleFailData}{

The value for geodeticDatum is missing.
}

\section{targetDWCField}{

geodeticDatum
}

\section{checkCategory}{

 location
}

\examples{
perform_dc(data_bats, 'geodeticdatum_present')
}
\references{
None
}
\keyword{location,validation,completeness,missing,incomplete}
