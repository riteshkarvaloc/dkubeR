# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ClusterDetailsNodegroups Class
#'
#' @field node_group 
#' @field nodes 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClusterDetailsNodegroups <- R6::R6Class(
  'ClusterDetailsNodegroups',
  public = list(
    `node_group` = NULL,
    `nodes` = NULL,
    initialize = function(`node_group`, `nodes`){
      if (!missing(`node_group`)) {
        stopifnot(R6::is.R6(`node_group`))
        self$`node_group` <- `node_group`
      }
      if (!missing(`nodes`)) {
        stopifnot(is.list(`nodes`), length(`nodes`) != 0)
        lapply(`nodes`, function(x) stopifnot(R6::is.R6(x)))
        self$`nodes` <- `nodes`
      }
    },
    toJSON = function() {
      ClusterDetailsNodegroupsObject <- list()
      if (!is.null(self$`node_group`)) {
        ClusterDetailsNodegroupsObject[['node_group']] <- self$`node_group`$toJSON()
      }
      if (!is.null(self$`nodes`)) {
        ClusterDetailsNodegroupsObject[['nodes']] <- lapply(self$`nodes`, function(x) x$toJSON())
      }

      ClusterDetailsNodegroupsObject
    },
    fromJSON = function(ClusterDetailsNodegroupsJson) {
      ClusterDetailsNodegroupsObject <- jsonlite::fromJSON(ClusterDetailsNodegroupsJson)
      if (!is.null(ClusterDetailsNodegroupsObject$`node_group`)) {
        node_groupObject <- NodeGroup$new()
        node_groupObject$fromJSON(jsonlite::toJSON(ClusterDetailsNodegroupsObject$node_group, auto_unbox = TRUE))
        self$`node_group` <- node_groupObject
      }
      if (!is.null(ClusterDetailsNodegroupsObject$`nodes`)) {
        self$`nodes` <- lapply(ClusterDetailsNodegroupsObject$`nodes`, function(x) {
          nodesObject <- NodeModel$new()
          nodesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          nodesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "node_group": %s,
           "nodes": [%s]
        }',
        self$`node_group`$toJSON(),
        lapply(self$`nodes`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(ClusterDetailsNodegroupsJson) {
      ClusterDetailsNodegroupsObject <- jsonlite::fromJSON(ClusterDetailsNodegroupsJson)
      NodeGroupObject <- NodeGroup$new()
      self$`node_group` <- NodeGroupObject$fromJSON(jsonlite::toJSON(ClusterDetailsNodegroupsObject$node_group, auto_unbox = TRUE))
      self$`nodes` <- lapply(ClusterDetailsNodegroupsObject$`nodes`, function(x) NodeModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)