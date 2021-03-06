# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data21 Class
#'
#' @field user 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data21 <- R6::R6Class(
  'Data21',
  public = list(
    `user` = NULL,
    initialize = function(`user`){
      if (!missing(`user`)) {
        stopifnot(is.character(`user`), length(`user`) == 1)
        self$`user` <- `user`
      }
    },
    toJSON = function() {
      Data21Object <- list()
      if (!is.null(self$`user`)) {
        Data21Object[['user']] <- self$`user`
      }

      Data21Object
    },
    fromJSON = function(Data21Json) {
      Data21Object <- jsonlite::fromJSON(Data21Json)
      if (!is.null(Data21Object$`user`)) {
        self$`user` <- Data21Object$`user`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "user": %s
        }',
        self$`user`
      )
    },
    fromJSONString = function(Data21Json) {
      Data21Object <- jsonlite::fromJSON(Data21Json)
      self$`user` <- Data21Object$`user`
    }
  )
)
