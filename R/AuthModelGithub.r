# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AuthModelGithub Class
#'
#' @field username 
#' @field organization 
#' @field token 
#' @field code 
#' @field clientId 
#' @field clientSecret 
#' @field updatedAt 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AuthModelGithub <- R6::R6Class(
  'AuthModelGithub',
  public = list(
    `username` = NULL,
    `organization` = NULL,
    `token` = NULL,
    `code` = NULL,
    `clientId` = NULL,
    `clientSecret` = NULL,
    `updatedAt` = NULL,
    initialize = function(`username`, `organization`, `token`, `code`, `clientId`, `clientSecret`, `updatedAt`){
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`organization`)) {
        stopifnot(is.character(`organization`), length(`organization`) == 1)
        self$`organization` <- `organization`
      }
      if (!missing(`token`)) {
        stopifnot(is.character(`token`), length(`token`) == 1)
        self$`token` <- `token`
      }
      if (!missing(`code`)) {
        stopifnot(is.character(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
      if (!missing(`clientId`)) {
        stopifnot(is.character(`clientId`), length(`clientId`) == 1)
        self$`clientId` <- `clientId`
      }
      if (!missing(`clientSecret`)) {
        stopifnot(is.character(`clientSecret`), length(`clientSecret`) == 1)
        self$`clientSecret` <- `clientSecret`
      }
      if (!missing(`updatedAt`)) {
        stopifnot(is.character(`updatedAt`), length(`updatedAt`) == 1)
        self$`updatedAt` <- `updatedAt`
      }
    },
    toJSON = function() {
      AuthModelGithubObject <- list()
      if (!is.null(self$`username`)) {
        AuthModelGithubObject[['username']] <- self$`username`
      }
      if (!is.null(self$`organization`)) {
        AuthModelGithubObject[['organization']] <- self$`organization`
      }
      if (!is.null(self$`token`)) {
        AuthModelGithubObject[['token']] <- self$`token`
      }
      if (!is.null(self$`code`)) {
        AuthModelGithubObject[['code']] <- self$`code`
      }
      if (!is.null(self$`clientId`)) {
        AuthModelGithubObject[['clientId']] <- self$`clientId`
      }
      if (!is.null(self$`clientSecret`)) {
        AuthModelGithubObject[['clientSecret']] <- self$`clientSecret`
      }
      if (!is.null(self$`updatedAt`)) {
        AuthModelGithubObject[['updatedAt']] <- self$`updatedAt`
      }

      AuthModelGithubObject
    },
    fromJSON = function(AuthModelGithubJson) {
      AuthModelGithubObject <- jsonlite::fromJSON(AuthModelGithubJson)
      if (!is.null(AuthModelGithubObject$`username`)) {
        self$`username` <- AuthModelGithubObject$`username`
      }
      if (!is.null(AuthModelGithubObject$`organization`)) {
        self$`organization` <- AuthModelGithubObject$`organization`
      }
      if (!is.null(AuthModelGithubObject$`token`)) {
        self$`token` <- AuthModelGithubObject$`token`
      }
      if (!is.null(AuthModelGithubObject$`code`)) {
        self$`code` <- AuthModelGithubObject$`code`
      }
      if (!is.null(AuthModelGithubObject$`clientId`)) {
        self$`clientId` <- AuthModelGithubObject$`clientId`
      }
      if (!is.null(AuthModelGithubObject$`clientSecret`)) {
        self$`clientSecret` <- AuthModelGithubObject$`clientSecret`
      }
      if (!is.null(AuthModelGithubObject$`updatedAt`)) {
        self$`updatedAt` <- AuthModelGithubObject$`updatedAt`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "username": %s,
           "organization": %s,
           "token": %s,
           "code": %s,
           "clientId": %s,
           "clientSecret": %s,
           "updatedAt": %s
        }',
        self$`username`,
        self$`organization`,
        self$`token`,
        self$`code`,
        self$`clientId`,
        self$`clientSecret`,
        self$`updatedAt`
      )
    },
    fromJSONString = function(AuthModelGithubJson) {
      AuthModelGithubObject <- jsonlite::fromJSON(AuthModelGithubJson)
      self$`username` <- AuthModelGithubObject$`username`
      self$`organization` <- AuthModelGithubObject$`organization`
      self$`token` <- AuthModelGithubObject$`token`
      self$`code` <- AuthModelGithubObject$`code`
      self$`clientId` <- AuthModelGithubObject$`clientId`
      self$`clientSecret` <- AuthModelGithubObject$`clientSecret`
      self$`updatedAt` <- AuthModelGithubObject$`updatedAt`
    }
  )
)
