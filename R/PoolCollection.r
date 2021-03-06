# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PoolCollection Class
#'
#' @field pool 
#' @field devices 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PoolCollection <- R6::R6Class(
  'PoolCollection',
  public = list(
    `pool` = NULL,
    `devices` = NULL,
    initialize = function(`pool`, `devices`){
      if (!missing(`pool`)) {
        stopifnot(R6::is.R6(`pool`))
        self$`pool` <- `pool`
      }
      if (!missing(`devices`)) {
        stopifnot(R6::is.R6(`devices`))
        self$`devices` <- `devices`
      }
    },
    toJSON = function() {
      PoolCollectionObject <- list()
      if (!is.null(self$`pool`)) {
        PoolCollectionObject[['pool']] <- self$`pool`$toJSON()
      }
      if (!is.null(self$`devices`)) {
        PoolCollectionObject[['devices']] <- self$`devices`$toJSON()
      }

      PoolCollectionObject
    },
    fromJSON = function(PoolCollectionJson) {
      PoolCollectionObject <- jsonlite::fromJSON(PoolCollectionJson)
      if (!is.null(PoolCollectionObject$`pool`)) {
        poolObject <- DevicePoolModel$new()
        poolObject$fromJSON(jsonlite::toJSON(PoolCollectionObject$pool, auto_unbox = TRUE))
        self$`pool` <- poolObject
      }
      if (!is.null(PoolCollectionObject$`devices`)) {
        devicesObject <- PoolCollectionDevices$new()
        devicesObject$fromJSON(jsonlite::toJSON(PoolCollectionObject$devices, auto_unbox = TRUE))
        self$`devices` <- devicesObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "pool": %s,
           "devices": %s
        }',
        self$`pool`$toJSON(),
        self$`devices`$toJSON()
      )
    },
    fromJSONString = function(PoolCollectionJson) {
      PoolCollectionObject <- jsonlite::fromJSON(PoolCollectionJson)
      DevicePoolModelObject <- DevicePoolModel$new()
      self$`pool` <- DevicePoolModelObject$fromJSON(jsonlite::toJSON(PoolCollectionObject$pool, auto_unbox = TRUE))
      PoolCollectionDevicesObject <- PoolCollectionDevices$new()
      self$`devices` <- PoolCollectionDevicesObject$fromJSON(jsonlite::toJSON(PoolCollectionObject$devices, auto_unbox = TRUE))
    }
  )
)
