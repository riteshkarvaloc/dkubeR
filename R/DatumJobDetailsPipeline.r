# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DatumJobDetailsPipeline Class
#'
#' @field name 
#' @field runid 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatumJobDetailsPipeline <- R6::R6Class(
  'DatumJobDetailsPipeline',
  public = list(
    `name` = NULL,
    `runid` = NULL,
    initialize = function(`name`, `runid`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`runid`)) {
        stopifnot(is.character(`runid`), length(`runid`) == 1)
        self$`runid` <- `runid`
      }
    },
    toJSON = function() {
      DatumJobDetailsPipelineObject <- list()
      if (!is.null(self$`name`)) {
        DatumJobDetailsPipelineObject[['name']] <- self$`name`
      }
      if (!is.null(self$`runid`)) {
        DatumJobDetailsPipelineObject[['runid']] <- self$`runid`
      }

      DatumJobDetailsPipelineObject
    },
    fromJSON = function(DatumJobDetailsPipelineJson) {
      DatumJobDetailsPipelineObject <- jsonlite::fromJSON(DatumJobDetailsPipelineJson)
      if (!is.null(DatumJobDetailsPipelineObject$`name`)) {
        self$`name` <- DatumJobDetailsPipelineObject$`name`
      }
      if (!is.null(DatumJobDetailsPipelineObject$`runid`)) {
        self$`runid` <- DatumJobDetailsPipelineObject$`runid`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "runid": %s
        }',
        self$`name`,
        self$`runid`
      )
    },
    fromJSONString = function(DatumJobDetailsPipelineJson) {
      DatumJobDetailsPipelineObject <- jsonlite::fromJSON(DatumJobDetailsPipelineJson)
      self$`name` <- DatumJobDetailsPipelineObject$`name`
      self$`runid` <- DatumJobDetailsPipelineObject$`runid`
    }
  )
)
