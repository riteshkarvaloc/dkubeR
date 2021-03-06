# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RoleModel Class
#'
#' @field name 
#' @field capabilities 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RoleModel <- R6::R6Class(
  'RoleModel',
  public = list(
    `name` = NULL,
    `capabilities` = NULL,
    initialize = function(`name`, `capabilities`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`capabilities`)) {
        stopifnot(is.list(`capabilities`), length(`capabilities`) != 0)
        lapply(`capabilities`, function(x) stopifnot(R6::is.R6(x)))
        self$`capabilities` <- `capabilities`
      }
    },
    toJSON = function() {
      RoleModelObject <- list()
      if (!is.null(self$`name`)) {
        RoleModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`capabilities`)) {
        RoleModelObject[['capabilities']] <- lapply(self$`capabilities`, function(x) x$toJSON())
      }

      RoleModelObject
    },
    fromJSON = function(RoleModelJson) {
      RoleModelObject <- jsonlite::fromJSON(RoleModelJson)
      if (!is.null(RoleModelObject$`name`)) {
        self$`name` <- RoleModelObject$`name`
      }
      if (!is.null(RoleModelObject$`capabilities`)) {
        self$`capabilities` <- lapply(RoleModelObject$`capabilities`, function(x) {
          capabilitiesObject <- CapabilitiesModel$new()
          capabilitiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          capabilitiesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "capabilities": [%s]
        }',
        self$`name`,
        lapply(self$`capabilities`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(RoleModelJson) {
      RoleModelObject <- jsonlite::fromJSON(RoleModelJson)
      self$`name` <- RoleModelObject$`name`
      self$`capabilities` <- lapply(RoleModelObject$`capabilities`, function(x) CapabilitiesModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
