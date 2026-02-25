#' Print a description of the authenticated Notion user
#'
#' @returns Nothing, called for side effects.
#'
#' @examples
#' whoami()
whoami <- function() {
  greet("Ethan") # Calls the C++ `greet()` function
}
