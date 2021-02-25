# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DeviceModel Class
#'
#' @field version 
#' @field name 
#' @field class 
#' @field vendor 
#' @field model 
#' @field UUID 
#' @field healthy 
#' @field node 
#' @field created_at 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeviceModel <- R6::R6Class(
  'DeviceModel',
  public = list(
    `version` = NULL,
    `name` = NULL,
    `class` = NULL,
    `vendor` = NULL,
    `model` = NULL,
    `UUID` = NULL,
    `healthy` = NULL,
    `node` = NULL,
    `created_at` = NULL,
    initialize = function(`version`, `name`, `class`, `vendor`, `model`, `UUID`, `healthy`, `node`, `created_at`){
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`class`)) {
        stopifnot(is.character(`class`), length(`class`) == 1)
        self$`class` <- `class`
      }
      if (!missing(`vendor`)) {
        stopifnot(is.character(`vendor`), length(`vendor`) == 1)
        self$`vendor` <- `vendor`
      }
      if (!missing(`model`)) {
        stopifnot(is.character(`model`), length(`model`) == 1)
        self$`model` <- `model`
      }
      if (!missing(`UUID`)) {
        stopifnot(is.character(`UUID`), length(`UUID`) == 1)
        self$`UUID` <- `UUID`
      }
      if (!missing(`healthy`)) {
        self$`healthy` <- `healthy`
      }
      if (!missing(`node`)) {
        stopifnot(is.character(`node`), length(`node`) == 1)
        self$`node` <- `node`
      }
      if (!missing(`created_at`)) {
        stopifnot(R6::is.R6(`created_at`))
        self$`created_at` <- `created_at`
      }
    },
    toJSON = function() {
      DeviceModelObject <- list()
      if (!is.null(self$`version`)) {
        DeviceModelObject[['version']] <- self$`version`
      }
      if (!is.null(self$`name`)) {
        DeviceModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`class`)) {
        DeviceModelObject[['class']] <- self$`class`
      }
      if (!is.null(self$`vendor`)) {
        DeviceModelObject[['vendor']] <- self$`vendor`
      }
      if (!is.null(self$`model`)) {
        DeviceModelObject[['model']] <- self$`model`
      }
      if (!is.null(self$`UUID`)) {
        DeviceModelObject[['UUID']] <- self$`UUID`
      }
      if (!is.null(self$`healthy`)) {
        DeviceModelObject[['healthy']] <- self$`healthy`
      }
      if (!is.null(self$`node`)) {
        DeviceModelObject[['node']] <- self$`node`
      }
      if (!is.null(self$`created_at`)) {
        DeviceModelObject[['created_at']] <- self$`created_at`$toJSON()
      }

      DeviceModelObject
    },
    fromJSON = function(DeviceModelJson) {
      DeviceModelObject <- jsonlite::fromJSON(DeviceModelJson)
      if (!is.null(DeviceModelObject$`version`)) {
        self$`version` <- DeviceModelObject$`version`
      }
      if (!is.null(DeviceModelObject$`name`)) {
        self$`name` <- DeviceModelObject$`name`
      }
      if (!is.null(DeviceModelObject$`class`)) {
        self$`class` <- DeviceModelObject$`class`
      }
      if (!is.null(DeviceModelObject$`vendor`)) {
        self$`vendor` <- DeviceModelObject$`vendor`
      }
      if (!is.null(DeviceModelObject$`model`)) {
        self$`model` <- DeviceModelObject$`model`
      }
      if (!is.null(DeviceModelObject$`UUID`)) {
        self$`UUID` <- DeviceModelObject$`UUID`
      }
      if (!is.null(DeviceModelObject$`healthy`)) {
        self$`healthy` <- DeviceModelObject$`healthy`
      }
      if (!is.null(DeviceModelObject$`node`)) {
        self$`node` <- DeviceModelObject$`node`
      }
      if (!is.null(DeviceModelObject$`created_at`)) {
        created_atObject <- TimeStamps$new()
        created_atObject$fromJSON(jsonlite::toJSON(DeviceModelObject$created_at, auto_unbox = TRUE))
        self$`created_at` <- created_atObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "version": %s,
           "name": %s,
           "class": %s,
           "vendor": %s,
           "model": %s,
           "UUID": %s,
           "healthy": %s,
           "node": %s,
           "created_at": %s
        }',
        self$`version`,
        self$`name`,
        self$`class`,
        self$`vendor`,
        self$`model`,
        self$`UUID`,
        self$`healthy`,
        self$`node`,
        self$`created_at`$toJSON()
      )
    },
    fromJSONString = function(DeviceModelJson) {
      DeviceModelObject <- jsonlite::fromJSON(DeviceModelJson)
      self$`version` <- DeviceModelObject$`version`
      self$`name` <- DeviceModelObject$`name`
      self$`class` <- DeviceModelObject$`class`
      self$`vendor` <- DeviceModelObject$`vendor`
      self$`model` <- DeviceModelObject$`model`
      self$`UUID` <- DeviceModelObject$`UUID`
      self$`healthy` <- DeviceModelObject$`healthy`
      self$`node` <- DeviceModelObject$`node`
      TimeStampsObject <- TimeStamps$new()
      self$`created_at` <- TimeStampsObject$fromJSON(jsonlite::toJSON(DeviceModelObject$created_at, auto_unbox = TRUE))
    }
  )
)
