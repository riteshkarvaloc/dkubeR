# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobCollectionDevices Class
#'
#' @field device 
#' @field node 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobCollectionDevices <- R6::R6Class(
  'JobCollectionDevices',
  public = list(
    `device` = NULL,
    `node` = NULL,
    initialize = function(`device`, `node`){
      if (!missing(`device`)) {
        stopifnot(R6::is.R6(`device`))
        self$`device` <- `device`
      }
      if (!missing(`node`)) {
        stopifnot(R6::is.R6(`node`))
        self$`node` <- `node`
      }
    },
    toJSON = function() {
      JobCollectionDevicesObject <- list()
      if (!is.null(self$`device`)) {
        JobCollectionDevicesObject[['device']] <- self$`device`$toJSON()
      }
      if (!is.null(self$`node`)) {
        JobCollectionDevicesObject[['node']] <- self$`node`$toJSON()
      }

      JobCollectionDevicesObject
    },
    fromJSON = function(JobCollectionDevicesJson) {
      JobCollectionDevicesObject <- jsonlite::fromJSON(JobCollectionDevicesJson)
      if (!is.null(JobCollectionDevicesObject$`device`)) {
        deviceObject <- DeviceModel$new()
        deviceObject$fromJSON(jsonlite::toJSON(JobCollectionDevicesObject$device, auto_unbox = TRUE))
        self$`device` <- deviceObject
      }
      if (!is.null(JobCollectionDevicesObject$`node`)) {
        nodeObject <- NodeModel$new()
        nodeObject$fromJSON(jsonlite::toJSON(JobCollectionDevicesObject$node, auto_unbox = TRUE))
        self$`node` <- nodeObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "device": %s,
           "node": %s
        }',
        self$`device`$toJSON(),
        self$`node`$toJSON()
      )
    },
    fromJSONString = function(JobCollectionDevicesJson) {
      JobCollectionDevicesObject <- jsonlite::fromJSON(JobCollectionDevicesJson)
      DeviceModelObject <- DeviceModel$new()
      self$`device` <- DeviceModelObject$fromJSON(jsonlite::toJSON(JobCollectionDevicesObject$device, auto_unbox = TRUE))
      NodeModelObject <- NodeModel$new()
      self$`node` <- NodeModelObject$fromJSON(jsonlite::toJSON(JobCollectionDevicesObject$node, auto_unbox = TRUE))
    }
  )
)