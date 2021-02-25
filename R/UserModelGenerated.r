# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UserModelGenerated Class
#'
#' @field uuid 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserModelGenerated <- R6::R6Class(
  'UserModelGenerated',
  public = list(
    `uuid` = NULL,
    initialize = function(`uuid`){
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
    },
    toJSON = function() {
      UserModelGeneratedObject <- list()
      if (!is.null(self$`uuid`)) {
        UserModelGeneratedObject[['uuid']] <- self$`uuid`
      }

      UserModelGeneratedObject
    },
    fromJSON = function(UserModelGeneratedJson) {
      UserModelGeneratedObject <- jsonlite::fromJSON(UserModelGeneratedJson)
      if (!is.null(UserModelGeneratedObject$`uuid`)) {
        self$`uuid` <- UserModelGeneratedObject$`uuid`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "uuid": %s
        }',
        self$`uuid`
      )
    },
    fromJSONString = function(UserModelGeneratedJson) {
      UserModelGeneratedObject <- jsonlite::fromJSON(UserModelGeneratedJson)
      self$`uuid` <- UserModelGeneratedObject$`uuid`
    }
  )
)
