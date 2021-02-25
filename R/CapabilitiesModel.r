# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CapabilitiesModel Class
#'
#' @field resources 
#' @field access 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CapabilitiesModel <- R6::R6Class(
  'CapabilitiesModel',
  public = list(
    `resources` = NULL,
    `access` = NULL,
    initialize = function(`resources`, `access`){
      if (!missing(`resources`)) {
        stopifnot(is.list(`resources`), length(`resources`) != 0)
        lapply(`resources`, function(x) stopifnot(is.character(x)))
        self$`resources` <- `resources`
      }
      if (!missing(`access`)) {
        stopifnot(is.list(`access`), length(`access`) != 0)
        lapply(`access`, function(x) stopifnot(is.character(x)))
        self$`access` <- `access`
      }
    },
    toJSON = function() {
      CapabilitiesModelObject <- list()
      if (!is.null(self$`resources`)) {
        CapabilitiesModelObject[['resources']] <- self$`resources`
      }
      if (!is.null(self$`access`)) {
        CapabilitiesModelObject[['access']] <- self$`access`
      }

      CapabilitiesModelObject
    },
    fromJSON = function(CapabilitiesModelJson) {
      CapabilitiesModelObject <- jsonlite::fromJSON(CapabilitiesModelJson)
      if (!is.null(CapabilitiesModelObject$`resources`)) {
        self$`resources` <- CapabilitiesModelObject$`resources`
      }
      if (!is.null(CapabilitiesModelObject$`access`)) {
        self$`access` <- CapabilitiesModelObject$`access`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "resources": [%s],
           "access": [%s]
        }',
        lapply(self$`resources`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`access`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(CapabilitiesModelJson) {
      CapabilitiesModelObject <- jsonlite::fromJSON(CapabilitiesModelJson)
      self$`resources` <- CapabilitiesModelObject$`resources`
      self$`access` <- CapabilitiesModelObject$`access`
    }
  )
)
