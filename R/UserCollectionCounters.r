# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UserCollectionCounters Class
#'
#' @field notebooks 
#' @field jobs 
#' @field inferences 
#' @field preprocessing 
#' @field rstudio 
#' @field ngpus 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserCollectionCounters <- R6::R6Class(
  'UserCollectionCounters',
  public = list(
    `notebooks` = NULL,
    `jobs` = NULL,
    `inferences` = NULL,
    `preprocessing` = NULL,
    `rstudio` = NULL,
    `ngpus` = NULL,
    initialize = function(`notebooks`, `jobs`, `inferences`, `preprocessing`, `rstudio`, `ngpus`){
      if (!missing(`notebooks`)) {
        stopifnot(R6::is.R6(`notebooks`))
        self$`notebooks` <- `notebooks`
      }
      if (!missing(`jobs`)) {
        stopifnot(R6::is.R6(`jobs`))
        self$`jobs` <- `jobs`
      }
      if (!missing(`inferences`)) {
        stopifnot(R6::is.R6(`inferences`))
        self$`inferences` <- `inferences`
      }
      if (!missing(`preprocessing`)) {
        stopifnot(R6::is.R6(`preprocessing`))
        self$`preprocessing` <- `preprocessing`
      }
      if (!missing(`rstudio`)) {
        stopifnot(R6::is.R6(`rstudio`))
        self$`rstudio` <- `rstudio`
      }
      if (!missing(`ngpus`)) {
        stopifnot(is.character(`ngpus`), length(`ngpus`) == 1)
        self$`ngpus` <- `ngpus`
      }
    },
    toJSON = function() {
      UserCollectionCountersObject <- list()
      if (!is.null(self$`notebooks`)) {
        UserCollectionCountersObject[['notebooks']] <- self$`notebooks`$toJSON()
      }
      if (!is.null(self$`jobs`)) {
        UserCollectionCountersObject[['jobs']] <- self$`jobs`$toJSON()
      }
      if (!is.null(self$`inferences`)) {
        UserCollectionCountersObject[['inferences']] <- self$`inferences`$toJSON()
      }
      if (!is.null(self$`preprocessing`)) {
        UserCollectionCountersObject[['preprocessing']] <- self$`preprocessing`$toJSON()
      }
      if (!is.null(self$`rstudio`)) {
        UserCollectionCountersObject[['rstudio']] <- self$`rstudio`$toJSON()
      }
      if (!is.null(self$`ngpus`)) {
        UserCollectionCountersObject[['ngpus']] <- self$`ngpus`
      }

      UserCollectionCountersObject
    },
    fromJSON = function(UserCollectionCountersJson) {
      UserCollectionCountersObject <- jsonlite::fromJSON(UserCollectionCountersJson)
      if (!is.null(UserCollectionCountersObject$`notebooks`)) {
        notebooksObject <- Counters$new()
        notebooksObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$notebooks, auto_unbox = TRUE))
        self$`notebooks` <- notebooksObject
      }
      if (!is.null(UserCollectionCountersObject$`jobs`)) {
        jobsObject <- Counters$new()
        jobsObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$jobs, auto_unbox = TRUE))
        self$`jobs` <- jobsObject
      }
      if (!is.null(UserCollectionCountersObject$`inferences`)) {
        inferencesObject <- Counters$new()
        inferencesObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$inferences, auto_unbox = TRUE))
        self$`inferences` <- inferencesObject
      }
      if (!is.null(UserCollectionCountersObject$`preprocessing`)) {
        preprocessingObject <- Counters$new()
        preprocessingObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$preprocessing, auto_unbox = TRUE))
        self$`preprocessing` <- preprocessingObject
      }
      if (!is.null(UserCollectionCountersObject$`rstudio`)) {
        rstudioObject <- Counters$new()
        rstudioObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$rstudio, auto_unbox = TRUE))
        self$`rstudio` <- rstudioObject
      }
      if (!is.null(UserCollectionCountersObject$`ngpus`)) {
        self$`ngpus` <- UserCollectionCountersObject$`ngpus`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "notebooks": %s,
           "jobs": %s,
           "inferences": %s,
           "preprocessing": %s,
           "rstudio": %s,
           "ngpus": %s
        }',
        self$`notebooks`$toJSON(),
        self$`jobs`$toJSON(),
        self$`inferences`$toJSON(),
        self$`preprocessing`$toJSON(),
        self$`rstudio`$toJSON(),
        self$`ngpus`
      )
    },
    fromJSONString = function(UserCollectionCountersJson) {
      UserCollectionCountersObject <- jsonlite::fromJSON(UserCollectionCountersJson)
      CountersObject <- Counters$new()
      self$`notebooks` <- CountersObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$notebooks, auto_unbox = TRUE))
      CountersObject <- Counters$new()
      self$`jobs` <- CountersObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$jobs, auto_unbox = TRUE))
      CountersObject <- Counters$new()
      self$`inferences` <- CountersObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$inferences, auto_unbox = TRUE))
      CountersObject <- Counters$new()
      self$`preprocessing` <- CountersObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$preprocessing, auto_unbox = TRUE))
      CountersObject <- Counters$new()
      self$`rstudio` <- CountersObject$fromJSON(jsonlite::toJSON(UserCollectionCountersObject$rstudio, auto_unbox = TRUE))
      self$`ngpus` <- UserCollectionCountersObject$`ngpus`
    }
  )
)
