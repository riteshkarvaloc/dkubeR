# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20029 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20029 <- R6::R6Class(
  'InlineResponse20029',
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
      InlineResponse20029Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse20029Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse20029Object[['data']] <- self$`data`$toJSON()
      }

      InlineResponse20029Object
    },
    fromJSON = function(InlineResponse20029Json) {
      InlineResponse20029Object <- jsonlite::fromJSON(InlineResponse20029Json)
      if (!is.null(InlineResponse20029Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse20029Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse20029Object$`data`)) {
        dataObject <- InlineResponse20029Data$new()
        dataObject$fromJSON(jsonlite::toJSON(InlineResponse20029Object$data, auto_unbox = TRUE))
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
    fromJSONString = function(InlineResponse20029Json) {
      InlineResponse20029Object <- jsonlite::fromJSON(InlineResponse20029Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse20029Object$response, auto_unbox = TRUE))
      InlineResponse20029DataObject <- InlineResponse20029Data$new()
      self$`data` <- InlineResponse20029DataObject$fromJSON(jsonlite::toJSON(InlineResponse20029Object$data, auto_unbox = TRUE))
    }
  )
)
