# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20045 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20045 <- R6::R6Class(
  'InlineResponse20045',
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
      InlineResponse20045Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse20045Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse20045Object[['data']] <- self$`data`$toJSON()
      }

      InlineResponse20045Object
    },
    fromJSON = function(InlineResponse20045Json) {
      InlineResponse20045Object <- jsonlite::fromJSON(InlineResponse20045Json)
      if (!is.null(InlineResponse20045Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse20045Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse20045Object$`data`)) {
        dataObject <- InlineResponse20045Data$new()
        dataObject$fromJSON(jsonlite::toJSON(InlineResponse20045Object$data, auto_unbox = TRUE))
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
    fromJSONString = function(InlineResponse20045Json) {
      InlineResponse20045Object <- jsonlite::fromJSON(InlineResponse20045Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse20045Object$response, auto_unbox = TRUE))
      InlineResponse20045DataObject <- InlineResponse20045Data$new()
      self$`data` <- InlineResponse20045DataObject$fromJSON(jsonlite::toJSON(InlineResponse20045Object$data, auto_unbox = TRUE))
    }
  )
)
