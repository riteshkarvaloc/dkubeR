# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FeatureSetVersionDef Class
#'
#' @field name 
#' @field uuid 
#' @field tags 
#' @field description 
#' @field index 
#' @field created_ts 
#' @field updated_ts 
#' @field state 
#' @field user 
#' @field featuresetName 
#' @field featuresetUUID 
#' @field job 
#' @field trackingUUID 
#' @field commitID 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureSetVersionDef <- R6::R6Class(
  'FeatureSetVersionDef',
  public = list(
    `name` = NULL,
    `uuid` = NULL,
    `tags` = NULL,
    `description` = NULL,
    `index` = NULL,
    `created_ts` = NULL,
    `updated_ts` = NULL,
    `state` = NULL,
    `user` = NULL,
    `featuresetName` = NULL,
    `featuresetUUID` = NULL,
    `job` = NULL,
    `trackingUUID` = NULL,
    `commitID` = NULL,
    initialize = function(`name`, `uuid`, `tags`, `description`, `index`, `created_ts`, `updated_ts`, `state`, `user`, `featuresetName`, `featuresetUUID`, `job`, `trackingUUID`, `commitID`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
      if (!missing(`tags`)) {
        stopifnot(is.list(`tags`), length(`tags`) != 0)
        lapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`index`)) {
        stopifnot(is.numeric(`index`), length(`index`) == 1)
        self$`index` <- `index`
      }
      if (!missing(`created_ts`)) {
        stopifnot(is.character(`created_ts`), length(`created_ts`) == 1)
        self$`created_ts` <- `created_ts`
      }
      if (!missing(`updated_ts`)) {
        stopifnot(is.character(`updated_ts`), length(`updated_ts`) == 1)
        self$`updated_ts` <- `updated_ts`
      }
      if (!missing(`state`)) {
        stopifnot(is.character(`state`), length(`state`) == 1)
        self$`state` <- `state`
      }
      if (!missing(`user`)) {
        stopifnot(is.character(`user`), length(`user`) == 1)
        self$`user` <- `user`
      }
      if (!missing(`featuresetName`)) {
        stopifnot(is.character(`featuresetName`), length(`featuresetName`) == 1)
        self$`featuresetName` <- `featuresetName`
      }
      if (!missing(`featuresetUUID`)) {
        stopifnot(is.character(`featuresetUUID`), length(`featuresetUUID`) == 1)
        self$`featuresetUUID` <- `featuresetUUID`
      }
      if (!missing(`job`)) {
        stopifnot(R6::is.R6(`job`))
        self$`job` <- `job`
      }
      if (!missing(`trackingUUID`)) {
        stopifnot(is.character(`trackingUUID`), length(`trackingUUID`) == 1)
        self$`trackingUUID` <- `trackingUUID`
      }
      if (!missing(`commitID`)) {
        stopifnot(is.character(`commitID`), length(`commitID`) == 1)
        self$`commitID` <- `commitID`
      }
    },
    toJSON = function() {
      FeatureSetVersionDefObject <- list()
      if (!is.null(self$`name`)) {
        FeatureSetVersionDefObject[['name']] <- self$`name`
      }
      if (!is.null(self$`uuid`)) {
        FeatureSetVersionDefObject[['uuid']] <- self$`uuid`
      }
      if (!is.null(self$`tags`)) {
        FeatureSetVersionDefObject[['tags']] <- self$`tags`
      }
      if (!is.null(self$`description`)) {
        FeatureSetVersionDefObject[['description']] <- self$`description`
      }
      if (!is.null(self$`index`)) {
        FeatureSetVersionDefObject[['index']] <- self$`index`
      }
      if (!is.null(self$`created_ts`)) {
        FeatureSetVersionDefObject[['created_ts']] <- self$`created_ts`
      }
      if (!is.null(self$`updated_ts`)) {
        FeatureSetVersionDefObject[['updated_ts']] <- self$`updated_ts`
      }
      if (!is.null(self$`state`)) {
        FeatureSetVersionDefObject[['state']] <- self$`state`
      }
      if (!is.null(self$`user`)) {
        FeatureSetVersionDefObject[['user']] <- self$`user`
      }
      if (!is.null(self$`featuresetName`)) {
        FeatureSetVersionDefObject[['featuresetName']] <- self$`featuresetName`
      }
      if (!is.null(self$`featuresetUUID`)) {
        FeatureSetVersionDefObject[['featuresetUUID']] <- self$`featuresetUUID`
      }
      if (!is.null(self$`job`)) {
        FeatureSetVersionDefObject[['job']] <- self$`job`$toJSON()
      }
      if (!is.null(self$`trackingUUID`)) {
        FeatureSetVersionDefObject[['trackingUUID']] <- self$`trackingUUID`
      }
      if (!is.null(self$`commitID`)) {
        FeatureSetVersionDefObject[['commitID']] <- self$`commitID`
      }

      FeatureSetVersionDefObject
    },
    fromJSON = function(FeatureSetVersionDefJson) {
      FeatureSetVersionDefObject <- jsonlite::fromJSON(FeatureSetVersionDefJson)
      if (!is.null(FeatureSetVersionDefObject$`name`)) {
        self$`name` <- FeatureSetVersionDefObject$`name`
      }
      if (!is.null(FeatureSetVersionDefObject$`uuid`)) {
        self$`uuid` <- FeatureSetVersionDefObject$`uuid`
      }
      if (!is.null(FeatureSetVersionDefObject$`tags`)) {
        self$`tags` <- FeatureSetVersionDefObject$`tags`
      }
      if (!is.null(FeatureSetVersionDefObject$`description`)) {
        self$`description` <- FeatureSetVersionDefObject$`description`
      }
      if (!is.null(FeatureSetVersionDefObject$`index`)) {
        self$`index` <- FeatureSetVersionDefObject$`index`
      }
      if (!is.null(FeatureSetVersionDefObject$`created_ts`)) {
        self$`created_ts` <- FeatureSetVersionDefObject$`created_ts`
      }
      if (!is.null(FeatureSetVersionDefObject$`updated_ts`)) {
        self$`updated_ts` <- FeatureSetVersionDefObject$`updated_ts`
      }
      if (!is.null(FeatureSetVersionDefObject$`state`)) {
        self$`state` <- FeatureSetVersionDefObject$`state`
      }
      if (!is.null(FeatureSetVersionDefObject$`user`)) {
        self$`user` <- FeatureSetVersionDefObject$`user`
      }
      if (!is.null(FeatureSetVersionDefObject$`featuresetName`)) {
        self$`featuresetName` <- FeatureSetVersionDefObject$`featuresetName`
      }
      if (!is.null(FeatureSetVersionDefObject$`featuresetUUID`)) {
        self$`featuresetUUID` <- FeatureSetVersionDefObject$`featuresetUUID`
      }
      if (!is.null(FeatureSetVersionDefObject$`job`)) {
        jobObject <- FeatureSetVersionDefJob$new()
        jobObject$fromJSON(jsonlite::toJSON(FeatureSetVersionDefObject$job, auto_unbox = TRUE))
        self$`job` <- jobObject
      }
      if (!is.null(FeatureSetVersionDefObject$`trackingUUID`)) {
        self$`trackingUUID` <- FeatureSetVersionDefObject$`trackingUUID`
      }
      if (!is.null(FeatureSetVersionDefObject$`commitID`)) {
        self$`commitID` <- FeatureSetVersionDefObject$`commitID`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "uuid": %s,
           "tags": [%s],
           "description": %s,
           "index": %d,
           "created_ts": %s,
           "updated_ts": %s,
           "state": %s,
           "user": %s,
           "featuresetName": %s,
           "featuresetUUID": %s,
           "job": %s,
           "trackingUUID": %s,
           "commitID": %s
        }',
        self$`name`,
        self$`uuid`,
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`description`,
        self$`index`,
        self$`created_ts`,
        self$`updated_ts`,
        self$`state`,
        self$`user`,
        self$`featuresetName`,
        self$`featuresetUUID`,
        self$`job`$toJSON(),
        self$`trackingUUID`,
        self$`commitID`
      )
    },
    fromJSONString = function(FeatureSetVersionDefJson) {
      FeatureSetVersionDefObject <- jsonlite::fromJSON(FeatureSetVersionDefJson)
      self$`name` <- FeatureSetVersionDefObject$`name`
      self$`uuid` <- FeatureSetVersionDefObject$`uuid`
      self$`tags` <- FeatureSetVersionDefObject$`tags`
      self$`description` <- FeatureSetVersionDefObject$`description`
      self$`index` <- FeatureSetVersionDefObject$`index`
      self$`created_ts` <- FeatureSetVersionDefObject$`created_ts`
      self$`updated_ts` <- FeatureSetVersionDefObject$`updated_ts`
      self$`state` <- FeatureSetVersionDefObject$`state`
      self$`user` <- FeatureSetVersionDefObject$`user`
      self$`featuresetName` <- FeatureSetVersionDefObject$`featuresetName`
      self$`featuresetUUID` <- FeatureSetVersionDefObject$`featuresetUUID`
      FeatureSetVersionDefJobObject <- FeatureSetVersionDefJob$new()
      self$`job` <- FeatureSetVersionDefJobObject$fromJSON(jsonlite::toJSON(FeatureSetVersionDefObject$job, auto_unbox = TRUE))
      self$`trackingUUID` <- FeatureSetVersionDefObject$`trackingUUID`
      self$`commitID` <- FeatureSetVersionDefObject$`commitID`
    }
  )
)
