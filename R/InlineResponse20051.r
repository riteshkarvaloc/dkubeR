# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20051 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20051 <- R6::R6Class(
  'InlineResponse20051',
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
      InlineResponse20051Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse20051Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse20051Object[['data']] <- self$`data`$toJSON()
      }

      InlineResponse20051Object
    },
    fromJSON = function(InlineResponse20051Json) {
      InlineResponse20051Object <- jsonlite::fromJSON(InlineResponse20051Json)
      if (!is.null(InlineResponse20051Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse20051Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse20051Object$`data`)) {
        dataObject <- MigrationStatus$new()
        dataObject$fromJSON(jsonlite::toJSON(InlineResponse20051Object$data, auto_unbox = TRUE))
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
    fromJSONString = function(InlineResponse20051Json) {
      InlineResponse20051Object <- jsonlite::fromJSON(InlineResponse20051Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse20051Object$response, auto_unbox = TRUE))
      MigrationStatusObject <- MigrationStatus$new()
      self$`data` <- MigrationStatusObject$fromJSON(jsonlite::toJSON(InlineResponse20051Object$data, auto_unbox = TRUE))
    }
  )
)
