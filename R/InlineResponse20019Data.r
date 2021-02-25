# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20019Data Class
#'
#' @field total_gpus 
#' @field used_gpus 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20019Data <- R6::R6Class(
  'InlineResponse20019Data',
  public = list(
    `total_gpus` = NULL,
    `used_gpus` = NULL,
    initialize = function(`total_gpus`, `used_gpus`){
      if (!missing(`total_gpus`)) {
        stopifnot(is.numeric(`total_gpus`), length(`total_gpus`) == 1)
        self$`total_gpus` <- `total_gpus`
      }
      if (!missing(`used_gpus`)) {
        stopifnot(is.numeric(`used_gpus`), length(`used_gpus`) == 1)
        self$`used_gpus` <- `used_gpus`
      }
    },
    toJSON = function() {
      InlineResponse20019DataObject <- list()
      if (!is.null(self$`total_gpus`)) {
        InlineResponse20019DataObject[['total_gpus']] <- self$`total_gpus`
      }
      if (!is.null(self$`used_gpus`)) {
        InlineResponse20019DataObject[['used_gpus']] <- self$`used_gpus`
      }

      InlineResponse20019DataObject
    },
    fromJSON = function(InlineResponse20019DataJson) {
      InlineResponse20019DataObject <- jsonlite::fromJSON(InlineResponse20019DataJson)
      if (!is.null(InlineResponse20019DataObject$`total_gpus`)) {
        self$`total_gpus` <- InlineResponse20019DataObject$`total_gpus`
      }
      if (!is.null(InlineResponse20019DataObject$`used_gpus`)) {
        self$`used_gpus` <- InlineResponse20019DataObject$`used_gpus`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "total_gpus": %d,
           "used_gpus": %d
        }',
        self$`total_gpus`,
        self$`used_gpus`
      )
    },
    fromJSONString = function(InlineResponse20019DataJson) {
      InlineResponse20019DataObject <- jsonlite::fromJSON(InlineResponse20019DataJson)
      self$`total_gpus` <- InlineResponse20019DataObject$`total_gpus`
      self$`used_gpus` <- InlineResponse20019DataObject$`used_gpus`
    }
  )
)
