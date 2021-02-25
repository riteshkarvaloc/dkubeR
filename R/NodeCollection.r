# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NodeCollection Class
#'
#' @field node 
#' @field devices 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NodeCollection <- R6::R6Class(
  'NodeCollection',
  public = list(
    `node` = NULL,
    `devices` = NULL,
    initialize = function(`node`, `devices`){
      if (!missing(`node`)) {
        stopifnot(R6::is.R6(`node`))
        self$`node` <- `node`
      }
      if (!missing(`devices`)) {
        stopifnot(R6::is.R6(`devices`))
        self$`devices` <- `devices`
      }
    },
    toJSON = function() {
      NodeCollectionObject <- list()
      if (!is.null(self$`node`)) {
        NodeCollectionObject[['node']] <- self$`node`$toJSON()
      }
      if (!is.null(self$`devices`)) {
        NodeCollectionObject[['devices']] <- self$`devices`$toJSON()
      }

      NodeCollectionObject
    },
    fromJSON = function(NodeCollectionJson) {
      NodeCollectionObject <- jsonlite::fromJSON(NodeCollectionJson)
      if (!is.null(NodeCollectionObject$`node`)) {
        nodeObject <- NodeModel$new()
        nodeObject$fromJSON(jsonlite::toJSON(NodeCollectionObject$node, auto_unbox = TRUE))
        self$`node` <- nodeObject
      }
      if (!is.null(NodeCollectionObject$`devices`)) {
        devicesObject <- NodeCollectionDevices$new()
        devicesObject$fromJSON(jsonlite::toJSON(NodeCollectionObject$devices, auto_unbox = TRUE))
        self$`devices` <- devicesObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "node": %s,
           "devices": %s
        }',
        self$`node`$toJSON(),
        self$`devices`$toJSON()
      )
    },
    fromJSONString = function(NodeCollectionJson) {
      NodeCollectionObject <- jsonlite::fromJSON(NodeCollectionJson)
      NodeModelObject <- NodeModel$new()
      self$`node` <- NodeModelObject$fromJSON(jsonlite::toJSON(NodeCollectionObject$node, auto_unbox = TRUE))
      NodeCollectionDevicesObject <- NodeCollectionDevices$new()
      self$`devices` <- NodeCollectionDevicesObject$fromJSON(jsonlite::toJSON(NodeCollectionObject$devices, auto_unbox = TRUE))
    }
  )
)
