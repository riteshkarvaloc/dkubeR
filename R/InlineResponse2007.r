# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse2007 Class
#'
#' @field response 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse2007 <- R6::R6Class(
  'InlineResponse2007',
  public = list(
    `response` = NULL,
    initialize = function(`response`){
      if (!missing(`response`)) {
        stopifnot(R6::is.R6(`response`))
        self$`response` <- `response`
      }
    },
    toJSON = function() {
      InlineResponse2007Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse2007Object[['response']] <- self$`response`$toJSON()
      }

      InlineResponse2007Object
    },
    fromJSON = function(InlineResponse2007Json) {
      InlineResponse2007Object <- jsonlite::fromJSON(InlineResponse2007Json)
      if (!is.null(InlineResponse2007Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse2007Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "response": %s
        }',
        self$`response`$toJSON()
      )
    },
    fromJSONString = function(InlineResponse2007Json) {
      InlineResponse2007Object <- jsonlite::fromJSON(InlineResponse2007Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse2007Object$response, auto_unbox = TRUE))
    }
  )
)
