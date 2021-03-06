# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20037 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20037 <- R6::R6Class(
  'InlineResponse20037',
  public = list(
    `response` = NULL,
    `data` = NULL,
    initialize = function(`response`, `data`){
      if (!missing(`response`)) {
        stopifnot(R6::is.R6(`response`))
        self$`response` <- `response`
      }
      if (!missing(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      InlineResponse20037Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse20037Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse20037Object[['data']] <- self$`data`$toJSON()
      }

      InlineResponse20037Object
    },
    fromJSON = function(InlineResponse20037Json) {
      InlineResponse20037Object <- jsonlite::fromJSON(InlineResponse20037Json)
      if (!is.null(InlineResponse20037Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse20037Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse20037Object$`data`)) {
        dataObject <- JobCollection$new()
        dataObject$fromJSON(jsonlite::toJSON(InlineResponse20037Object$data, auto_unbox = TRUE))
        self$`data` <- dataObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "response": %s,
           "data": %s
        }',
        self$`response`$toJSON(),
        self$`data`$toJSON()
      )
    },
    fromJSONString = function(InlineResponse20037Json) {
      InlineResponse20037Object <- jsonlite::fromJSON(InlineResponse20037Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse20037Object$response, auto_unbox = TRUE))
      JobCollectionObject <- JobCollection$new()
      self$`data` <- JobCollectionObject$fromJSON(jsonlite::toJSON(InlineResponse20037Object$data, auto_unbox = TRUE))
    }
  )
)
