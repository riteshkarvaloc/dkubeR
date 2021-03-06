# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CustomJobModelService Class
#'
#' @field targetport 
#' @field exposeas 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomJobModelService <- R6::R6Class(
  'CustomJobModelService',
  public = list(
    `targetport` = NULL,
    `exposeas` = NULL,
    initialize = function(`targetport`, `exposeas`){
      if (!missing(`targetport`)) {
        stopifnot(is.numeric(`targetport`), length(`targetport`) == 1)
        self$`targetport` <- `targetport`
      }
      if (!missing(`exposeas`)) {
        stopifnot(is.character(`exposeas`), length(`exposeas`) == 1)
        self$`exposeas` <- `exposeas`
      }
    },
    toJSON = function() {
      CustomJobModelServiceObject <- list()
      if (!is.null(self$`targetport`)) {
        CustomJobModelServiceObject[['targetport']] <- self$`targetport`
      }
      if (!is.null(self$`exposeas`)) {
        CustomJobModelServiceObject[['exposeas']] <- self$`exposeas`
      }

      CustomJobModelServiceObject
    },
    fromJSON = function(CustomJobModelServiceJson) {
      CustomJobModelServiceObject <- jsonlite::fromJSON(CustomJobModelServiceJson)
      if (!is.null(CustomJobModelServiceObject$`targetport`)) {
        self$`targetport` <- CustomJobModelServiceObject$`targetport`
      }
      if (!is.null(CustomJobModelServiceObject$`exposeas`)) {
        self$`exposeas` <- CustomJobModelServiceObject$`exposeas`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "targetport": %d,
           "exposeas": %s
        }',
        self$`targetport`,
        self$`exposeas`
      )
    },
    fromJSONString = function(CustomJobModelServiceJson) {
      CustomJobModelServiceObject <- jsonlite::fromJSON(CustomJobModelServiceJson)
      self$`targetport` <- CustomJobModelServiceObject$`targetport`
      self$`exposeas` <- CustomJobModelServiceObject$`exposeas`
    }
  )
)
