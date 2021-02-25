# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UserProfileLimits Class
#'
#' @field cpus 
#' @field mem 
#' @field gpus 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserProfileLimits <- R6::R6Class(
  'UserProfileLimits',
  public = list(
    `cpus` = NULL,
    `mem` = NULL,
    `gpus` = NULL,
    initialize = function(`cpus`, `mem`, `gpus`){
      if (!missing(`cpus`)) {
        stopifnot(is.character(`cpus`), length(`cpus`) == 1)
        self$`cpus` <- `cpus`
      }
      if (!missing(`mem`)) {
        stopifnot(is.character(`mem`), length(`mem`) == 1)
        self$`mem` <- `mem`
      }
      if (!missing(`gpus`)) {
        stopifnot(is.numeric(`gpus`), length(`gpus`) == 1)
        self$`gpus` <- `gpus`
      }
    },
    toJSON = function() {
      UserProfileLimitsObject <- list()
      if (!is.null(self$`cpus`)) {
        UserProfileLimitsObject[['cpus']] <- self$`cpus`
      }
      if (!is.null(self$`mem`)) {
        UserProfileLimitsObject[['mem']] <- self$`mem`
      }
      if (!is.null(self$`gpus`)) {
        UserProfileLimitsObject[['gpus']] <- self$`gpus`
      }

      UserProfileLimitsObject
    },
    fromJSON = function(UserProfileLimitsJson) {
      UserProfileLimitsObject <- jsonlite::fromJSON(UserProfileLimitsJson)
      if (!is.null(UserProfileLimitsObject$`cpus`)) {
        self$`cpus` <- UserProfileLimitsObject$`cpus`
      }
      if (!is.null(UserProfileLimitsObject$`mem`)) {
        self$`mem` <- UserProfileLimitsObject$`mem`
      }
      if (!is.null(UserProfileLimitsObject$`gpus`)) {
        self$`gpus` <- UserProfileLimitsObject$`gpus`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "cpus": %s,
           "mem": %s,
           "gpus": %d
        }',
        self$`cpus`,
        self$`mem`,
        self$`gpus`
      )
    },
    fromJSONString = function(UserProfileLimitsJson) {
      UserProfileLimitsObject <- jsonlite::fromJSON(UserProfileLimitsJson)
      self$`cpus` <- UserProfileLimitsObject$`cpus`
      self$`mem` <- UserProfileLimitsObject$`mem`
      self$`gpus` <- UserProfileLimitsObject$`gpus`
    }
  )
)