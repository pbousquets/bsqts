#' JSON to data frame
#'
#' Convert a JSON file into a data frame
#' @param json Input JSON file
#' @return A data frame
#' @examples
#' myjson <- jsonlite::fromJSON("path/to/json")
#' df <- json2frame(myjson)
#' @export
json2frame <- function(json) {
  rules_frame <- plyr::rbind.fill(lapply(json, as.data.frame))
  return(rules_frame)
}
