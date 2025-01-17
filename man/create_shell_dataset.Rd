% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_shell_dataset.R
\name{create_shell_dataset}
\alias{create_shell_dataset}
\title{Create Shell Dataset for Estimating Empirical Circumcision Rate}
\usage{
create_shell_dataset(
  survey_circumcision,
  areas,
  area_lev,
  time1 = "time1",
  time2 = "time2",
  strat = "space",
  age = "age",
  circ = "indweight_st",
  ...
)
}
\arguments{
\item{survey_circumcision}{Information on male circumcision status from
surveys.}

\item{areas}{\code{sf} shapefiles for specific country/region.}

\item{area_lev}{PSNU area level for specific country. Defaults to the
maximum area level found in \code{areas} if not supplied.}

\item{time1}{Variable name for time of birth, Default: "time1"}

\item{time2}{Variable name for time circumcised or censored,
Default: "time2"}

\item{strat}{Variable to stratify by in using a 3D hazard function,
Default: "space"}

\item{age}{\itemize{
\item Variable with age circumcised or censored. Default: "age"
}}

\item{circ}{Variables with circumcision matrix, Default: "indweight_st"}

\item{...}{Further arguments passed to or from other methods.}
}
\value{
\code{data.frame} with a row for every unique record in
\code{survey_circumcision} for a given area. Also includes empirical estimates
for circumcision estimates for each unique record.
}
\description{
Create a shell dataset with a row for every unique area ID,
area name, year and circumcision age in survey data. Also, computes the
empirical number of person years until circumcision and number of people
circumcised for several "types" of circumcision; known medical
circumcisions, known traditional circumcisions, censored survey entries
(i.e. where surveyed individuals had not been circumcised) and left-censored
survey entries (i.e. where circumcision occurred at an unknown age).
}
\seealso{
\code{\link[threemc]{datapack_psnu_area_level}}
\code{\link[tidyr]{crossing}}
\code{\link[threemc]{create_integration_matrix_agetime}}
\code{\link[threemc]{create_hazard_matrix_agetime}}
}
