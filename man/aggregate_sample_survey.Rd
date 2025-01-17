% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregate_sample_survey.R
\name{aggregate_sample_survey}
\alias{aggregate_sample_survey}
\title{Aggregate survey points for each type and age group.}
\usage{
aggregate_sample_survey(
  survey_circumcision,
  areas,
  join = TRUE,
  types = list(Total = c(unique(survey_circumcision$type)), Medical = "MMC",
    Traditional = "TMC"),
  age_groups = c("0-4", "5-9", "10-14", "15-19", "20-24", "25-29", "30-34", "35-39",
    "40-44", "45-49", "50-54", "54-59", "60-64", "65+", "0+", "10+", "15+", "15-24",
    "15-29", "15-39", "15-49", "10-29", "10-39", "10-49", "10-24")
)
}
\arguments{
\item{survey_circumcision}{Information on male circumcision status from
surveys.}

\item{areas}{\code{sf} shapefiles which include area hierarchies.}

\item{join}{Indicator to decide whether to join aggregated samples for
different age groups, Default: TRUE}

\item{types}{List of circumcision types to look at, Default:
list("Total" = c(unique(survey_circumcision$type)),
"Medical" = "MMC",
"Traditional" = "TMC")}

\item{age_groups}{Age groups to aggregate by, Default:
c("0-4",   "5-9",   "10-14", "15-19", "20-24", "25-29",
"30-34", "35-39", "40-44", "45-49", "50-54", "54-59",
"0+",    "10+",   "15+",   "15-24", "10-24", 15-29",
"10-29", "15-39", "10-39", "15-49", "10-49")}
}
\value{
\code{data.frame} with samples aggregated by \code{aggr_cols} and
weighted by population.
}
\description{
Aggregate survey points for each type and age group.
}
\seealso{
\code{\link[threemc]{combine_areas}}
}
