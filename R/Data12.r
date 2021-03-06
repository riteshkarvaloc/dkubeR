# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data12 Class
#'
#' @field modelcatalogs 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data12 <- R6::R6Class(
  'Data12',
  public = list(
    `modelcatalogs` = NULL,
    initialize = function(`modelcatalogs`){
      if (!missing(`modelcatalogs`)) {
        stopifnot(is.list(`modelcatalogs`), length(`modelcatalogs`) != 0)
        lapply(`modelcatalogs`, function(x) stopifnot(is.character(x)))
        self$`modelcatalogs` <- `modelcatalogs`
      }
    },
    toJSON = function() {
      Data12Object <- list()
      if (!is.null(self$`modelcatalogs`)) {
        Data12Object[['modelcatalogs']] <- self$`modelcatalogs`
      }

      Data12Object
    },
    fromJSON = function(Data12Json) {
      Data12Object <- jsonlite::fromJSON(Data12Json)
      if (!is.null(Data12Object$`modelcatalogs`)) {
        self$`modelcatalogs` <- Data12Object$`modelcatalogs`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "modelcatalogs": [%s]
        }',
        lapply(self$`modelcatalogs`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(Data12Json) {
      Data12Object <- jsonlite::fromJSON(Data12Json)
      self$`modelcatalogs` <- Data12Object$`modelcatalogs`
    }
  )
)
