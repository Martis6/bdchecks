% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_dateidentified_standard.R,
%   R/documentation_dateidentified_standard.R
\name{dc_dateidentified_standard}
\alias{dc_dateidentified_standard}
\title{Data check dateidentified_standard Check if dateIdentified is a valid ISO
8601-1:2019 date.}
\format{
An object of class function to perform a specific data check.
}
\usage{
dc_dateidentified_standard(input = NULL)
}
\arguments{
\item{input}{a vector of dateIdentified information. To pass it must be a
valid ISO 8601-1:2019 date.}
}
\description{
This data check answers: "Is dateIdentified a valid ISO 8601-1:2019
date?" question.\cr Data check will pass if \strong{Given dateIdentified is
a valid ISO 8601-1:2019 date.} and will fail if \strong{Given dateIdentified
is not a valid ISO 8601-1:2019 date.}.\cr Dimension of this data check is
\strong{} and it's flagging type is: \strong{FLAG}\cr Example of entries
that will pass: \code{dateIdentified="2018-02-02"}, such data check would
return \code{TRUE}.\cr Example of entries that will fail:
\code{dateIdentified="02021981"}, such data check would return
}
\section{samplePassData}{

Given dateIdentified is a valid ISO 8601-1:2019 date.
}

\section{sampleFailData}{

Given dateIdentified is not a valid ISO 8601-1:2019 date.
}

\section{targetDWCField}{

dateIdentified
}

\section{checkCategory}{

 event
}

\examples{
perform_dc(data_bats, 'dateidentified_standard')
}
\references{
None
}
\keyword{time,validation,conformance}
