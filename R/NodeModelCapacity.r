# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NodeModelCapacity Class
#'
#' @field cpus 
#' @field memory 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NodeModelCapacity <- R6::R6Class(
  'NodeModelCapacity',
  public = list(
    `cpus` = NULL,
    `memory` = NULL,
    initialize = function(`cpus`, `memory`){
      if (!missing(`cpus`)) {
        stopifnot(R6::is.R6(`cpus`))
        self$`cpus` <- `cpus`
      }
      if (!missing(`memory`)) {
        stopifnot(is.character(`memory`), length(`memory`) == 1)
        self$`memory` <- `memory`
      }
    },
    toJSON = function() {
      NodeModelCapacityObject <- list()
      if (!is.null(self$`cpus`)) {
        NodeModelCapacityObject[['cpus']] <- self$`cpus`$toJSON()
      }
      if (!is.null(self$`memory`)) {
        NodeModelCapacityObject[['memory']] <- self$`memory`
      }

      NodeModelCapacityObject
    },
    fromJSON = function(NodeModelCapacityJson) {
      NodeModelCapacityObject <- jsonlite::fromJSON(NodeModelCapacityJson)
      if (!is.null(NodeModelCapacityObject$`cpus`)) {
        cpusObject <- CpuModel$new()
        cpusObject$fromJSON(jsonlite::toJSON(NodeModelCapacityObject$cpus, auto_unbox = TRUE))
        self$`cpus` <- cpusObject
      }
      if (!is.null(NodeModelCapacityObject$`memory`)) {
        self$`memory` <- NodeModelCapacityObject$`memory`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "cpus": %s,
           "memory": %s
        }',
        self$`cpus`$toJSON(),
        self$`memory`
      )
    },
    fromJSONString = function(NodeModelCapacityJson) {
      NodeModelCapacityObject <- jsonlite::fromJSON(NodeModelCapacityJson)
      CpuModelObject <- CpuModel$new()
      self$`cpus` <- CpuModelObject$fromJSON(jsonlite::toJSON(NodeModelCapacityObject$cpus, auto_unbox = TRUE))
      self$`memory` <- NodeModelCapacityObject$`memory`
    }
  )
)
