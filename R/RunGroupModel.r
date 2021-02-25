# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RunGroupModel Class
#'
#' @field name 
#' @field description 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RunGroupModel <- R6::R6Class(
  'RunGroupModel',
  public = list(
    `name` = NULL,
    `description` = NULL,
    initialize = function(`name`, `description`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    toJSON = function() {
      RunGroupModelObject <- list()
      if (!is.null(self$`name`)) {
        RunGroupModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        RunGroupModelObject[['description']] <- self$`description`
      }

      RunGroupModelObject
    },
    fromJSON = function(RunGroupModelJson) {
      RunGroupModelObject <- jsonlite::fromJSON(RunGroupModelJson)
      if (!is.null(RunGroupModelObject$`name`)) {
        self$`name` <- RunGroupModelObject$`name`
      }
      if (!is.null(RunGroupModelObject$`description`)) {
        self$`description` <- RunGroupModelObject$`description`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "description": %s
        }',
        self$`name`,
        self$`description`
      )
    },
    fromJSONString = function(RunGroupModelJson) {
      RunGroupModelObject <- jsonlite::fromJSON(RunGroupModelJson)
      self$`name` <- RunGroupModelObject$`name`
      self$`description` <- RunGroupModelObject$`description`
    }
  )
)