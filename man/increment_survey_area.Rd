% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/increment_survey_data.R
\name{increment_survey_area}
\alias{increment_survey_area}
\title{Increase Area Level}
\usage{
increment_survey_area(survey_data, areas_wide, par)
}
\arguments{
\item{survey_data}{Survey data, whose area level in \code{area_id} is not as
desired.}

\item{areas_wide}{\code{data.frame} with shapefiles and area hierarchy.}

\item{par}{list with two entries:
\itemize{
\item{\code{area_lev}}{Current area level of \code{df}.}
\item{\code{area_lev_select}}{Desired area level for \code{df}.}
}}
}
\value{
Survey data, with desired area level in \code{area_id}.
}
\description{
Function to increase area levels.
}
