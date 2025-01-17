# function to get change in prevalence/coverage from a given year
#' @title Calculate Change in Prevalence/Coverage from a given year.
#' @description Function to calculate change in prevalence/coverage from a
#' given year for all other years.
#' @param results \code{results} results for several years.
#' @param spec_year Year to calculate change in prevalence/coverage from within
#' \code{results}.
#' @importFrom dplyr %>%
#' @importFrom rlang .data
#' @export
prevalence_change <- function(results, spec_year) {

  # pull samples from coverage in chosen year
  spec_year_results <- results %>%
    dplyr::filter(.data$year == spec_year) %>%
    dplyr::select(-c(.data$year, .data$population)) %>%
    tidyr::pivot_longer(dplyr::contains("samp_"), values_to = "prev_value")

  # join into spec_year_results for corresponding categorical variables and
  # subtract
  results_change_year <- results %>%
    tidyr::pivot_longer(dplyr::contains("samp_")) %>%
    dplyr::left_join(spec_year_results) %>%
    dplyr::mutate(value = .data$value - .data$prev_value) %>%
    dplyr::select(-.data$prev_value) %>%
    tidyr::pivot_wider(names_from = "name", values_from = "value") %>%
    dplyr::mutate(type = paste0("Change in ", .data$type, " from ", spec_year))
}
