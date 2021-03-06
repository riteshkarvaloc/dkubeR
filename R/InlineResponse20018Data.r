# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20018Data Class
#'
#' @field key 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20018Data <- R6::R6Class(
  'InlineResponse20018Data',
  public = list(
    `key` = NULL,
    initialize = function(`key`){
      if (!missing(`key`)) {
        stopifnot(is.character(`key`), length(`key`) == 1)
        self$`key` <- `key`
      }
    },
    toJSON = function() {
      InlineResponse20018DataObject <- list()
      if (!is.null(self$`key`)) {
        InlineResponse20018DataObject[['key']] <- self$`key`
      }

      InlineResponse20018DataObject
    },
    fromJSON = function(InlineResponse20018DataJson) {
      InlineResponse20018DataObject <- jsonlite::fromJSON(InlineResponse20018DataJson)
      if (!is.null(InlineResponse20018DataObject$`key`)) {
        self$`key` <- InlineResponse20018DataObject$`key`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "key": %s
        }',
        self$`key`
      )
    },
    fromJSONString = function(InlineResponse20018DataJson) {
      InlineResponse20018DataObject <- jsonlite::fromJSON(InlineResponse20018DataJson)
      self$`key` <- InlineResponse20018DataObject$`key`
    }
  )
)
