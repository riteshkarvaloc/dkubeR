# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FeatureSpecDef Class
#'
#' @field name 
#' @field description 
#' @field schema 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureSpecDef <- R6::R6Class(
  'FeatureSpecDef',
  public = list(
    `name` = NULL,
    `description` = NULL,
    `schema` = NULL,
    initialize = function(`name`, `description`, `schema`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`schema`)) {
        stopifnot(is.character(`schema`), length(`schema`) == 1)
        self$`schema` <- `schema`
      }
    },
    toJSON = function() {
      FeatureSpecDefObject <- list()
      if (!is.null(self$`name`)) {
        FeatureSpecDefObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        FeatureSpecDefObject[['description']] <- self$`description`
      }
      if (!is.null(self$`schema`)) {
        FeatureSpecDefObject[['schema']] <- self$`schema`
      }

      FeatureSpecDefObject
    },
    fromJSON = function(FeatureSpecDefJson) {
      FeatureSpecDefObject <- jsonlite::fromJSON(FeatureSpecDefJson)
      if (!is.null(FeatureSpecDefObject$`name`)) {
        self$`name` <- FeatureSpecDefObject$`name`
      }
      if (!is.null(FeatureSpecDefObject$`description`)) {
        self$`description` <- FeatureSpecDefObject$`description`
      }
      if (!is.null(FeatureSpecDefObject$`schema`)) {
        self$`schema` <- FeatureSpecDefObject$`schema`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "description": %s,
           "schema": %s
        }',
        self$`name`,
        self$`description`,
        self$`schema`
      )
    },
    fromJSONString = function(FeatureSpecDefJson) {
      FeatureSpecDefObject <- jsonlite::fromJSON(FeatureSpecDefJson)
      self$`name` <- FeatureSpecDefObject$`name`
      self$`description` <- FeatureSpecDefObject$`description`
      self$`schema` <- FeatureSpecDefObject$`schema`
    }
  )
)
