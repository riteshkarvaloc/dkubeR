# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MigrationJobModel Class
#'
#' @field name 
#' @field class 
#' @field UUID 
#' @field remote_UUID 
#' @field src_state 
#' @field dkubeJobUUIDS 
#' @field migrationUUID 
#' @field status 
#' @field progress 
#' @field datums 
#' @field details 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MigrationJobModel <- R6::R6Class(
  'MigrationJobModel',
  public = list(
    `name` = NULL,
    `class` = NULL,
    `UUID` = NULL,
    `remote_UUID` = NULL,
    `src_state` = NULL,
    `dkubeJobUUIDS` = NULL,
    `migrationUUID` = NULL,
    `status` = NULL,
    `progress` = NULL,
    `datums` = NULL,
    `details` = NULL,
    initialize = function(`name`, `class`, `UUID`, `remote_UUID`, `src_state`, `dkubeJobUUIDS`, `migrationUUID`, `status`, `progress`, `datums`, `details`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`class`)) {
        stopifnot(is.character(`class`), length(`class`) == 1)
        self$`class` <- `class`
      }
      if (!missing(`UUID`)) {
        stopifnot(is.character(`UUID`), length(`UUID`) == 1)
        self$`UUID` <- `UUID`
      }
      if (!missing(`remote_UUID`)) {
        stopifnot(is.character(`remote_UUID`), length(`remote_UUID`) == 1)
        self$`remote_UUID` <- `remote_UUID`
      }
      if (!missing(`src_state`)) {
        stopifnot(is.character(`src_state`), length(`src_state`) == 1)
        self$`src_state` <- `src_state`
      }
      if (!missing(`dkubeJobUUIDS`)) {
        stopifnot(R6::is.R6(`dkubeJobUUIDS`))
        self$`dkubeJobUUIDS` <- `dkubeJobUUIDS`
      }
      if (!missing(`migrationUUID`)) {
        stopifnot(is.character(`migrationUUID`), length(`migrationUUID`) == 1)
        self$`migrationUUID` <- `migrationUUID`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`progress`)) {
        stopifnot(is.numeric(`progress`), length(`progress`) == 1)
        self$`progress` <- `progress`
      }
      if (!missing(`datums`)) {
        stopifnot(is.list(`datums`), length(`datums`) != 0)
        lapply(`datums`, function(x) stopifnot(is.character(x)))
        self$`datums` <- `datums`
      }
      if (!missing(`details`)) {
        stopifnot(is.character(`details`), length(`details`) == 1)
        self$`details` <- `details`
      }
    },
    toJSON = function() {
      MigrationJobModelObject <- list()
      if (!is.null(self$`name`)) {
        MigrationJobModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`class`)) {
        MigrationJobModelObject[['class']] <- self$`class`
      }
      if (!is.null(self$`UUID`)) {
        MigrationJobModelObject[['UUID']] <- self$`UUID`
      }
      if (!is.null(self$`remote_UUID`)) {
        MigrationJobModelObject[['remote_UUID']] <- self$`remote_UUID`
      }
      if (!is.null(self$`src_state`)) {
        MigrationJobModelObject[['src_state']] <- self$`src_state`
      }
      if (!is.null(self$`dkubeJobUUIDS`)) {
        MigrationJobModelObject[['dkubeJobUUIDS']] <- self$`dkubeJobUUIDS`$toJSON()
      }
      if (!is.null(self$`migrationUUID`)) {
        MigrationJobModelObject[['migrationUUID']] <- self$`migrationUUID`
      }
      if (!is.null(self$`status`)) {
        MigrationJobModelObject[['status']] <- self$`status`
      }
      if (!is.null(self$`progress`)) {
        MigrationJobModelObject[['progress']] <- self$`progress`
      }
      if (!is.null(self$`datums`)) {
        MigrationJobModelObject[['datums']] <- self$`datums`
      }
      if (!is.null(self$`details`)) {
        MigrationJobModelObject[['details']] <- self$`details`
      }

      MigrationJobModelObject
    },
    fromJSON = function(MigrationJobModelJson) {
      MigrationJobModelObject <- jsonlite::fromJSON(MigrationJobModelJson)
      if (!is.null(MigrationJobModelObject$`name`)) {
        self$`name` <- MigrationJobModelObject$`name`
      }
      if (!is.null(MigrationJobModelObject$`class`)) {
        self$`class` <- MigrationJobModelObject$`class`
      }
      if (!is.null(MigrationJobModelObject$`UUID`)) {
        self$`UUID` <- MigrationJobModelObject$`UUID`
      }
      if (!is.null(MigrationJobModelObject$`remote_UUID`)) {
        self$`remote_UUID` <- MigrationJobModelObject$`remote_UUID`
      }
      if (!is.null(MigrationJobModelObject$`src_state`)) {
        self$`src_state` <- MigrationJobModelObject$`src_state`
      }
      if (!is.null(MigrationJobModelObject$`dkubeJobUUIDS`)) {
        dkubeJobUUIDSObject <- MigrationObjUUID$new()
        dkubeJobUUIDSObject$fromJSON(jsonlite::toJSON(MigrationJobModelObject$dkubeJobUUIDS, auto_unbox = TRUE))
        self$`dkubeJobUUIDS` <- dkubeJobUUIDSObject
      }
      if (!is.null(MigrationJobModelObject$`migrationUUID`)) {
        self$`migrationUUID` <- MigrationJobModelObject$`migrationUUID`
      }
      if (!is.null(MigrationJobModelObject$`status`)) {
        self$`status` <- MigrationJobModelObject$`status`
      }
      if (!is.null(MigrationJobModelObject$`progress`)) {
        self$`progress` <- MigrationJobModelObject$`progress`
      }
      if (!is.null(MigrationJobModelObject$`datums`)) {
        self$`datums` <- MigrationJobModelObject$`datums`
      }
      if (!is.null(MigrationJobModelObject$`details`)) {
        self$`details` <- MigrationJobModelObject$`details`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "class": %s,
           "UUID": %s,
           "remote_UUID": %s,
           "src_state": %s,
           "dkubeJobUUIDS": %s,
           "migrationUUID": %s,
           "status": %s,
           "progress": %d,
           "datums": [%s],
           "details": %s
        }',
        self$`name`,
        self$`class`,
        self$`UUID`,
        self$`remote_UUID`,
        self$`src_state`,
        self$`dkubeJobUUIDS`$toJSON(),
        self$`migrationUUID`,
        self$`status`,
        self$`progress`,
        lapply(self$`datums`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`details`
      )
    },
    fromJSONString = function(MigrationJobModelJson) {
      MigrationJobModelObject <- jsonlite::fromJSON(MigrationJobModelJson)
      self$`name` <- MigrationJobModelObject$`name`
      self$`class` <- MigrationJobModelObject$`class`
      self$`UUID` <- MigrationJobModelObject$`UUID`
      self$`remote_UUID` <- MigrationJobModelObject$`remote_UUID`
      self$`src_state` <- MigrationJobModelObject$`src_state`
      MigrationObjUUIDObject <- MigrationObjUUID$new()
      self$`dkubeJobUUIDS` <- MigrationObjUUIDObject$fromJSON(jsonlite::toJSON(MigrationJobModelObject$dkubeJobUUIDS, auto_unbox = TRUE))
      self$`migrationUUID` <- MigrationJobModelObject$`migrationUUID`
      self$`status` <- MigrationJobModelObject$`status`
      self$`progress` <- MigrationJobModelObject$`progress`
      self$`datums` <- MigrationJobModelObject$`datums`
      self$`details` <- MigrationJobModelObject$`details`
    }
  )
)