# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DatumMetricsInner Class
#'
#' @field name 
#' @field uuid 
#' @field versions 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatumMetricsInner <- R6::R6Class(
  'DatumMetricsInner',
  public = list(
    `name` = NULL,
    `uuid` = NULL,
    `versions` = NULL,
    initialize = function(`name`, `uuid`, `versions`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
      if (!missing(`versions`)) {
        stopifnot(is.list(`versions`), length(`versions`) != 0)
        lapply(`versions`, function(x) stopifnot(R6::is.R6(x)))
        self$`versions` <- `versions`
      }
    },
    toJSON = function() {
      DatumMetricsInnerObject <- list()
      if (!is.null(self$`name`)) {
        DatumMetricsInnerObject[['name']] <- self$`name`
      }
      if (!is.null(self$`uuid`)) {
        DatumMetricsInnerObject[['uuid']] <- self$`uuid`
      }
      if (!is.null(self$`versions`)) {
        DatumMetricsInnerObject[['versions']] <- lapply(self$`versions`, function(x) x$toJSON())
      }

      DatumMetricsInnerObject
    },
    fromJSON = function(DatumMetricsInnerJson) {
      DatumMetricsInnerObject <- jsonlite::fromJSON(DatumMetricsInnerJson)
      if (!is.null(DatumMetricsInnerObject$`name`)) {
        self$`name` <- DatumMetricsInnerObject$`name`
      }
      if (!is.null(DatumMetricsInnerObject$`uuid`)) {
        self$`uuid` <- DatumMetricsInnerObject$`uuid`
      }
      if (!is.null(DatumMetricsInnerObject$`versions`)) {
        self$`versions` <- lapply(DatumMetricsInnerObject$`versions`, function(x) {
          versionsObject <- DatumMetricsInnerVersions$new()
          versionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          versionsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "uuid": %s,
           "versions": [%s]
        }',
        self$`name`,
        self$`uuid`,
        lapply(self$`versions`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(DatumMetricsInnerJson) {
      DatumMetricsInnerObject <- jsonlite::fromJSON(DatumMetricsInnerJson)
      self$`name` <- DatumMetricsInnerObject$`name`
      self$`uuid` <- DatumMetricsInnerObject$`uuid`
      self$`versions` <- lapply(DatumMetricsInnerObject$`versions`, function(x) DatumMetricsInnerVersions$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
