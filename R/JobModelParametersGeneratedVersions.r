# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobModelParametersGeneratedVersions Class
#'
#' @field cuda 
#' @field dkube 
#' @field nvidia 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobModelParametersGeneratedVersions <- R6::R6Class(
  'JobModelParametersGeneratedVersions',
  public = list(
    `cuda` = NULL,
    `dkube` = NULL,
    `nvidia` = NULL,
    initialize = function(`cuda`, `dkube`, `nvidia`){
      if (!missing(`cuda`)) {
        stopifnot(is.character(`cuda`), length(`cuda`) == 1)
        self$`cuda` <- `cuda`
      }
      if (!missing(`dkube`)) {
        stopifnot(is.character(`dkube`), length(`dkube`) == 1)
        self$`dkube` <- `dkube`
      }
      if (!missing(`nvidia`)) {
        stopifnot(is.character(`nvidia`), length(`nvidia`) == 1)
        self$`nvidia` <- `nvidia`
      }
    },
    toJSON = function() {
      JobModelParametersGeneratedVersionsObject <- list()
      if (!is.null(self$`cuda`)) {
        JobModelParametersGeneratedVersionsObject[['cuda']] <- self$`cuda`
      }
      if (!is.null(self$`dkube`)) {
        JobModelParametersGeneratedVersionsObject[['dkube']] <- self$`dkube`
      }
      if (!is.null(self$`nvidia`)) {
        JobModelParametersGeneratedVersionsObject[['nvidia']] <- self$`nvidia`
      }

      JobModelParametersGeneratedVersionsObject
    },
    fromJSON = function(JobModelParametersGeneratedVersionsJson) {
      JobModelParametersGeneratedVersionsObject <- jsonlite::fromJSON(JobModelParametersGeneratedVersionsJson)
      if (!is.null(JobModelParametersGeneratedVersionsObject$`cuda`)) {
        self$`cuda` <- JobModelParametersGeneratedVersionsObject$`cuda`
      }
      if (!is.null(JobModelParametersGeneratedVersionsObject$`dkube`)) {
        self$`dkube` <- JobModelParametersGeneratedVersionsObject$`dkube`
      }
      if (!is.null(JobModelParametersGeneratedVersionsObject$`nvidia`)) {
        self$`nvidia` <- JobModelParametersGeneratedVersionsObject$`nvidia`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "cuda": %s,
           "dkube": %s,
           "nvidia": %s
        }',
        self$`cuda`,
        self$`dkube`,
        self$`nvidia`
      )
    },
    fromJSONString = function(JobModelParametersGeneratedVersionsJson) {
      JobModelParametersGeneratedVersionsObject <- jsonlite::fromJSON(JobModelParametersGeneratedVersionsJson)
      self$`cuda` <- JobModelParametersGeneratedVersionsObject$`cuda`
      self$`dkube` <- JobModelParametersGeneratedVersionsObject$`dkube`
      self$`nvidia` <- JobModelParametersGeneratedVersionsObject$`nvidia`
    }
  )
)
