# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20020Data Class
#'
#' @field total_gpus 
#' @field free_gpus 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20020Data <- R6::R6Class(
  'InlineResponse20020Data',
  public = list(
    `total_gpus` = NULL,
    `free_gpus` = NULL,
    initialize = function(`total_gpus`, `free_gpus`){
      if (!missing(`total_gpus`)) {
        stopifnot(is.numeric(`total_gpus`), length(`total_gpus`) == 1)
        self$`total_gpus` <- `total_gpus`
      }
      if (!missing(`free_gpus`)) {
        stopifnot(is.numeric(`free_gpus`), length(`free_gpus`) == 1)
        self$`free_gpus` <- `free_gpus`
      }
    },
    toJSON = function() {
      InlineResponse20020DataObject <- list()
      if (!is.null(self$`total_gpus`)) {
        InlineResponse20020DataObject[['total_gpus']] <- self$`total_gpus`
      }
      if (!is.null(self$`free_gpus`)) {
        InlineResponse20020DataObject[['free_gpus']] <- self$`free_gpus`
      }

      InlineResponse20020DataObject
    },
    fromJSON = function(InlineResponse20020DataJson) {
      InlineResponse20020DataObject <- jsonlite::fromJSON(InlineResponse20020DataJson)
      if (!is.null(InlineResponse20020DataObject$`total_gpus`)) {
        self$`total_gpus` <- InlineResponse20020DataObject$`total_gpus`
      }
      if (!is.null(InlineResponse20020DataObject$`free_gpus`)) {
        self$`free_gpus` <- InlineResponse20020DataObject$`free_gpus`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "total_gpus": %d,
           "free_gpus": %d
        }',
        self$`total_gpus`,
        self$`free_gpus`
      )
    },
    fromJSONString = function(InlineResponse20020DataJson) {
      InlineResponse20020DataObject <- jsonlite::fromJSON(InlineResponse20020DataJson)
      self$`total_gpus` <- InlineResponse20020DataObject$`total_gpus`
      self$`free_gpus` <- InlineResponse20020DataObject$`free_gpus`
    }
  )
)