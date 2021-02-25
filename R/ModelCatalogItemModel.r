# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ModelCatalogItemModel Class
#'
#' @field name 
#' @field owner 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelCatalogItemModel <- R6::R6Class(
  'ModelCatalogItemModel',
  public = list(
    `name` = NULL,
    `owner` = NULL,
    initialize = function(`name`, `owner`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self$`owner` <- `owner`
      }
    },
    toJSON = function() {
      ModelCatalogItemModelObject <- list()
      if (!is.null(self$`name`)) {
        ModelCatalogItemModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`owner`)) {
        ModelCatalogItemModelObject[['owner']] <- self$`owner`
      }

      ModelCatalogItemModelObject
    },
    fromJSON = function(ModelCatalogItemModelJson) {
      ModelCatalogItemModelObject <- jsonlite::fromJSON(ModelCatalogItemModelJson)
      if (!is.null(ModelCatalogItemModelObject$`name`)) {
        self$`name` <- ModelCatalogItemModelObject$`name`
      }
      if (!is.null(ModelCatalogItemModelObject$`owner`)) {
        self$`owner` <- ModelCatalogItemModelObject$`owner`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "owner": %s
        }',
        self$`name`,
        self$`owner`
      )
    },
    fromJSONString = function(ModelCatalogItemModelJson) {
      ModelCatalogItemModelObject <- jsonlite::fromJSON(ModelCatalogItemModelJson)
      self$`name` <- ModelCatalogItemModelObject$`name`
      self$`owner` <- ModelCatalogItemModelObject$`owner`
    }
  )
)