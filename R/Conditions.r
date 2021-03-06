# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Conditions Class
#'
#' @field match 
#' @field user 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Conditions <- R6::R6Class(
  'Conditions',
  public = list(
    `match` = NULL,
    `user` = NULL,
    `name` = NULL,
    initialize = function(`match`, `user`, `name`){
      if (!missing(`match`)) {
        stopifnot(is.character(`match`), length(`match`) == 1)
        self$`match` <- `match`
      }
      if (!missing(`user`)) {
        stopifnot(is.character(`user`), length(`user`) == 1)
        self$`user` <- `user`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      ConditionsObject <- list()
      if (!is.null(self$`match`)) {
        ConditionsObject[['match']] <- self$`match`
      }
      if (!is.null(self$`user`)) {
        ConditionsObject[['user']] <- self$`user`
      }
      if (!is.null(self$`name`)) {
        ConditionsObject[['name']] <- self$`name`
      }

      ConditionsObject
    },
    fromJSON = function(ConditionsJson) {
      ConditionsObject <- jsonlite::fromJSON(ConditionsJson)
      if (!is.null(ConditionsObject$`match`)) {
        self$`match` <- ConditionsObject$`match`
      }
      if (!is.null(ConditionsObject$`user`)) {
        self$`user` <- ConditionsObject$`user`
      }
      if (!is.null(ConditionsObject$`name`)) {
        self$`name` <- ConditionsObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "match": %s,
           "user": %s,
           "name": %s
        }',
        self$`match`,
        self$`user`,
        self$`name`
      )
    },
    fromJSONString = function(ConditionsJson) {
      ConditionsObject <- jsonlite::fromJSON(ConditionsJson)
      self$`match` <- ConditionsObject$`match`
      self$`user` <- ConditionsObject$`user`
      self$`name` <- ConditionsObject$`name`
    }
  )
)
