# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CustomJobModel Class
#'
#' @field datums 
#' @field tags 
#' @field config 
#' @field service 
#' @field container 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomJobModel <- R6::R6Class(
  'CustomJobModel',
  public = list(
    `datums` = NULL,
    `tags` = NULL,
    `config` = NULL,
    `service` = NULL,
    `container` = NULL,
    initialize = function(`datums`, `tags`, `config`, `service`, `container`){
      if (!missing(`datums`)) {
        stopifnot(R6::is.R6(`datums`))
        self$`datums` <- `datums`
      }
      if (!missing(`tags`)) {
        stopifnot(is.list(`tags`), length(`tags`) != 0)
        lapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!missing(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!missing(`service`)) {
        stopifnot(R6::is.R6(`service`))
        self$`service` <- `service`
      }
      if (!missing(`container`)) {
        stopifnot(R6::is.R6(`container`))
        self$`container` <- `container`
      }
    },
    toJSON = function() {
      CustomJobModelObject <- list()
      if (!is.null(self$`datums`)) {
        CustomJobModelObject[['datums']] <- self$`datums`$toJSON()
      }
      if (!is.null(self$`tags`)) {
        CustomJobModelObject[['tags']] <- self$`tags`
      }
      if (!is.null(self$`config`)) {
        CustomJobModelObject[['config']] <- self$`config`$toJSON()
      }
      if (!is.null(self$`service`)) {
        CustomJobModelObject[['service']] <- self$`service`$toJSON()
      }
      if (!is.null(self$`container`)) {
        CustomJobModelObject[['container']] <- self$`container`$toJSON()
      }

      CustomJobModelObject
    },
    fromJSON = function(CustomJobModelJson) {
      CustomJobModelObject <- jsonlite::fromJSON(CustomJobModelJson)
      if (!is.null(CustomJobModelObject$`datums`)) {
        datumsObject <- JobDatumModel$new()
        datumsObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$datums, auto_unbox = TRUE))
        self$`datums` <- datumsObject
      }
      if (!is.null(CustomJobModelObject$`tags`)) {
        self$`tags` <- CustomJobModelObject$`tags`
      }
      if (!is.null(CustomJobModelObject$`config`)) {
        configObject <- JobConfigModel$new()
        configObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$config, auto_unbox = TRUE))
        self$`config` <- configObject
      }
      if (!is.null(CustomJobModelObject$`service`)) {
        serviceObject <- CustomJobModelService$new()
        serviceObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$service, auto_unbox = TRUE))
        self$`service` <- serviceObject
      }
      if (!is.null(CustomJobModelObject$`container`)) {
        containerObject <- CustomContainerModel$new()
        containerObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$container, auto_unbox = TRUE))
        self$`container` <- containerObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "datums": %s,
           "tags": [%s],
           "config": %s,
           "service": %s,
           "container": %s
        }',
        self$`datums`$toJSON(),
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`config`$toJSON(),
        self$`service`$toJSON(),
        self$`container`$toJSON()
      )
    },
    fromJSONString = function(CustomJobModelJson) {
      CustomJobModelObject <- jsonlite::fromJSON(CustomJobModelJson)
      JobDatumModelObject <- JobDatumModel$new()
      self$`datums` <- JobDatumModelObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$datums, auto_unbox = TRUE))
      self$`tags` <- CustomJobModelObject$`tags`
      JobConfigModelObject <- JobConfigModel$new()
      self$`config` <- JobConfigModelObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$config, auto_unbox = TRUE))
      CustomJobModelServiceObject <- CustomJobModelService$new()
      self$`service` <- CustomJobModelServiceObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$service, auto_unbox = TRUE))
      CustomContainerModelObject <- CustomContainerModel$new()
      self$`container` <- CustomContainerModelObject$fromJSON(jsonlite::toJSON(CustomJobModelObject$container, auto_unbox = TRUE))
    }
  )
)