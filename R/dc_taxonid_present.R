#' @rdname dc_taxonid_present
#' 
#' @param input a vector of taxonid information. To pass it must be non-empty
#' entry. 
#' 
dc_taxonid_present <- function(input = NULL) {
  clean_input <- input %>%
    gsub(" ", "", .) # Remove possible spaces
  result <- !is.na(clean_input) & clean_input != "" # Check if not empty
  return(result)
}
