# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse2004 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse2004 <- R6::R6Class(
  'InlineResponse2004',
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
      InlineResponse2004Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse2004Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse2004Object[['data']] <- self$`data`$toJSON()
      }

      InlineResponse2004Object
    },
    fromJSON = function(InlineResponse2004Json) {
      InlineResponse2004Object <- jsonlite::fromJSON(InlineResponse2004Json)
      if (!is.null(InlineResponse2004Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse2004Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse2004Object$`data`)) {
        dataObject <- ClusterDetails$new()
        dataObject$fromJSON(jsonlite::toJSON(InlineResponse2004Object$data, auto_unbox = TRUE))
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
    fromJSONString = function(InlineResponse2004Json) {
      InlineResponse2004Object <- jsonlite::fromJSON(InlineResponse2004Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse2004Object$response, auto_unbox = TRUE))
      ClusterDetailsObject <- ClusterDetails$new()
      self$`data` <- ClusterDetailsObject$fromJSON(jsonlite::toJSON(InlineResponse2004Object$data, auto_unbox = TRUE))
    }
  )
)