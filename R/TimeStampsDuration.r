# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TimeStampsDuration Class
#'
#' @field days 
#' @field hours 
#' @field minutes 
#' @field seconds 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeStampsDuration <- R6::R6Class(
  'TimeStampsDuration',
  public = list(
    `days` = NULL,
    `hours` = NULL,
    `minutes` = NULL,
    `seconds` = NULL,
    initialize = function(`days`, `hours`, `minutes`, `seconds`){
      if (!missing(`days`)) {
        stopifnot(is.character(`days`), length(`days`) == 1)
        self$`days` <- `days`
      }
      if (!missing(`hours`)) {
        stopifnot(is.character(`hours`), length(`hours`) == 1)
        self$`hours` <- `hours`
      }
      if (!missing(`minutes`)) {
        stopifnot(is.character(`minutes`), length(`minutes`) == 1)
        self$`minutes` <- `minutes`
      }
      if (!missing(`seconds`)) {
        stopifnot(is.character(`seconds`), length(`seconds`) == 1)
        self$`seconds` <- `seconds`
      }
    },
    toJSON = function() {
      TimeStampsDurationObject <- list()
      if (!is.null(self$`days`)) {
        TimeStampsDurationObject[['days']] <- self$`days`
      }
      if (!is.null(self$`hours`)) {
        TimeStampsDurationObject[['hours']] <- self$`hours`
      }
      if (!is.null(self$`minutes`)) {
        TimeStampsDurationObject[['minutes']] <- self$`minutes`
      }
      if (!is.null(self$`seconds`)) {
        TimeStampsDurationObject[['seconds']] <- self$`seconds`
      }

      TimeStampsDurationObject
    },
    fromJSON = function(TimeStampsDurationJson) {
      TimeStampsDurationObject <- jsonlite::fromJSON(TimeStampsDurationJson)
      if (!is.null(TimeStampsDurationObject$`days`)) {
        self$`days` <- TimeStampsDurationObject$`days`
      }
      if (!is.null(TimeStampsDurationObject$`hours`)) {
        self$`hours` <- TimeStampsDurationObject$`hours`
      }
      if (!is.null(TimeStampsDurationObject$`minutes`)) {
        self$`minutes` <- TimeStampsDurationObject$`minutes`
      }
      if (!is.null(TimeStampsDurationObject$`seconds`)) {
        self$`seconds` <- TimeStampsDurationObject$`seconds`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "days": %s,
           "hours": %s,
           "minutes": %s,
           "seconds": %s
        }',
        self$`days`,
        self$`hours`,
        self$`minutes`,
        self$`seconds`
      )
    },
    fromJSONString = function(TimeStampsDurationJson) {
      TimeStampsDurationObject <- jsonlite::fromJSON(TimeStampsDurationJson)
      self$`days` <- TimeStampsDurationObject$`days`
      self$`hours` <- TimeStampsDurationObject$`hours`
      self$`minutes` <- TimeStampsDurationObject$`minutes`
      self$`seconds` <- TimeStampsDurationObject$`seconds`
    }
  )
)
