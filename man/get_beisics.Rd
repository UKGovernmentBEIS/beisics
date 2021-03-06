% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_beisics.R
\name{get_beisics}
\alias{get_beisics}
\title{Copy BEIS logo and css into directory at once.}
\usage{
get_beisics(copy_to = getwd(), white_type = FALSE)
}
\arguments{
\item{copy_to}{The working directory to copy the logo to, default current working directory}

\item{white_type}{Whether or not to copy the white typeface version of the logo, default FALSE}
}
\value{
Returns a copy of the png image to the directory
}
\description{
Copies the standard or white typeface version of the BEIS logo to your current working directory.
Also copies BEIS-styling css stylesheet to specified directory. Also updates ggplot default colouring.
}
\examples{
get_beisics(copy_to = "my_folder", white_type = FALSE)
}
