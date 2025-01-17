% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/posterior_summary_fun.R
\name{posterior_summary_fun}
\alias{posterior_summary_fun}
\title{Calculate summary statistics from Samples}
\usage{
posterior_summary_fun(.data, probs = c(0.025, 0.5, 0.975))
}
\arguments{
\item{.data}{\code{data.frame} with samples to be summarised.}

\item{probs}{Percentiles to provide quantiles at. Set to NULL to skip
computing quantiles.}
}
\description{
Takes samples and calculates summary statistics (mean, standard
deviation, and quantiles (if desired)).
}
