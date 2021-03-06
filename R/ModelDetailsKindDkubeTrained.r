# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ModelDetailsKindDkubeTrained Class
#'
#' @field job 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelDetailsKindDkubeTrained <- R6::R6Class(
  'ModelDetailsKindDkubeTrained',
  public = list(
    `job` = NULL,
    initialize = function(`job`){
      if (!missing(`job`)) {
        stopifnot(is.character(`job`), length(`job`) == 1)
        self$`job` <- `job`
      }
    },
    toJSON = function() {
      ModelDetailsKindDkubeTrainedObject <- list()
      if (!is.null(self$`job`)) {
        ModelDetailsKindDkubeTrainedObject[['job']] <- self$`job`
      }

      ModelDetailsKindDkubeTrainedObject
    },
    fromJSON = function(ModelDetailsKindDkubeTrainedJson) {
      ModelDetailsKindDkubeTrainedObject <- jsonlite::fromJSON(ModelDetailsKindDkubeTrainedJson)
      if (!is.null(ModelDetailsKindDkubeTrainedObject$`job`)) {
        self$`job` <- ModelDetailsKindDkubeTrainedObject$`job`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "job": %s
        }',
        self$`job`
      )
    },
    fromJSONString = function(ModelDetailsKindDkubeTrainedJson) {
      ModelDetailsKindDkubeTrainedObject <- jsonlite::fromJSON(ModelDetailsKindDkubeTrainedJson)
      self$`job` <- ModelDetailsKindDkubeTrainedObject$`job`
    }
  )
)
