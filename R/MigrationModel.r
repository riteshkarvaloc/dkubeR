# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MigrationModel Class
#'
#' @field version 
#' @field name 
#' @field UUID 
#' @field remote_UUID 
#' @field User 
#' @field triggering_point 
#' @field location 
#' @field remote 
#' @field progress 
#' @field status 
#' @field time_stamp 
#' @field jobs 
#' @field job_refs 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MigrationModel <- R6::R6Class(
  'MigrationModel',
  public = list(
    `version` = NULL,
    `name` = NULL,
    `UUID` = NULL,
    `remote_UUID` = NULL,
    `User` = NULL,
    `triggering_point` = NULL,
    `location` = NULL,
    `remote` = NULL,
    `progress` = NULL,
    `status` = NULL,
    `time_stamp` = NULL,
    `jobs` = NULL,
    `job_refs` = NULL,
    initialize = function(`version`, `name`, `UUID`, `remote_UUID`, `User`, `triggering_point`, `location`, `remote`, `progress`, `status`, `time_stamp`, `jobs`, `job_refs`){
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`UUID`)) {
        stopifnot(is.character(`UUID`), length(`UUID`) == 1)
        self$`UUID` <- `UUID`
      }
      if (!missing(`remote_UUID`)) {
        stopifnot(is.character(`remote_UUID`), length(`remote_UUID`) == 1)
        self$`remote_UUID` <- `remote_UUID`
      }
      if (!missing(`User`)) {
        stopifnot(is.character(`User`), length(`User`) == 1)
        self$`User` <- `User`
      }
      if (!missing(`triggering_point`)) {
        stopifnot(is.character(`triggering_point`), length(`triggering_point`) == 1)
        self$`triggering_point` <- `triggering_point`
      }
      if (!missing(`location`)) {
        stopifnot(is.character(`location`), length(`location`) == 1)
        self$`location` <- `location`
      }
      if (!missing(`remote`)) {
        stopifnot(R6::is.R6(`remote`))
        self$`remote` <- `remote`
      }
      if (!missing(`progress`)) {
        stopifnot(is.numeric(`progress`), length(`progress`) == 1)
        self$`progress` <- `progress`
      }
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`time_stamp`)) {
        stopifnot(is.character(`time_stamp`), length(`time_stamp`) == 1)
        self$`time_stamp` <- `time_stamp`
      }
      if (!missing(`jobs`)) {
        stopifnot(is.list(`jobs`), length(`jobs`) != 0)
        lapply(`jobs`, function(x) stopifnot(R6::is.R6(x)))
        self$`jobs` <- `jobs`
      }
      if (!missing(`job_refs`)) {
        stopifnot(is.list(`job_refs`), length(`job_refs`) != 0)
        lapply(`job_refs`, function(x) stopifnot(is.character(x)))
        self$`job_refs` <- `job_refs`
      }
    },
    toJSON = function() {
      MigrationModelObject <- list()
      if (!is.null(self$`version`)) {
        MigrationModelObject[['version']] <- self$`version`
      }
      if (!is.null(self$`name`)) {
        MigrationModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`UUID`)) {
        MigrationModelObject[['UUID']] <- self$`UUID`
      }
      if (!is.null(self$`remote_UUID`)) {
        MigrationModelObject[['remote_UUID']] <- self$`remote_UUID`
      }
      if (!is.null(self$`User`)) {
        MigrationModelObject[['User']] <- self$`User`
      }
      if (!is.null(self$`triggering_point`)) {
        MigrationModelObject[['triggering_point']] <- self$`triggering_point`
      }
      if (!is.null(self$`location`)) {
        MigrationModelObject[['location']] <- self$`location`
      }
      if (!is.null(self$`remote`)) {
        MigrationModelObject[['remote']] <- self$`remote`$toJSON()
      }
      if (!is.null(self$`progress`)) {
        MigrationModelObject[['progress']] <- self$`progress`
      }
      if (!is.null(self$`status`)) {
        MigrationModelObject[['status']] <- self$`status`$toJSON()
      }
      if (!is.null(self$`time_stamp`)) {
        MigrationModelObject[['time_stamp']] <- self$`time_stamp`
      }
      if (!is.null(self$`jobs`)) {
        MigrationModelObject[['jobs']] <- lapply(self$`jobs`, function(x) x$toJSON())
      }
      if (!is.null(self$`job_refs`)) {
        MigrationModelObject[['job_refs']] <- self$`job_refs`
      }

      MigrationModelObject
    },
    fromJSON = function(MigrationModelJson) {
      MigrationModelObject <- jsonlite::fromJSON(MigrationModelJson)
      if (!is.null(MigrationModelObject$`version`)) {
        self$`version` <- MigrationModelObject$`version`
      }
      if (!is.null(MigrationModelObject$`name`)) {
        self$`name` <- MigrationModelObject$`name`
      }
      if (!is.null(MigrationModelObject$`UUID`)) {
        self$`UUID` <- MigrationModelObject$`UUID`
      }
      if (!is.null(MigrationModelObject$`remote_UUID`)) {
        self$`remote_UUID` <- MigrationModelObject$`remote_UUID`
      }
      if (!is.null(MigrationModelObject$`User`)) {
        self$`User` <- MigrationModelObject$`User`
      }
      if (!is.null(MigrationModelObject$`triggering_point`)) {
        self$`triggering_point` <- MigrationModelObject$`triggering_point`
      }
      if (!is.null(MigrationModelObject$`location`)) {
        self$`location` <- MigrationModelObject$`location`
      }
      if (!is.null(MigrationModelObject$`remote`)) {
        remoteObject <- MigrationModelRemote$new()
        remoteObject$fromJSON(jsonlite::toJSON(MigrationModelObject$remote, auto_unbox = TRUE))
        self$`remote` <- remoteObject
      }
      if (!is.null(MigrationModelObject$`progress`)) {
        self$`progress` <- MigrationModelObject$`progress`
      }
      if (!is.null(MigrationModelObject$`status`)) {
        statusObject <- MigrationStatusModel$new()
        statusObject$fromJSON(jsonlite::toJSON(MigrationModelObject$status, auto_unbox = TRUE))
        self$`status` <- statusObject
      }
      if (!is.null(MigrationModelObject$`time_stamp`)) {
        self$`time_stamp` <- MigrationModelObject$`time_stamp`
      }
      if (!is.null(MigrationModelObject$`jobs`)) {
        self$`jobs` <- lapply(MigrationModelObject$`jobs`, function(x) {
          jobsObject <- MigrationJobEntry$new()
          jobsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          jobsObject
        })
      }
      if (!is.null(MigrationModelObject$`job_refs`)) {
        self$`job_refs` <- MigrationModelObject$`job_refs`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "version": %s,
           "name": %s,
           "UUID": %s,
           "remote_UUID": %s,
           "User": %s,
           "triggering_point": %s,
           "location": %s,
           "remote": %s,
           "progress": %d,
           "status": %s,
           "time_stamp": %s,
           "jobs": [%s],
           "job_refs": [%s]
        }',
        self$`version`,
        self$`name`,
        self$`UUID`,
        self$`remote_UUID`,
        self$`User`,
        self$`triggering_point`,
        self$`location`,
        self$`remote`$toJSON(),
        self$`progress`,
        self$`status`$toJSON(),
        self$`time_stamp`,
        lapply(self$`jobs`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`job_refs`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(MigrationModelJson) {
      MigrationModelObject <- jsonlite::fromJSON(MigrationModelJson)
      self$`version` <- MigrationModelObject$`version`
      self$`name` <- MigrationModelObject$`name`
      self$`UUID` <- MigrationModelObject$`UUID`
      self$`remote_UUID` <- MigrationModelObject$`remote_UUID`
      self$`User` <- MigrationModelObject$`User`
      self$`triggering_point` <- MigrationModelObject$`triggering_point`
      self$`location` <- MigrationModelObject$`location`
      MigrationModelRemoteObject <- MigrationModelRemote$new()
      self$`remote` <- MigrationModelRemoteObject$fromJSON(jsonlite::toJSON(MigrationModelObject$remote, auto_unbox = TRUE))
      self$`progress` <- MigrationModelObject$`progress`
      MigrationStatusModelObject <- MigrationStatusModel$new()
      self$`status` <- MigrationStatusModelObject$fromJSON(jsonlite::toJSON(MigrationModelObject$status, auto_unbox = TRUE))
      self$`time_stamp` <- MigrationModelObject$`time_stamp`
      self$`jobs` <- lapply(MigrationModelObject$`jobs`, function(x) MigrationJobEntry$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`job_refs` <- MigrationModelObject$`job_refs`
    }
  )
)