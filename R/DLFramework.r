# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DLFramework Class
#'
#' @field name 
#' @field versions 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DLFramework <- R6::R6Class(
  'DLFramework',
  public = list(
    `name` = NULL,
    `versions` = NULL,
    initialize = function(`name`, `versions`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`versions`)) {
        stopifnot(is.list(`versions`), length(`versions`) != 0)
        lapply(`versions`, function(x) stopifnot(is.character(x)))
        self$`versions` <- `versions`
      }
    },
    toJSON = function() {
      DLFrameworkObject <- list()
      if (!is.null(self$`name`)) {
        DLFrameworkObject[['name']] <- self$`name`
      }
      if (!is.null(self$`versions`)) {
        DLFrameworkObject[['versions']] <- self$`versions`
      }

      DLFrameworkObject
    },
    fromJSON = function(DLFrameworkJson) {
      DLFrameworkObject <- jsonlite::fromJSON(DLFrameworkJson)
      if (!is.null(DLFrameworkObject$`name`)) {
        self$`name` <- DLFrameworkObject$`name`
      }
      if (!is.null(DLFrameworkObject$`versions`)) {
        self$`versions` <- DLFrameworkObject$`versions`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "versions": [%s]
        }',
        self$`name`,
        lapply(self$`versions`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(DLFrameworkJson) {
      DLFrameworkObject <- jsonlite::fromJSON(DLFrameworkJson)
      self$`name` <- DLFrameworkObject$`name`
      self$`versions` <- DLFrameworkObject$`versions`
    }
  )
)
