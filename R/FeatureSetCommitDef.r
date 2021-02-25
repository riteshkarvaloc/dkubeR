# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FeatureSetCommitDef Class
#'
#' @field job_uuid 
#' @field description 
#' @field tags 
#' @field featureset 
#' @field Path 
#' @field job 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureSetCommitDef <- R6::R6Class(
  'FeatureSetCommitDef',
  public = list(
    `job_uuid` = NULL,
    `description` = NULL,
    `tags` = NULL,
    `featureset` = NULL,
    `Path` = NULL,
    `job` = NULL,
    initialize = function(`job_uuid`, `description`, `tags`, `featureset`, `Path`, `job`){
      if (!missing(`job_uuid`)) {
        stopifnot(is.character(`job_uuid`), length(`job_uuid`) == 1)
        self$`job_uuid` <- `job_uuid`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`tags`)) {
        stopifnot(is.list(`tags`), length(`tags`) != 0)
        lapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!missing(`featureset`)) {
        stopifnot(is.character(`featureset`), length(`featureset`) == 1)
        self$`featureset` <- `featureset`
      }
      if (!missing(`Path`)) {
        stopifnot(is.character(`Path`), length(`Path`) == 1)
        self$`Path` <- `Path`
      }
      if (!missing(`job`)) {
        stopifnot(R6::is.R6(`job`))
        self$`job` <- `job`
      }
    },
    toJSON = function() {
      FeatureSetCommitDefObject <- list()
      if (!is.null(self$`job_uuid`)) {
        FeatureSetCommitDefObject[['job_uuid']] <- self$`job_uuid`
      }
      if (!is.null(self$`description`)) {
        FeatureSetCommitDefObject[['description']] <- self$`description`
      }
      if (!is.null(self$`tags`)) {
        FeatureSetCommitDefObject[['tags']] <- self$`tags`
      }
      if (!is.null(self$`featureset`)) {
        FeatureSetCommitDefObject[['featureset']] <- self$`featureset`
      }
      if (!is.null(self$`Path`)) {
        FeatureSetCommitDefObject[['Path']] <- self$`Path`
      }
      if (!is.null(self$`job`)) {
        FeatureSetCommitDefObject[['job']] <- self$`job`$toJSON()
      }

      FeatureSetCommitDefObject
    },
    fromJSON = function(FeatureSetCommitDefJson) {
      FeatureSetCommitDefObject <- jsonlite::fromJSON(FeatureSetCommitDefJson)
      if (!is.null(FeatureSetCommitDefObject$`job_uuid`)) {
        self$`job_uuid` <- FeatureSetCommitDefObject$`job_uuid`
      }
      if (!is.null(FeatureSetCommitDefObject$`description`)) {
        self$`description` <- FeatureSetCommitDefObject$`description`
      }
      if (!is.null(FeatureSetCommitDefObject$`tags`)) {
        self$`tags` <- FeatureSetCommitDefObject$`tags`
      }
      if (!is.null(FeatureSetCommitDefObject$`featureset`)) {
        self$`featureset` <- FeatureSetCommitDefObject$`featureset`
      }
      if (!is.null(FeatureSetCommitDefObject$`Path`)) {
        self$`Path` <- FeatureSetCommitDefObject$`Path`
      }
      if (!is.null(FeatureSetCommitDefObject$`job`)) {
        jobObject <- FeatureSetCommitDefJob$new()
        jobObject$fromJSON(jsonlite::toJSON(FeatureSetCommitDefObject$job, auto_unbox = TRUE))
        self$`job` <- jobObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "job_uuid": %s,
           "description": %s,
           "tags": [%s],
           "featureset": %s,
           "Path": %s,
           "job": %s
        }',
        self$`job_uuid`,
        self$`description`,
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`featureset`,
        self$`Path`,
        self$`job`$toJSON()
      )
    },
    fromJSONString = function(FeatureSetCommitDefJson) {
      FeatureSetCommitDefObject <- jsonlite::fromJSON(FeatureSetCommitDefJson)
      self$`job_uuid` <- FeatureSetCommitDefObject$`job_uuid`
      self$`description` <- FeatureSetCommitDefObject$`description`
      self$`tags` <- FeatureSetCommitDefObject$`tags`
      self$`featureset` <- FeatureSetCommitDefObject$`featureset`
      self$`Path` <- FeatureSetCommitDefObject$`Path`
      FeatureSetCommitDefJobObject <- FeatureSetCommitDefJob$new()
      self$`job` <- FeatureSetCommitDefJobObject$fromJSON(jsonlite::toJSON(FeatureSetCommitDefObject$job, auto_unbox = TRUE))
    }
  )
)
