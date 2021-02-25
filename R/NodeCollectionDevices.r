# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NodeCollectionDevices Class
#'
#' @field gpus 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NodeCollectionDevices <- R6::R6Class(
  'NodeCollectionDevices',
  public = list(
    `gpus` = NULL,
    initialize = function(`gpus`){
      if (!missing(`gpus`)) {
        stopifnot(R6::is.R6(`gpus`))
        self$`gpus` <- `gpus`
      }
    },
    toJSON = function() {
      NodeCollectionDevicesObject <- list()
      if (!is.null(self$`gpus`)) {
        NodeCollectionDevicesObject[['gpus']] <- self$`gpus`$toJSON()
      }

      NodeCollectionDevicesObject
    },
    fromJSON = function(NodeCollectionDevicesJson) {
      NodeCollectionDevicesObject <- jsonlite::fromJSON(NodeCollectionDevicesJson)
      if (!is.null(NodeCollectionDevicesObject$`gpus`)) {
        gpusObject <- NodeCollectionDevicesGpus$new()
        gpusObject$fromJSON(jsonlite::toJSON(NodeCollectionDevicesObject$gpus, auto_unbox = TRUE))
        self$`gpus` <- gpusObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "gpus": %s
        }',
        self$`gpus`$toJSON()
      )
    },
    fromJSONString = function(NodeCollectionDevicesJson) {
      NodeCollectionDevicesObject <- jsonlite::fromJSON(NodeCollectionDevicesJson)
      NodeCollectionDevicesGpusObject <- NodeCollectionDevicesGpus$new()
      self$`gpus` <- NodeCollectionDevicesGpusObject$fromJSON(jsonlite::toJSON(NodeCollectionDevicesObject$gpus, auto_unbox = TRUE))
    }
  )
)
