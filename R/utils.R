#' Convert milliseconds since 1970-01-01 to datetime
#'
#' The RATO database returns datetimes as miliseconds since 1970-01-01. This
#' function converts these to POSIXct datetimes.
#'
#' By default the timezone is set to UTC.
#'
#' @param miliseconds Integer vector of miliseconds since 1970-01-01.
#' @param origin Character. The origin date to use for the conversion. Default
#'   is "1970-01-01".
#' @param ... further arguments to be passed to or from other methods of
#'   `as.POSIXct()`.
#'
#' @return POSIXct vector of datetimes with timezone UTC.
#'
#' @examples
#' as_datetime(1.673858e+12)
#' @family utils
#' @noRd
as_datetime <- function(miliseconds, origin = "1970-01-01", ...) {
  as.POSIXct(miliseconds / 1000, origin = origin, tz = "UTC", ...)
}
