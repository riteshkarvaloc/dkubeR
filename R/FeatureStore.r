# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FeatureStore Class
#'
#' @field class 
#' @field dvs 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureStore <- R6::R6Class(
  'FeatureStore',
  public = list(
    `class` = NULL,
    `dvs` = NULL,
    initialize = function(`class`, `dvs`){
      if (!missing(`class`)) {
        stopifnot(is.character(`class`), length(`class`) == 1)
        self$`class` <- `class`
      }
      if (!missing(`dvs`)) {
        stopifnot(is.character(`dvs`), length(`dvs`) == 1)
        self$`dvs` <- `dvs`
      }
    },
    toJSON = function() {
      FeatureStoreObject <- list()
      if (!is.null(self$`class`)) {
        FeatureStoreObject[['class']] <- self$`class`
      }
      if (!is.null(self$`dvs`)) {
        FeatureStoreObject[['dvs']] <- self$`dvs`
      }

      FeatureStoreObject
    },
    fromJSON = function(FeatureStoreJson) {
      FeatureStoreObject <- jsonlite::fromJSON(FeatureStoreJson)
      if (!is.null(FeatureStoreObject$`class`)) {
        self$`class` <- FeatureStoreObject$`class`
      }
      if (!is.null(FeatureStoreObject$`dvs`)) {
        self$`dvs` <- FeatureStoreObject$`dvs`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "class": %s,
           "dvs": %s
        }',
        self$`class`,
        self$`dvs`
      )
    },
    fromJSONString = function(FeatureStoreJson) {
      FeatureStoreObject <- jsonlite::fromJSON(FeatureStoreJson)
      self$`class` <- FeatureStoreObject$`class`
      self$`dvs` <- FeatureStoreObject$`dvs`
    }
  )
)
