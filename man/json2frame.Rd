% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/json2frame.R
\name{json2frame}
\alias{json2frame}
\title{JSON to data frame}
\usage{
json2frame(json)
}
\arguments{
\item{json}{Input JSON file}
}
\value{
A data frame
}
\description{
Convert a JSON file into a data frame
}
\examples{
myjson <- jsonlite::fromJSON("path/to/json")
df <- json2frame(myjson)
}
