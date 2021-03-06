# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' WorkerModelContainers Class
#'
#' @field uuid 
#' @field name 
#' @field status 
#' @field reason 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkerModelContainers <- R6::R6Class(
  'WorkerModelContainers',
  public = list(
    `uuid` = NULL,
    `name` = NULL,
    `status` = NULL,
    `reason` = NULL,
    initialize = function(`uuid`, `name`, `status`, `reason`){
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`reason`)) {
        stopifnot(is.character(`reason`), length(`reason`) == 1)
        self$`reason` <- `reason`
      }
    },
    toJSON = function() {
      WorkerModelContainersObject <- list()
      if (!is.null(self$`uuid`)) {
        WorkerModelContainersObject[['uuid']] <- self$`uuid`
      }
      if (!is.null(self$`name`)) {
        WorkerModelContainersObject[['name']] <- self$`name`
      }
      if (!is.null(self$`status`)) {
        WorkerModelContainersObject[['status']] <- self$`status`
      }
      if (!is.null(self$`reason`)) {
        WorkerModelContainersObject[['reason']] <- self$`reason`
      }

      WorkerModelContainersObject
    },
    fromJSON = function(WorkerModelContainersJson) {
      WorkerModelContainersObject <- jsonlite::fromJSON(WorkerModelContainersJson)
      if (!is.null(WorkerModelContainersObject$`uuid`)) {
        self$`uuid` <- WorkerModelContainersObject$`uuid`
      }
      if (!is.null(WorkerModelContainersObject$`name`)) {
        self$`name` <- WorkerModelContainersObject$`name`
      }
      if (!is.null(WorkerModelContainersObject$`status`)) {
        self$`status` <- WorkerModelContainersObject$`status`
      }
      if (!is.null(WorkerModelContainersObject$`reason`)) {
        self$`reason` <- WorkerModelContainersObject$`reason`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uuid": %s,
           "name": %s,
           "status": %s,
           "reason": %s
        }',
        self$`uuid`,
        self$`name`,
        self$`status`,
        self$`reason`
      )
    },
    fromJSONString = function(WorkerModelContainersJson) {
      WorkerModelContainersObject <- jsonlite::fromJSON(WorkerModelContainersJson)
      self$`uuid` <- WorkerModelContainersObject$`uuid`
      self$`name` <- WorkerModelContainersObject$`name`
      self$`status` <- WorkerModelContainersObject$`status`
      self$`reason` <- WorkerModelContainersObject$`reason`
    }
  )
)
