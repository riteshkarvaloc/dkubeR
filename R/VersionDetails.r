# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VersionDetails Class
#'
#' @field model 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VersionDetails <- R6::R6Class(
  'VersionDetails',
  public = list(
    `model` = NULL,
    initialize = function(`model`){
      if (!missing(`model`)) {
        stopifnot(R6::is.R6(`model`))
        self$`model` <- `model`
      }
    },
    toJSON = function() {
      VersionDetailsObject <- list()
      if (!is.null(self$`model`)) {
        VersionDetailsObject[['model']] <- self$`model`$toJSON()
      }

      VersionDetailsObject
    },
    fromJSON = function(VersionDetailsJson) {
      VersionDetailsObject <- jsonlite::fromJSON(VersionDetailsJson)
      if (!is.null(VersionDetailsObject$`model`)) {
        modelObject <- ModelDetails$new()
        modelObject$fromJSON(jsonlite::toJSON(VersionDetailsObject$model, auto_unbox = TRUE))
        self$`model` <- modelObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "model": %s
        }',
        self$`model`$toJSON()
      )
    },
    fromJSONString = function(VersionDetailsJson) {
      VersionDetailsObject <- jsonlite::fromJSON(VersionDetailsJson)
      ModelDetailsObject <- ModelDetails$new()
      self$`model` <- ModelDetailsObject$fromJSON(jsonlite::toJSON(VersionDetailsObject$model, auto_unbox = TRUE))
    }
  )
)
