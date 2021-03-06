# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobModelParametersGeneratedInputFeaturesetRefs Class
#'
#' @field fsetuuid 
#' @field version_uuid 
#' @field version_name 
#' @field version_index 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobModelParametersGeneratedInputFeaturesetRefs <- R6::R6Class(
  'JobModelParametersGeneratedInputFeaturesetRefs',
  public = list(
    `fsetuuid` = NULL,
    `version_uuid` = NULL,
    `version_name` = NULL,
    `version_index` = NULL,
    initialize = function(`fsetuuid`, `version_uuid`, `version_name`, `version_index`){
      if (!missing(`fsetuuid`)) {
        stopifnot(is.character(`fsetuuid`), length(`fsetuuid`) == 1)
        self$`fsetuuid` <- `fsetuuid`
      }
      if (!missing(`version_uuid`)) {
        stopifnot(is.character(`version_uuid`), length(`version_uuid`) == 1)
        self$`version_uuid` <- `version_uuid`
      }
      if (!missing(`version_name`)) {
        stopifnot(is.character(`version_name`), length(`version_name`) == 1)
        self$`version_name` <- `version_name`
      }
      if (!missing(`version_index`)) {
        stopifnot(is.numeric(`version_index`), length(`version_index`) == 1)
        self$`version_index` <- `version_index`
      }
    },
    toJSON = function() {
      JobModelParametersGeneratedInputFeaturesetRefsObject <- list()
      if (!is.null(self$`fsetuuid`)) {
        JobModelParametersGeneratedInputFeaturesetRefsObject[['fsetuuid']] <- self$`fsetuuid`
      }
      if (!is.null(self$`version_uuid`)) {
        JobModelParametersGeneratedInputFeaturesetRefsObject[['version_uuid']] <- self$`version_uuid`
      }
      if (!is.null(self$`version_name`)) {
        JobModelParametersGeneratedInputFeaturesetRefsObject[['version_name']] <- self$`version_name`
      }
      if (!is.null(self$`version_index`)) {
        JobModelParametersGeneratedInputFeaturesetRefsObject[['version_index']] <- self$`version_index`
      }

      JobModelParametersGeneratedInputFeaturesetRefsObject
    },
    fromJSON = function(JobModelParametersGeneratedInputFeaturesetRefsJson) {
      JobModelParametersGeneratedInputFeaturesetRefsObject <- jsonlite::fromJSON(JobModelParametersGeneratedInputFeaturesetRefsJson)
      if (!is.null(JobModelParametersGeneratedInputFeaturesetRefsObject$`fsetuuid`)) {
        self$`fsetuuid` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`fsetuuid`
      }
      if (!is.null(JobModelParametersGeneratedInputFeaturesetRefsObject$`version_uuid`)) {
        self$`version_uuid` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`version_uuid`
      }
      if (!is.null(JobModelParametersGeneratedInputFeaturesetRefsObject$`version_name`)) {
        self$`version_name` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`version_name`
      }
      if (!is.null(JobModelParametersGeneratedInputFeaturesetRefsObject$`version_index`)) {
        self$`version_index` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`version_index`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "fsetuuid": %s,
           "version_uuid": %s,
           "version_name": %s,
           "version_index": %d
        }',
        self$`fsetuuid`,
        self$`version_uuid`,
        self$`version_name`,
        self$`version_index`
      )
    },
    fromJSONString = function(JobModelParametersGeneratedInputFeaturesetRefsJson) {
      JobModelParametersGeneratedInputFeaturesetRefsObject <- jsonlite::fromJSON(JobModelParametersGeneratedInputFeaturesetRefsJson)
      self$`fsetuuid` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`fsetuuid`
      self$`version_uuid` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`version_uuid`
      self$`version_name` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`version_name`
      self$`version_index` <- JobModelParametersGeneratedInputFeaturesetRefsObject$`version_index`
    }
  )
)
