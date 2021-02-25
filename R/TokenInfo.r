# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TokenInfo Class
#'
#' @field username 
#' @field role 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenInfo <- R6::R6Class(
  'TokenInfo',
  public = list(
    `username` = NULL,
    `role` = NULL,
    initialize = function(`username`, `role`){
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`role`)) {
        stopifnot(is.character(`role`), length(`role`) == 1)
        self$`role` <- `role`
      }
    },
    toJSON = function() {
      TokenInfoObject <- list()
      if (!is.null(self$`username`)) {
        TokenInfoObject[['username']] <- self$`username`
      }
      if (!is.null(self$`role`)) {
        TokenInfoObject[['role']] <- self$`role`
      }

      TokenInfoObject
    },
    fromJSON = function(TokenInfoJson) {
      TokenInfoObject <- jsonlite::fromJSON(TokenInfoJson)
      if (!is.null(TokenInfoObject$`username`)) {
        self$`username` <- TokenInfoObject$`username`
      }
      if (!is.null(TokenInfoObject$`role`)) {
        self$`role` <- TokenInfoObject$`role`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "username": %s,
           "role": %s
        }',
        self$`username`,
        self$`role`
      )
    },
    fromJSONString = function(TokenInfoJson) {
      TokenInfoObject <- jsonlite::fromJSON(TokenInfoJson)
      self$`username` <- TokenInfoObject$`username`
      self$`role` <- TokenInfoObject$`role`
    }
  )
)
