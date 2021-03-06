# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GitAccessCredentials Class
#'
#' @field username 
#' @field password 
#' @field apikey 
#' @field sshkey 
#' @field isprivate 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GitAccessCredentials <- R6::R6Class(
  'GitAccessCredentials',
  public = list(
    `username` = NULL,
    `password` = NULL,
    `apikey` = NULL,
    `sshkey` = NULL,
    `isprivate` = NULL,
    initialize = function(`username`, `password`, `apikey`, `sshkey`, `isprivate`){
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`password`)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
        self$`password` <- `password`
      }
      if (!missing(`apikey`)) {
        stopifnot(is.character(`apikey`), length(`apikey`) == 1)
        self$`apikey` <- `apikey`
      }
      if (!missing(`sshkey`)) {
        stopifnot(is.character(`sshkey`), length(`sshkey`) == 1)
        self$`sshkey` <- `sshkey`
      }
      if (!missing(`isprivate`)) {
        self$`isprivate` <- `isprivate`
      }
    },
    toJSON = function() {
      GitAccessCredentialsObject <- list()
      if (!is.null(self$`username`)) {
        GitAccessCredentialsObject[['username']] <- self$`username`
      }
      if (!is.null(self$`password`)) {
        GitAccessCredentialsObject[['password']] <- self$`password`
      }
      if (!is.null(self$`apikey`)) {
        GitAccessCredentialsObject[['apikey']] <- self$`apikey`
      }
      if (!is.null(self$`sshkey`)) {
        GitAccessCredentialsObject[['sshkey']] <- self$`sshkey`
      }
      if (!is.null(self$`isprivate`)) {
        GitAccessCredentialsObject[['isprivate']] <- self$`isprivate`
      }

      GitAccessCredentialsObject
    },
    fromJSON = function(GitAccessCredentialsJson) {
      GitAccessCredentialsObject <- jsonlite::fromJSON(GitAccessCredentialsJson)
      if (!is.null(GitAccessCredentialsObject$`username`)) {
        self$`username` <- GitAccessCredentialsObject$`username`
      }
      if (!is.null(GitAccessCredentialsObject$`password`)) {
        self$`password` <- GitAccessCredentialsObject$`password`
      }
      if (!is.null(GitAccessCredentialsObject$`apikey`)) {
        self$`apikey` <- GitAccessCredentialsObject$`apikey`
      }
      if (!is.null(GitAccessCredentialsObject$`sshkey`)) {
        self$`sshkey` <- GitAccessCredentialsObject$`sshkey`
      }
      if (!is.null(GitAccessCredentialsObject$`isprivate`)) {
        self$`isprivate` <- GitAccessCredentialsObject$`isprivate`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "username": %s,
           "password": %s,
           "apikey": %s,
           "sshkey": %s,
           "isprivate": %s
        }',
        self$`username`,
        self$`password`,
        self$`apikey`,
        self$`sshkey`,
        self$`isprivate`
      )
    },
    fromJSONString = function(GitAccessCredentialsJson) {
      GitAccessCredentialsObject <- jsonlite::fromJSON(GitAccessCredentialsJson)
      self$`username` <- GitAccessCredentialsObject$`username`
      self$`password` <- GitAccessCredentialsObject$`password`
      self$`apikey` <- GitAccessCredentialsObject$`apikey`
      self$`sshkey` <- GitAccessCredentialsObject$`sshkey`
      self$`isprivate` <- GitAccessCredentialsObject$`isprivate`
    }
  )
)
