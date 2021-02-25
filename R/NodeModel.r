# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NodeModel Class
#'
#' @field version 
#' @field name 
#' @field network 
#' @field software 
#' @field capacity 
#' @field accelerator 
#' @field dkube 
#' @field uptime 
#' @field generated 
#' @field cluster_name 
#' @field blob 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NodeModel <- R6::R6Class(
  'NodeModel',
  public = list(
    `version` = NULL,
    `name` = NULL,
    `network` = NULL,
    `software` = NULL,
    `capacity` = NULL,
    `accelerator` = NULL,
    `dkube` = NULL,
    `uptime` = NULL,
    `generated` = NULL,
    `cluster_name` = NULL,
    `blob` = NULL,
    initialize = function(`version`, `name`, `network`, `software`, `capacity`, `accelerator`, `dkube`, `uptime`, `generated`, `cluster_name`, `blob`){
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`network`)) {
        stopifnot(R6::is.R6(`network`))
        self$`network` <- `network`
      }
      if (!missing(`software`)) {
        stopifnot(R6::is.R6(`software`))
        self$`software` <- `software`
      }
      if (!missing(`capacity`)) {
        stopifnot(R6::is.R6(`capacity`))
        self$`capacity` <- `capacity`
      }
      if (!missing(`accelerator`)) {
        stopifnot(R6::is.R6(`accelerator`))
        self$`accelerator` <- `accelerator`
      }
      if (!missing(`dkube`)) {
        stopifnot(R6::is.R6(`dkube`))
        self$`dkube` <- `dkube`
      }
      if (!missing(`uptime`)) {
        stopifnot(is.character(`uptime`), length(`uptime`) == 1)
        self$`uptime` <- `uptime`
      }
      if (!missing(`generated`)) {
        stopifnot(R6::is.R6(`generated`))
        self$`generated` <- `generated`
      }
      if (!missing(`cluster_name`)) {
        stopifnot(is.character(`cluster_name`), length(`cluster_name`) == 1)
        self$`cluster_name` <- `cluster_name`
      }
      if (!missing(`blob`)) {
        stopifnot(is.character(`blob`), length(`blob`) == 1)
        self$`blob` <- `blob`
      }
    },
    toJSON = function() {
      NodeModelObject <- list()
      if (!is.null(self$`version`)) {
        NodeModelObject[['version']] <- self$`version`
      }
      if (!is.null(self$`name`)) {
        NodeModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`network`)) {
        NodeModelObject[['network']] <- self$`network`$toJSON()
      }
      if (!is.null(self$`software`)) {
        NodeModelObject[['software']] <- self$`software`$toJSON()
      }
      if (!is.null(self$`capacity`)) {
        NodeModelObject[['capacity']] <- self$`capacity`$toJSON()
      }
      if (!is.null(self$`accelerator`)) {
        NodeModelObject[['accelerator']] <- self$`accelerator`$toJSON()
      }
      if (!is.null(self$`dkube`)) {
        NodeModelObject[['dkube']] <- self$`dkube`$toJSON()
      }
      if (!is.null(self$`uptime`)) {
        NodeModelObject[['uptime']] <- self$`uptime`
      }
      if (!is.null(self$`generated`)) {
        NodeModelObject[['generated']] <- self$`generated`$toJSON()
      }
      if (!is.null(self$`cluster_name`)) {
        NodeModelObject[['cluster_name']] <- self$`cluster_name`
      }
      if (!is.null(self$`blob`)) {
        NodeModelObject[['blob']] <- self$`blob`
      }

      NodeModelObject
    },
    fromJSON = function(NodeModelJson) {
      NodeModelObject <- jsonlite::fromJSON(NodeModelJson)
      if (!is.null(NodeModelObject$`version`)) {
        self$`version` <- NodeModelObject$`version`
      }
      if (!is.null(NodeModelObject$`name`)) {
        self$`name` <- NodeModelObject$`name`
      }
      if (!is.null(NodeModelObject$`network`)) {
        networkObject <- NodeModelNetwork$new()
        networkObject$fromJSON(jsonlite::toJSON(NodeModelObject$network, auto_unbox = TRUE))
        self$`network` <- networkObject
      }
      if (!is.null(NodeModelObject$`software`)) {
        softwareObject <- NodeModelSoftware$new()
        softwareObject$fromJSON(jsonlite::toJSON(NodeModelObject$software, auto_unbox = TRUE))
        self$`software` <- softwareObject
      }
      if (!is.null(NodeModelObject$`capacity`)) {
        capacityObject <- NodeModelCapacity$new()
        capacityObject$fromJSON(jsonlite::toJSON(NodeModelObject$capacity, auto_unbox = TRUE))
        self$`capacity` <- capacityObject
      }
      if (!is.null(NodeModelObject$`accelerator`)) {
        acceleratorObject <- NodeModelAccelerator$new()
        acceleratorObject$fromJSON(jsonlite::toJSON(NodeModelObject$accelerator, auto_unbox = TRUE))
        self$`accelerator` <- acceleratorObject
      }
      if (!is.null(NodeModelObject$`dkube`)) {
        dkubeObject <- NodeModelDkube$new()
        dkubeObject$fromJSON(jsonlite::toJSON(NodeModelObject$dkube, auto_unbox = TRUE))
        self$`dkube` <- dkubeObject
      }
      if (!is.null(NodeModelObject$`uptime`)) {
        self$`uptime` <- NodeModelObject$`uptime`
      }
      if (!is.null(NodeModelObject$`generated`)) {
        generatedObject <- ModelCatalogItemGenerated$new()
        generatedObject$fromJSON(jsonlite::toJSON(NodeModelObject$generated, auto_unbox = TRUE))
        self$`generated` <- generatedObject
      }
      if (!is.null(NodeModelObject$`cluster_name`)) {
        self$`cluster_name` <- NodeModelObject$`cluster_name`
      }
      if (!is.null(NodeModelObject$`blob`)) {
        self$`blob` <- NodeModelObject$`blob`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "version": %s,
           "name": %s,
           "network": %s,
           "software": %s,
           "capacity": %s,
           "accelerator": %s,
           "dkube": %s,
           "uptime": %s,
           "generated": %s,
           "cluster_name": %s,
           "blob": %s
        }',
        self$`version`,
        self$`name`,
        self$`network`$toJSON(),
        self$`software`$toJSON(),
        self$`capacity`$toJSON(),
        self$`accelerator`$toJSON(),
        self$`dkube`$toJSON(),
        self$`uptime`,
        self$`generated`$toJSON(),
        self$`cluster_name`,
        self$`blob`
      )
    },
    fromJSONString = function(NodeModelJson) {
      NodeModelObject <- jsonlite::fromJSON(NodeModelJson)
      self$`version` <- NodeModelObject$`version`
      self$`name` <- NodeModelObject$`name`
      NodeModelNetworkObject <- NodeModelNetwork$new()
      self$`network` <- NodeModelNetworkObject$fromJSON(jsonlite::toJSON(NodeModelObject$network, auto_unbox = TRUE))
      NodeModelSoftwareObject <- NodeModelSoftware$new()
      self$`software` <- NodeModelSoftwareObject$fromJSON(jsonlite::toJSON(NodeModelObject$software, auto_unbox = TRUE))
      NodeModelCapacityObject <- NodeModelCapacity$new()
      self$`capacity` <- NodeModelCapacityObject$fromJSON(jsonlite::toJSON(NodeModelObject$capacity, auto_unbox = TRUE))
      NodeModelAcceleratorObject <- NodeModelAccelerator$new()
      self$`accelerator` <- NodeModelAcceleratorObject$fromJSON(jsonlite::toJSON(NodeModelObject$accelerator, auto_unbox = TRUE))
      NodeModelDkubeObject <- NodeModelDkube$new()
      self$`dkube` <- NodeModelDkubeObject$fromJSON(jsonlite::toJSON(NodeModelObject$dkube, auto_unbox = TRUE))
      self$`uptime` <- NodeModelObject$`uptime`
      ModelCatalogItemGeneratedObject <- ModelCatalogItemGenerated$new()
      self$`generated` <- ModelCatalogItemGeneratedObject$fromJSON(jsonlite::toJSON(NodeModelObject$generated, auto_unbox = TRUE))
      self$`cluster_name` <- NodeModelObject$`cluster_name`
      self$`blob` <- NodeModelObject$`blob`
    }
  )
)
