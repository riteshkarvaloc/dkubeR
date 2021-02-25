# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse2002 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse2002 <- R6::R6Class(
  'InlineResponse2002',
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
      InlineResponse2002Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse2002Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse2002Object[['data']] <- self$`data`$toJSON()
      }

      InlineResponse2002Object
    },
    fromJSON = function(InlineResponse2002Json) {
      InlineResponse2002Object <- jsonlite::fromJSON(InlineResponse2002Json)
      if (!is.null(InlineResponse2002Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse2002Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse2002Object$`data`)) {
        dataObject <- DLFrameworks$new()
        dataObject$fromJSON(jsonlite::toJSON(InlineResponse2002Object$data, auto_unbox = TRUE))
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
    fromJSONString = function(InlineResponse2002Json) {
      InlineResponse2002Object <- jsonlite::fromJSON(InlineResponse2002Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse2002Object$response, auto_unbox = TRUE))
      DLFrameworksObject <- DLFrameworks$new()
      self$`data` <- DLFrameworksObject$fromJSON(jsonlite::toJSON(InlineResponse2002Object$data, auto_unbox = TRUE))
    }
  )
)
