#' Create a dataset to test datachecks
#'
#' Loads, parses and outputs datasets to test data checks
#' 
#' @param path_datatest String that specifies path to test data in yaml format
#'
#' @return A list of data.frames that contain target column, test type and
#' expected result 
#' 
#' @importFrom magrittr "%>%"
#' @importFrom yaml read_yaml
#'
#' @examples
#' data_test <- create_testdata()
#' 
#' @export
#'
create_testdata <- function(
  path_datatest = system.file("extdata/data_test.yaml", package = "bdchecks")
) { 
  d <- yaml::read_yaml(path_datatest)
  data_test <- list()
  for (i in seq_along(d)) {
    data_current <- d[[i]]$data
    stopifnot(!is.null(data_current))
    stopifnot(all(c("type", "expected") %in% data_current[[1]]))
    data_test[[i]] <- do.call(rbind, lapply(data_current[-1], as.character)) %>%
      data.frame(stringsAsFactors = FALSE)
    colnames(data_test[[i]]) <- data_current[[1]]
  }
  names(data_test) <- names(d)
  return(data_test)
}

perform_testdata <- function(data_test = NULL) {
  data_test <- create_testdata()
  for (i in seq_along(data_test)) {
    check <- names(data_test)[i]
    data_test[[i]]$observed <- apply(
      subset(data_test[[i]], select = -c(type, expected)),
      2,
      get(paste0("dc_", check))
    ) %>%
      ifelse("pass", "fail") %>%
      as.character()
  }
}