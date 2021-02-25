# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20034 Class
#'
#' @field response 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20034 <- R6::R6Class(
  'InlineResponse20034',
  public = list(
    `response` = NULL,
    `data` = NULL,
    initialize = function(`response`, `data`){
      if (!missing(`response`)) {
        stopifnot(R6::is.R6(`response`))
        self$`response` <- `response`
      }
      if (!missing(`data`)) {
        stopifnot(is.list(`data`), length(`data`) != 0)
        lapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      InlineResponse20034Object <- list()
      if (!is.null(self$`response`)) {
        InlineResponse20034Object[['response']] <- self$`response`$toJSON()
      }
      if (!is.null(self$`data`)) {
        InlineResponse20034Object[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }

      InlineResponse20034Object
    },
    fromJSON = function(InlineResponse20034Json) {
      InlineResponse20034Object <- jsonlite::fromJSON(InlineResponse20034Json)
      if (!is.null(InlineResponse20034Object$`response`)) {
        responseObject <- ApiResponse$new()
        responseObject$fromJSON(jsonlite::toJSON(InlineResponse20034Object$response, auto_unbox = TRUE))
        self$`response` <- responseObject
      }
      if (!is.null(InlineResponse20034Object$`data`)) {
        self$`data` <- lapply(InlineResponse20034Object$`data`, function(x) {
          dataObject <- UserProfile$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dataObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "response": %s,
           "data": [%s]
        }',
        self$`response`$toJSON(),
        lapply(self$`data`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(InlineResponse20034Json) {
      InlineResponse20034Object <- jsonlite::fromJSON(InlineResponse20034Json)
      ApiResponseObject <- ApiResponse$new()
      self$`response` <- ApiResponseObject$fromJSON(jsonlite::toJSON(InlineResponse20034Object$response, auto_unbox = TRUE))
      self$`data` <- lapply(InlineResponse20034Object$`data`, function(x) UserProfile$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
