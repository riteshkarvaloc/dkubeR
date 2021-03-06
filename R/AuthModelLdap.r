# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AuthModelLdap Class
#'
#' @field username 
#' @field password 
#' @field basedn 
#' @field cacert 
#' @field scope 
#' @field userAttr 
#' @field groupAttr 
#' @field groupFilter 
#' @field userFilter 
#' @field binddn 
#' @field endpoint 
#' @field advanced 
#' @field updatedAt 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AuthModelLdap <- R6::R6Class(
  'AuthModelLdap',
  public = list(
    `username` = NULL,
    `password` = NULL,
    `basedn` = NULL,
    `cacert` = NULL,
    `scope` = NULL,
    `userAttr` = NULL,
    `groupAttr` = NULL,
    `groupFilter` = NULL,
    `userFilter` = NULL,
    `binddn` = NULL,
    `endpoint` = NULL,
    `advanced` = NULL,
    `updatedAt` = NULL,
    initialize = function(`username`, `password`, `basedn`, `cacert`, `scope`, `userAttr`, `groupAttr`, `groupFilter`, `userFilter`, `binddn`, `endpoint`, `advanced`, `updatedAt`){
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`password`)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
        self$`password` <- `password`
      }
      if (!missing(`basedn`)) {
        stopifnot(is.character(`basedn`), length(`basedn`) == 1)
        self$`basedn` <- `basedn`
      }
      if (!missing(`cacert`)) {
        stopifnot(R6::is.R6(`cacert`))
        self$`cacert` <- `cacert`
      }
      if (!missing(`scope`)) {
        stopifnot(is.character(`scope`), length(`scope`) == 1)
        self$`scope` <- `scope`
      }
      if (!missing(`userAttr`)) {
        stopifnot(is.character(`userAttr`), length(`userAttr`) == 1)
        self$`userAttr` <- `userAttr`
      }
      if (!missing(`groupAttr`)) {
        stopifnot(is.character(`groupAttr`), length(`groupAttr`) == 1)
        self$`groupAttr` <- `groupAttr`
      }
      if (!missing(`groupFilter`)) {
        stopifnot(is.character(`groupFilter`), length(`groupFilter`) == 1)
        self$`groupFilter` <- `groupFilter`
      }
      if (!missing(`userFilter`)) {
        stopifnot(is.character(`userFilter`), length(`userFilter`) == 1)
        self$`userFilter` <- `userFilter`
      }
      if (!missing(`binddn`)) {
        stopifnot(is.character(`binddn`), length(`binddn`) == 1)
        self$`binddn` <- `binddn`
      }
      if (!missing(`endpoint`)) {
        stopifnot(is.character(`endpoint`), length(`endpoint`) == 1)
        self$`endpoint` <- `endpoint`
      }
      if (!missing(`advanced`)) {
        stopifnot(R6::is.R6(`advanced`))
        self$`advanced` <- `advanced`
      }
      if (!missing(`updatedAt`)) {
        stopifnot(is.character(`updatedAt`), length(`updatedAt`) == 1)
        self$`updatedAt` <- `updatedAt`
      }
    },
    toJSON = function() {
      AuthModelLdapObject <- list()
      if (!is.null(self$`username`)) {
        AuthModelLdapObject[['username']] <- self$`username`
      }
      if (!is.null(self$`password`)) {
        AuthModelLdapObject[['password']] <- self$`password`
      }
      if (!is.null(self$`basedn`)) {
        AuthModelLdapObject[['basedn']] <- self$`basedn`
      }
      if (!is.null(self$`cacert`)) {
        AuthModelLdapObject[['cacert']] <- self$`cacert`$toJSON()
      }
      if (!is.null(self$`scope`)) {
        AuthModelLdapObject[['scope']] <- self$`scope`
      }
      if (!is.null(self$`userAttr`)) {
        AuthModelLdapObject[['userAttr']] <- self$`userAttr`
      }
      if (!is.null(self$`groupAttr`)) {
        AuthModelLdapObject[['groupAttr']] <- self$`groupAttr`
      }
      if (!is.null(self$`groupFilter`)) {
        AuthModelLdapObject[['groupFilter']] <- self$`groupFilter`
      }
      if (!is.null(self$`userFilter`)) {
        AuthModelLdapObject[['userFilter']] <- self$`userFilter`
      }
      if (!is.null(self$`binddn`)) {
        AuthModelLdapObject[['binddn']] <- self$`binddn`
      }
      if (!is.null(self$`endpoint`)) {
        AuthModelLdapObject[['endpoint']] <- self$`endpoint`
      }
      if (!is.null(self$`advanced`)) {
        AuthModelLdapObject[['advanced']] <- self$`advanced`$toJSON()
      }
      if (!is.null(self$`updatedAt`)) {
        AuthModelLdapObject[['updatedAt']] <- self$`updatedAt`
      }

      AuthModelLdapObject
    },
    fromJSON = function(AuthModelLdapJson) {
      AuthModelLdapObject <- jsonlite::fromJSON(AuthModelLdapJson)
      if (!is.null(AuthModelLdapObject$`username`)) {
        self$`username` <- AuthModelLdapObject$`username`
      }
      if (!is.null(AuthModelLdapObject$`password`)) {
        self$`password` <- AuthModelLdapObject$`password`
      }
      if (!is.null(AuthModelLdapObject$`basedn`)) {
        self$`basedn` <- AuthModelLdapObject$`basedn`
      }
      if (!is.null(AuthModelLdapObject$`cacert`)) {
        cacertObject <- CertFileModel$new()
        cacertObject$fromJSON(jsonlite::toJSON(AuthModelLdapObject$cacert, auto_unbox = TRUE))
        self$`cacert` <- cacertObject
      }
      if (!is.null(AuthModelLdapObject$`scope`)) {
        self$`scope` <- AuthModelLdapObject$`scope`
      }
      if (!is.null(AuthModelLdapObject$`userAttr`)) {
        self$`userAttr` <- AuthModelLdapObject$`userAttr`
      }
      if (!is.null(AuthModelLdapObject$`groupAttr`)) {
        self$`groupAttr` <- AuthModelLdapObject$`groupAttr`
      }
      if (!is.null(AuthModelLdapObject$`groupFilter`)) {
        self$`groupFilter` <- AuthModelLdapObject$`groupFilter`
      }
      if (!is.null(AuthModelLdapObject$`userFilter`)) {
        self$`userFilter` <- AuthModelLdapObject$`userFilter`
      }
      if (!is.null(AuthModelLdapObject$`binddn`)) {
        self$`binddn` <- AuthModelLdapObject$`binddn`
      }
      if (!is.null(AuthModelLdapObject$`endpoint`)) {
        self$`endpoint` <- AuthModelLdapObject$`endpoint`
      }
      if (!is.null(AuthModelLdapObject$`advanced`)) {
        advancedObject <- AuthModelLdapAdvanced$new()
        advancedObject$fromJSON(jsonlite::toJSON(AuthModelLdapObject$advanced, auto_unbox = TRUE))
        self$`advanced` <- advancedObject
      }
      if (!is.null(AuthModelLdapObject$`updatedAt`)) {
        self$`updatedAt` <- AuthModelLdapObject$`updatedAt`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "username": %s,
           "password": %s,
           "basedn": %s,
           "cacert": %s,
           "scope": %s,
           "userAttr": %s,
           "groupAttr": %s,
           "groupFilter": %s,
           "userFilter": %s,
           "binddn": %s,
           "endpoint": %s,
           "advanced": %s,
           "updatedAt": %s
        }',
        self$`username`,
        self$`password`,
        self$`basedn`,
        self$`cacert`$toJSON(),
        self$`scope`,
        self$`userAttr`,
        self$`groupAttr`,
        self$`groupFilter`,
        self$`userFilter`,
        self$`binddn`,
        self$`endpoint`,
        self$`advanced`$toJSON(),
        self$`updatedAt`
      )
    },
    fromJSONString = function(AuthModelLdapJson) {
      AuthModelLdapObject <- jsonlite::fromJSON(AuthModelLdapJson)
      self$`username` <- AuthModelLdapObject$`username`
      self$`password` <- AuthModelLdapObject$`password`
      self$`basedn` <- AuthModelLdapObject$`basedn`
      CertFileModelObject <- CertFileModel$new()
      self$`cacert` <- CertFileModelObject$fromJSON(jsonlite::toJSON(AuthModelLdapObject$cacert, auto_unbox = TRUE))
      self$`scope` <- AuthModelLdapObject$`scope`
      self$`userAttr` <- AuthModelLdapObject$`userAttr`
      self$`groupAttr` <- AuthModelLdapObject$`groupAttr`
      self$`groupFilter` <- AuthModelLdapObject$`groupFilter`
      self$`userFilter` <- AuthModelLdapObject$`userFilter`
      self$`binddn` <- AuthModelLdapObject$`binddn`
      self$`endpoint` <- AuthModelLdapObject$`endpoint`
      AuthModelLdapAdvancedObject <- AuthModelLdapAdvanced$new()
      self$`advanced` <- AuthModelLdapAdvancedObject$fromJSON(jsonlite::toJSON(AuthModelLdapObject$advanced, auto_unbox = TRUE))
      self$`updatedAt` <- AuthModelLdapObject$`updatedAt`
    }
  )
)
