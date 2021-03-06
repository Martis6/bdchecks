% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_country_countrycode_consistent.R,
%   R/documentation_country_countrycode_consistent.R
\name{dc_country_countrycode_consistent}
\alias{dc_country_countrycode_consistent}
\title{Data check country_countrycode_consistent Check if country matches country
code.}
\format{
An object of class function to perform a specific data check.
}
\usage{
dc_country_countrycode_consistent(input = NULL, input2 = NULL)
}
\arguments{
\item{input}{a vector of country information.
country name (checked against data_countries reference dataset).}

\item{input2}{a vector of country code information.
country code (checked against data_countries reference dataset).}
}
\description{
This data check answers: "Does country matches country code?"
question.\cr Data check will pass if \strong{Given country matches country
code.} and will fail if \strong{Given country doesn't match country
code.}.\cr Dimension of this data check is \strong{} and it's flagging type
is: \strong{FLAG}\cr Example of entries that will pass:
\code{country="Australia",countryCode="AU"}, such data check would return
\code{TRUE}.\cr Example of entries that will fail:
\code{country="Australia",countryCode="GM"}, such data check would return
}
\section{samplePassData}{

Given country matches country code.
}

\section{sampleFailData}{

Given country doesn't match country code.
}

\section{targetDWCField}{

country
}

\section{checkCategory}{

 location
}

\examples{
perform_dc(data_bats, 'country_countrycode_consistent')
}
\references{
None
}
\keyword{space,validation,conformance}
