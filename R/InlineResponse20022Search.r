# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InlineResponse20022Search Class
#'
#' @field datasets 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineResponse20022Search <- R6::R6Class(
  'InlineResponse20022Search',
  public = list(
    `datasets` = NULL,
    initialize = function(`datasets`){
      if (!missing(`datasets`)) {
        stopifnot(is.list(`datasets`), length(`datasets`) != 0)
        lapply(`datasets`, function(x) stopifnot(R6::is.R6(x)))
        self$`datasets` <- `datasets`
      }
    },
    toJSON = function() {
      InlineResponse20022SearchObject <- list()
      if (!is.null(self$`datasets`)) {
        InlineResponse20022SearchObject[['datasets']] <- lapply(self$`datasets`, function(x) x$toJSON())
      }

      InlineResponse20022SearchObject
    },
    fromJSON = function(InlineResponse20022SearchJson) {
      InlineResponse20022SearchObject <- jsonlite::fromJSON(InlineResponse20022SearchJson)
      if (!is.null(InlineResponse20022SearchObject$`datasets`)) {
        self$`datasets` <- lapply(InlineResponse20022SearchObject$`datasets`, function(x) {
          datasetsObject <- JobInputDatumModel$new()
          datasetsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          datasetsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "datasets": [%s]
        }',
        lapply(self$`datasets`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(InlineResponse20022SearchJson) {
      InlineResponse20022SearchObject <- jsonlite::fromJSON(InlineResponse20022SearchJson)
      self$`datasets` <- lapply(InlineResponse20022SearchObject$`datasets`, function(x) JobInputDatumModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
