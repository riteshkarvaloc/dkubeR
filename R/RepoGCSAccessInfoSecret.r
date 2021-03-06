# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RepoGCSAccessInfoSecret Class
#'
#' @field name 
#' @field content 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RepoGCSAccessInfoSecret <- R6::R6Class(
  'RepoGCSAccessInfoSecret',
  public = list(
    `name` = NULL,
    `content` = NULL,
    initialize = function(`name`, `content`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`content`)) {
        stopifnot(is.character(`content`), length(`content`) == 1)
        self$`content` <- `content`
      }
    },
    toJSON = function() {
      RepoGCSAccessInfoSecretObject <- list()
      if (!is.null(self$`name`)) {
        RepoGCSAccessInfoSecretObject[['name']] <- self$`name`
      }
      if (!is.null(self$`content`)) {
        RepoGCSAccessInfoSecretObject[['content']] <- self$`content`
      }

      RepoGCSAccessInfoSecretObject
    },
    fromJSON = function(RepoGCSAccessInfoSecretJson) {
      RepoGCSAccessInfoSecretObject <- jsonlite::fromJSON(RepoGCSAccessInfoSecretJson)
      if (!is.null(RepoGCSAccessInfoSecretObject$`name`)) {
        self$`name` <- RepoGCSAccessInfoSecretObject$`name`
      }
      if (!is.null(RepoGCSAccessInfoSecretObject$`content`)) {
        self$`content` <- RepoGCSAccessInfoSecretObject$`content`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "content": %s
        }',
        self$`name`,
        self$`content`
      )
    },
    fromJSONString = function(RepoGCSAccessInfoSecretJson) {
      RepoGCSAccessInfoSecretObject <- jsonlite::fromJSON(RepoGCSAccessInfoSecretJson)
      self$`name` <- RepoGCSAccessInfoSecretObject$`name`
      self$`content` <- RepoGCSAccessInfoSecretObject$`content`
    }
  )
)
