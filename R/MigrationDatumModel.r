# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MigrationDatumModel Class
#'
#' @field UUID 
#' @field remote_UUID 
#' @field dkubeDatumUUIDs 
#' @field migrationUUID 
#' @field migrationJobUUID 
#' @field duplicate 
#' @field duplicate_ref 
#' @field datum_type 
#' @field bucket 
#' @field status 
#' @field progress 
#' @field details 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MigrationDatumModel <- R6::R6Class(
  'MigrationDatumModel',
  public = list(
    `UUID` = NULL,
    `remote_UUID` = NULL,
    `dkubeDatumUUIDs` = NULL,
    `migrationUUID` = NULL,
    `migrationJobUUID` = NULL,
    `duplicate` = NULL,
    `duplicate_ref` = NULL,
    `datum_type` = NULL,
    `bucket` = NULL,
    `status` = NULL,
    `progress` = NULL,
    `details` = NULL,
    initialize = function(`UUID`, `remote_UUID`, `dkubeDatumUUIDs`, `migrationUUID`, `migrationJobUUID`, `duplicate`, `duplicate_ref`, `datum_type`, `bucket`, `status`, `progress`, `details`){
      if (!missing(`UUID`)) {
        stopifnot(is.character(`UUID`), length(`UUID`) == 1)
        self$`UUID` <- `UUID`
      }
      if (!missing(`remote_UUID`)) {
        stopifnot(is.character(`remote_UUID`), length(`remote_UUID`) == 1)
        self$`remote_UUID` <- `remote_UUID`
      }
      if (!missing(`dkubeDatumUUIDs`)) {
        stopifnot(R6::is.R6(`dkubeDatumUUIDs`))
        self$`dkubeDatumUUIDs` <- `dkubeDatumUUIDs`
      }
      if (!missing(`migrationUUID`)) {
        stopifnot(is.character(`migrationUUID`), length(`migrationUUID`) == 1)
        self$`migrationUUID` <- `migrationUUID`
      }
      if (!missing(`migrationJobUUID`)) {
        stopifnot(is.character(`migrationJobUUID`), length(`migrationJobUUID`) == 1)
        self$`migrationJobUUID` <- `migrationJobUUID`
      }
      if (!missing(`duplicate`)) {
        self$`duplicate` <- `duplicate`
      }
      if (!missing(`duplicate_ref`)) {
        stopifnot(is.character(`duplicate_ref`), length(`duplicate_ref`) == 1)
        self$`duplicate_ref` <- `duplicate_ref`
      }
      if (!missing(`datum_type`)) {
        stopifnot(is.character(`datum_type`), length(`datum_type`) == 1)
        self$`datum_type` <- `datum_type`
      }
      if (!missing(`bucket`)) {
        stopifnot(is.character(`bucket`), length(`bucket`) == 1)
        self$`bucket` <- `bucket`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`progress`)) {
        stopifnot(is.numeric(`progress`), length(`progress`) == 1)
        self$`progress` <- `progress`
      }
      if (!missing(`details`)) {
        stopifnot(is.character(`details`), length(`details`) == 1)
        self$`details` <- `details`
      }
    },
    toJSON = function() {
      MigrationDatumModelObject <- list()
      if (!is.null(self$`UUID`)) {
        MigrationDatumModelObject[['UUID']] <- self$`UUID`
      }
      if (!is.null(self$`remote_UUID`)) {
        MigrationDatumModelObject[['remote_UUID']] <- self$`remote_UUID`
      }
      if (!is.null(self$`dkubeDatumUUIDs`)) {
        MigrationDatumModelObject[['dkubeDatumUUIDs']] <- self$`dkubeDatumUUIDs`$toJSON()
      }
      if (!is.null(self$`migrationUUID`)) {
        MigrationDatumModelObject[['migrationUUID']] <- self$`migrationUUID`
      }
      if (!is.null(self$`migrationJobUUID`)) {
        MigrationDatumModelObject[['migrationJobUUID']] <- self$`migrationJobUUID`
      }
      if (!is.null(self$`duplicate`)) {
        MigrationDatumModelObject[['duplicate']] <- self$`duplicate`
      }
      if (!is.null(self$`duplicate_ref`)) {
        MigrationDatumModelObject[['duplicate_ref']] <- self$`duplicate_ref`
      }
      if (!is.null(self$`datum_type`)) {
        MigrationDatumModelObject[['datum_type']] <- self$`datum_type`
      }
      if (!is.null(self$`bucket`)) {
        MigrationDatumModelObject[['bucket']] <- self$`bucket`
      }
      if (!is.null(self$`status`)) {
        MigrationDatumModelObject[['status']] <- self$`status`
      }
      if (!is.null(self$`progress`)) {
        MigrationDatumModelObject[['progress']] <- self$`progress`
      }
      if (!is.null(self$`details`)) {
        MigrationDatumModelObject[['details']] <- self$`details`
      }

      MigrationDatumModelObject
    },
    fromJSON = function(MigrationDatumModelJson) {
      MigrationDatumModelObject <- jsonlite::fromJSON(MigrationDatumModelJson)
      if (!is.null(MigrationDatumModelObject$`UUID`)) {
        self$`UUID` <- MigrationDatumModelObject$`UUID`
      }
      if (!is.null(MigrationDatumModelObject$`remote_UUID`)) {
        self$`remote_UUID` <- MigrationDatumModelObject$`remote_UUID`
      }
      if (!is.null(MigrationDatumModelObject$`dkubeDatumUUIDs`)) {
        dkubeDatumUUIDsObject <- MigrationObjUUID$new()
        dkubeDatumUUIDsObject$fromJSON(jsonlite::toJSON(MigrationDatumModelObject$dkubeDatumUUIDs, auto_unbox = TRUE))
        self$`dkubeDatumUUIDs` <- dkubeDatumUUIDsObject
      }
      if (!is.null(MigrationDatumModelObject$`migrationUUID`)) {
        self$`migrationUUID` <- MigrationDatumModelObject$`migrationUUID`
      }
      if (!is.null(MigrationDatumModelObject$`migrationJobUUID`)) {
        self$`migrationJobUUID` <- MigrationDatumModelObject$`migrationJobUUID`
      }
      if (!is.null(MigrationDatumModelObject$`duplicate`)) {
        self$`duplicate` <- MigrationDatumModelObject$`duplicate`
      }
      if (!is.null(MigrationDatumModelObject$`duplicate_ref`)) {
        self$`duplicate_ref` <- MigrationDatumModelObject$`duplicate_ref`
      }
      if (!is.null(MigrationDatumModelObject$`datum_type`)) {
        self$`datum_type` <- MigrationDatumModelObject$`datum_type`
      }
      if (!is.null(MigrationDatumModelObject$`bucket`)) {
        self$`bucket` <- MigrationDatumModelObject$`bucket`
      }
      if (!is.null(MigrationDatumModelObject$`status`)) {
        self$`status` <- MigrationDatumModelObject$`status`
      }
      if (!is.null(MigrationDatumModelObject$`progress`)) {
        self$`progress` <- MigrationDatumModelObject$`progress`
      }
      if (!is.null(MigrationDatumModelObject$`details`)) {
        self$`details` <- MigrationDatumModelObject$`details`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "UUID": %s,
           "remote_UUID": %s,
           "dkubeDatumUUIDs": %s,
           "migrationUUID": %s,
           "migrationJobUUID": %s,
           "duplicate": %s,
           "duplicate_ref": %s,
           "datum_type": %s,
           "bucket": %s,
           "status": %s,
           "progress": %d,
           "details": %s
        }',
        self$`UUID`,
        self$`remote_UUID`,
        self$`dkubeDatumUUIDs`$toJSON(),
        self$`migrationUUID`,
        self$`migrationJobUUID`,
        self$`duplicate`,
        self$`duplicate_ref`,
        self$`datum_type`,
        self$`bucket`,
        self$`status`,
        self$`progress`,
        self$`details`
      )
    },
    fromJSONString = function(MigrationDatumModelJson) {
      MigrationDatumModelObject <- jsonlite::fromJSON(MigrationDatumModelJson)
      self$`UUID` <- MigrationDatumModelObject$`UUID`
      self$`remote_UUID` <- MigrationDatumModelObject$`remote_UUID`
      MigrationObjUUIDObject <- MigrationObjUUID$new()
      self$`dkubeDatumUUIDs` <- MigrationObjUUIDObject$fromJSON(jsonlite::toJSON(MigrationDatumModelObject$dkubeDatumUUIDs, auto_unbox = TRUE))
      self$`migrationUUID` <- MigrationDatumModelObject$`migrationUUID`
      self$`migrationJobUUID` <- MigrationDatumModelObject$`migrationJobUUID`
      self$`duplicate` <- MigrationDatumModelObject$`duplicate`
      self$`duplicate_ref` <- MigrationDatumModelObject$`duplicate_ref`
      self$`datum_type` <- MigrationDatumModelObject$`datum_type`
      self$`bucket` <- MigrationDatumModelObject$`bucket`
      self$`status` <- MigrationDatumModelObject$`status`
      self$`progress` <- MigrationDatumModelObject$`progress`
      self$`details` <- MigrationDatumModelObject$`details`
    }
  )
)
