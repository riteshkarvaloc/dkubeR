# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ClusterStatusInner Class
#'
#' @field component 
#' @field instances 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClusterStatusInner <- R6::R6Class(
  'ClusterStatusInner',
  public = list(
    `component` = NULL,
    `instances` = NULL,
    initialize = function(`component`, `instances`){
      if (!missing(`component`)) {
        stopifnot(is.character(`component`), length(`component`) == 1)
        self$`component` <- `component`
      }
      if (!missing(`instances`)) {
        stopifnot(is.list(`instances`), length(`instances`) != 0)
        lapply(`instances`, function(x) stopifnot(R6::is.R6(x)))
        self$`instances` <- `instances`
      }
    },
    toJSON = function() {
      ClusterStatusInnerObject <- list()
      if (!is.null(self$`component`)) {
        ClusterStatusInnerObject[['component']] <- self$`component`
      }
      if (!is.null(self$`instances`)) {
        ClusterStatusInnerObject[['instances']] <- lapply(self$`instances`, function(x) x$toJSON())
      }

      ClusterStatusInnerObject
    },
    fromJSON = function(ClusterStatusInnerJson) {
      ClusterStatusInnerObject <- jsonlite::fromJSON(ClusterStatusInnerJson)
      if (!is.null(ClusterStatusInnerObject$`component`)) {
        self$`component` <- ClusterStatusInnerObject$`component`
      }
      if (!is.null(ClusterStatusInnerObject$`instances`)) {
        self$`instances` <- lapply(ClusterStatusInnerObject$`instances`, function(x) {
          instancesObject <- ClusterStatusInnerInstances$new()
          instancesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          instancesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "component": %s,
           "instances": [%s]
        }',
        self$`component`,
        lapply(self$`instances`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(ClusterStatusInnerJson) {
      ClusterStatusInnerObject <- jsonlite::fromJSON(ClusterStatusInnerJson)
      self$`component` <- ClusterStatusInnerObject$`component`
      self$`instances` <- lapply(ClusterStatusInnerObject$`instances`, function(x) ClusterStatusInnerInstances$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
