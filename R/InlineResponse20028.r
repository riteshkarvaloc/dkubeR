# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20028 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20028 <- R6::R6Class(
  'InlineResponse20028',
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
      InlineResponse20028Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse20028Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse20028Object[['data']] <- self$`data`$toJSON()
      }

      InlineResponse20028Object
    },
    fromJSON = function(InlineResponse20028Json) {
      InlineResponse20028Object <- jsonlite::fromJSON(InlineResponse20028Json)
      if (!is.null(InlineResponse20028Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse20028Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse20028Object$`data`)) {
        dataObject <- ReleasedModels$new()
        dataObject$fromJSON(jsonlite::toJSON(InlineResponse20028Object$data, auto_unbox = TRUE))
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
    fromJSONString = function(InlineResponse20028Json) {
      InlineResponse20028Object <- jsonlite::fromJSON(InlineResponse20028Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse20028Object$response, auto_unbox = TRUE))
      ReleasedModelsObject <- ReleasedModels$new()
      self$`data` <- ReleasedModelsObject$fromJSON(jsonlite::toJSON(InlineResponse20028Object$data, auto_unbox = TRUE))
    }
  )
)
