# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DataCopy Class
#'
#' @field src_path 
#' @field name 
#' @field Job_UUID 
#' @field version 
#' @field target_path 
#' @field status 
#' @field UUID 
#' @field user 
#' @field progress 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataCopy <- R6::R6Class(
  'DataCopy',
  public = list(
    `src_path` = NULL,
    `name` = NULL,
    `Job_UUID` = NULL,
    `version` = NULL,
    `target_path` = NULL,
    `status` = NULL,
    `UUID` = NULL,
    `user` = NULL,
    `progress` = NULL,
    initialize = function(`src_path`, `name`, `Job_UUID`, `version`, `target_path`, `status`, `UUID`, `user`, `progress`){
      if (!missing(`src_path`)) {
        stopifnot(is.character(`src_path`), length(`src_path`) == 1)
        self$`src_path` <- `src_path`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`Job_UUID`)) {
        stopifnot(is.character(`Job_UUID`), length(`Job_UUID`) == 1)
        self$`Job_UUID` <- `Job_UUID`
      }
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
      if (!missing(`target_path`)) {
        stopifnot(is.character(`target_path`), length(`target_path`) == 1)
        self$`target_path` <- `target_path`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`UUID`)) {
        stopifnot(is.character(`UUID`), length(`UUID`) == 1)
        self$`UUID` <- `UUID`
      }
      if (!missing(`user`)) {
        stopifnot(is.character(`user`), length(`user`) == 1)
        self$`user` <- `user`
      }
      if (!missing(`progress`)) {
        stopifnot(is.numeric(`progress`), length(`progress`) == 1)
        self$`progress` <- `progress`
      }
    },
    toJSON = function() {
      DataCopyObject <- list()
      if (!is.null(self$`src_path`)) {
        DataCopyObject[['src_path']] <- self$`src_path`
      }
      if (!is.null(self$`name`)) {
        DataCopyObject[['name']] <- self$`name`
      }
      if (!is.null(self$`Job_UUID`)) {
        DataCopyObject[['Job_UUID']] <- self$`Job_UUID`
      }
      if (!is.null(self$`version`)) {
        DataCopyObject[['version']] <- self$`version`
      }
      if (!is.null(self$`target_path`)) {
        DataCopyObject[['target_path']] <- self$`target_path`
      }
      if (!is.null(self$`status`)) {
        DataCopyObject[['status']] <- self$`status`
      }
      if (!is.null(self$`UUID`)) {
        DataCopyObject[['UUID']] <- self$`UUID`
      }
      if (!is.null(self$`user`)) {
        DataCopyObject[['user']] <- self$`user`
      }
      if (!is.null(self$`progress`)) {
        DataCopyObject[['progress']] <- self$`progress`
      }

      DataCopyObject
    },
    fromJSON = function(DataCopyJson) {
      DataCopyObject <- jsonlite::fromJSON(DataCopyJson)
      if (!is.null(DataCopyObject$`src_path`)) {
        self$`src_path` <- DataCopyObject$`src_path`
      }
      if (!is.null(DataCopyObject$`name`)) {
        self$`name` <- DataCopyObject$`name`
      }
      if (!is.null(DataCopyObject$`Job_UUID`)) {
        self$`Job_UUID` <- DataCopyObject$`Job_UUID`
      }
      if (!is.null(DataCopyObject$`version`)) {
        self$`version` <- DataCopyObject$`version`
      }
      if (!is.null(DataCopyObject$`target_path`)) {
        self$`target_path` <- DataCopyObject$`target_path`
      }
      if (!is.null(DataCopyObject$`status`)) {
        self$`status` <- DataCopyObject$`status`
      }
      if (!is.null(DataCopyObject$`UUID`)) {
        self$`UUID` <- DataCopyObject$`UUID`
      }
      if (!is.null(DataCopyObject$`user`)) {
        self$`user` <- DataCopyObject$`user`
      }
      if (!is.null(DataCopyObject$`progress`)) {
        self$`progress` <- DataCopyObject$`progress`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "src_path": %s,
           "name": %s,
           "Job_UUID": %s,
           "version": %s,
           "target_path": %s,
           "status": %s,
           "UUID": %s,
           "user": %s,
           "progress": %d
        }',
        self$`src_path`,
        self$`name`,
        self$`Job_UUID`,
        self$`version`,
        self$`target_path`,
        self$`status`,
        self$`UUID`,
        self$`user`,
        self$`progress`
      )
    },
    fromJSONString = function(DataCopyJson) {
      DataCopyObject <- jsonlite::fromJSON(DataCopyJson)
      self$`src_path` <- DataCopyObject$`src_path`
      self$`name` <- DataCopyObject$`name`
      self$`Job_UUID` <- DataCopyObject$`Job_UUID`
      self$`version` <- DataCopyObject$`version`
      self$`target_path` <- DataCopyObject$`target_path`
      self$`status` <- DataCopyObject$`status`
      self$`UUID` <- DataCopyObject$`UUID`
      self$`user` <- DataCopyObject$`user`
      self$`progress` <- DataCopyObject$`progress`
    }
  )
)
