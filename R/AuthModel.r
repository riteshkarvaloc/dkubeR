# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AuthModel Class
#'
#' @field mode 
#' @field code 
#' @field providers 
#' @field ldap 
#' @field github 
#' @field keycloak 
#' @field local 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AuthModel <- R6::R6Class(
  'AuthModel',
  public = list(
    `mode` = NULL,
    `code` = NULL,
    `providers` = NULL,
    `ldap` = NULL,
    `github` = NULL,
    `keycloak` = NULL,
    `local` = NULL,
    initialize = function(`mode`, `code`, `providers`, `ldap`, `github`, `keycloak`, `local`){
      if (!missing(`mode`)) {
        stopifnot(is.character(`mode`), length(`mode`) == 1)
        self$`mode` <- `mode`
      }
      if (!missing(`code`)) {
        stopifnot(is.character(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
      if (!missing(`providers`)) {
        stopifnot(is.list(`providers`), length(`providers`) != 0)
        lapply(`providers`, function(x) stopifnot(is.character(x)))
        self$`providers` <- `providers`
      }
      if (!missing(`ldap`)) {
        stopifnot(R6::is.R6(`ldap`))
        self$`ldap` <- `ldap`
      }
      if (!missing(`github`)) {
        stopifnot(R6::is.R6(`github`))
        self$`github` <- `github`
      }
      if (!missing(`keycloak`)) {
        stopifnot(R6::is.R6(`keycloak`))
        self$`keycloak` <- `keycloak`
      }
      if (!missing(`local`)) {
        stopifnot(R6::is.R6(`local`))
        self$`local` <- `local`
      }
    },
    toJSON = function() {
      AuthModelObject <- list()
      if (!is.null(self$`mode`)) {
        AuthModelObject[['mode']] <- self$`mode`
      }
      if (!is.null(self$`code`)) {
        AuthModelObject[['code']] <- self$`code`
      }
      if (!is.null(self$`providers`)) {
        AuthModelObject[['providers']] <- self$`providers`
      }
      if (!is.null(self$`ldap`)) {
        AuthModelObject[['ldap']] <- self$`ldap`$toJSON()
      }
      if (!is.null(self$`github`)) {
        AuthModelObject[['github']] <- self$`github`$toJSON()
      }
      if (!is.null(self$`keycloak`)) {
        AuthModelObject[['keycloak']] <- self$`keycloak`$toJSON()
      }
      if (!is.null(self$`local`)) {
        AuthModelObject[['local']] <- self$`local`$toJSON()
      }

      AuthModelObject
    },
    fromJSON = function(AuthModelJson) {
      AuthModelObject <- jsonlite::fromJSON(AuthModelJson)
      if (!is.null(AuthModelObject$`mode`)) {
        self$`mode` <- AuthModelObject$`mode`
      }
      if (!is.null(AuthModelObject$`code`)) {
        self$`code` <- AuthModelObject$`code`
      }
      if (!is.null(AuthModelObject$`providers`)) {
        self$`providers` <- AuthModelObject$`providers`
      }
      if (!is.null(AuthModelObject$`ldap`)) {
        ldapObject <- AuthModelLdap$new()
        ldapObject$fromJSON(jsonlite::toJSON(AuthModelObject$ldap, auto_unbox = TRUE))
        self$`ldap` <- ldapObject
      }
      if (!is.null(AuthModelObject$`github`)) {
        githubObject <- AuthModelGithub$new()
        githubObject$fromJSON(jsonlite::toJSON(AuthModelObject$github, auto_unbox = TRUE))
        self$`github` <- githubObject
      }
      if (!is.null(AuthModelObject$`keycloak`)) {
        keycloakObject <- AuthModelKeycloak$new()
        keycloakObject$fromJSON(jsonlite::toJSON(AuthModelObject$keycloak, auto_unbox = TRUE))
        self$`keycloak` <- keycloakObject
      }
      if (!is.null(AuthModelObject$`local`)) {
        localObject <- AuthModelLocal$new()
        localObject$fromJSON(jsonlite::toJSON(AuthModelObject$local, auto_unbox = TRUE))
        self$`local` <- localObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "mode": %s,
           "code": %s,
           "providers": [%s],
           "ldap": %s,
           "github": %s,
           "keycloak": %s,
           "local": %s
        }',
        self$`mode`,
        self$`code`,
        lapply(self$`providers`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`ldap`$toJSON(),
        self$`github`$toJSON(),
        self$`keycloak`$toJSON(),
        self$`local`$toJSON()
      )
    },
    fromJSONString = function(AuthModelJson) {
      AuthModelObject <- jsonlite::fromJSON(AuthModelJson)
      self$`mode` <- AuthModelObject$`mode`
      self$`code` <- AuthModelObject$`code`
      self$`providers` <- AuthModelObject$`providers`
      AuthModelLdapObject <- AuthModelLdap$new()
      self$`ldap` <- AuthModelLdapObject$fromJSON(jsonlite::toJSON(AuthModelObject$ldap, auto_unbox = TRUE))
      AuthModelGithubObject <- AuthModelGithub$new()
      self$`github` <- AuthModelGithubObject$fromJSON(jsonlite::toJSON(AuthModelObject$github, auto_unbox = TRUE))
      AuthModelKeycloakObject <- AuthModelKeycloak$new()
      self$`keycloak` <- AuthModelKeycloakObject$fromJSON(jsonlite::toJSON(AuthModelObject$keycloak, auto_unbox = TRUE))
      AuthModelLocalObject <- AuthModelLocal$new()
      self$`local` <- AuthModelLocalObject$fromJSON(jsonlite::toJSON(AuthModelObject$local, auto_unbox = TRUE))
    }
  )
)
