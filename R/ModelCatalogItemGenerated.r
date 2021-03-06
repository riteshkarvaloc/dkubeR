# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ModelCatalogItemGenerated Class
#'
#' @field uuid 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelCatalogItemGenerated <- R6::R6Class(
  'ModelCatalogItemGenerated',
  public = list(
    `uuid` = NULL,
    initialize = function(`uuid`){
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
    },
    toJSON = function() {
      ModelCatalogItemGeneratedObject <- list()
      if (!is.null(self$`uuid`)) {
        ModelCatalogItemGeneratedObject[['uuid']] <- self$`uuid`
      }

      ModelCatalogItemGeneratedObject
    },
    fromJSON = function(ModelCatalogItemGeneratedJson) {
      ModelCatalogItemGeneratedObject <- jsonlite::fromJSON(ModelCatalogItemGeneratedJson)
      if (!is.null(ModelCatalogItemGeneratedObject$`uuid`)) {
        self$`uuid` <- ModelCatalogItemGeneratedObject$`uuid`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uuid": %s
        }',
        self$`uuid`
      )
    },
    fromJSONString = function(ModelCatalogItemGeneratedJson) {
      ModelCatalogItemGeneratedObject <- jsonlite::fromJSON(ModelCatalogItemGeneratedJson)
      self$`uuid` <- ModelCatalogItemGeneratedObject$`uuid`
    }
  )
)
