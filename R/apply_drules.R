#' Run commands dynamically trough mutate
#'
#' Create or modify a column with mutate and a command passed as a string.
#' @param df A data frame
#' @param column The selected column for mutate
#' @param cmd The command to be run as a string
#' @param returnDF If the full data frame is to be returned or just a vector
#' @return A vector with the results or the full DF with the new column
#' @examples
#' df <- apply_drules(df, "mycol", "case_when(other_col < 2 ~ 'low', TRUE ~ 'high')", returnDF = TRUE);
#' @export
apply_drules <- function(df, column, cmd, returnDF = F){
  x <- df %>%
    dplyr::mutate(
      !!{{column}} := eval(parse(text=cmd)))

  x <- ifelse(returnDF, x, x %>% dplyr::pull(!!{column}))

  return(x)
}

