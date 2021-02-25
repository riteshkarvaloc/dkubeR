# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LastUsedCredentials Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LastUsedCredentials <- R6::R6Class(
  'LastUsedCredentials',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      LastUsedCredentialsObject <- list()

      LastUsedCredentialsObject
    },
    fromJSON = function(LastUsedCredentialsJson) {
      LastUsedCredentialsObject <- jsonlite::fromJSON(LastUsedCredentialsJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(LastUsedCredentialsJson) {
      LastUsedCredentialsObject <- jsonlite::fromJSON(LastUsedCredentialsJson)
    }
  )
)
