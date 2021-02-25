# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RepoGCSAccessInfo Class
#'
#' @field secret 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RepoGCSAccessInfo <- R6::R6Class(
  'RepoGCSAccessInfo',
  public = list(
    `secret` = NULL,
    initialize = function(`secret`){
      if (!missing(`secret`)) {
        stopifnot(R6::is.R6(`secret`))
        self$`secret` <- `secret`
      }
    },
    toJSON = function() {
      RepoGCSAccessInfoObject <- list()
      if (!is.null(self$`secret`)) {
        RepoGCSAccessInfoObject[['secret']] <- self$`secret`$toJSON()
      }

      RepoGCSAccessInfoObject
    },
    fromJSON = function(RepoGCSAccessInfoJson) {
      RepoGCSAccessInfoObject <- jsonlite::fromJSON(RepoGCSAccessInfoJson)
      if (!is.null(RepoGCSAccessInfoObject$`secret`)) {
        secretObject <- RepoGCSAccessInfoSecret$new()
        secretObject$fromJSON(jsonlite::toJSON(RepoGCSAccessInfoObject$secret, auto_unbox = TRUE))
        self$`secret` <- secretObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "secret": %s
        }',
        self$`secret`$toJSON()
      )
    },
    fromJSONString = function(RepoGCSAccessInfoJson) {
      RepoGCSAccessInfoObject <- jsonlite::fromJSON(RepoGCSAccessInfoJson)
      RepoGCSAccessInfoSecretObject <- RepoGCSAccessInfoSecret$new()
      self$`secret` <- RepoGCSAccessInfoSecretObject$fromJSON(jsonlite::toJSON(RepoGCSAccessInfoObject$secret, auto_unbox = TRUE))
    }
  )
)
