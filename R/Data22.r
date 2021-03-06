# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data22 Class
#'
#' @field upsert 
#' @field groupname 
#' @field users 
#' @field pools 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data22 <- R6::R6Class(
  'Data22',
  public = list(
    `upsert` = NULL,
    `groupname` = NULL,
    `users` = NULL,
    `pools` = NULL,
    initialize = function(`upsert`, `groupname`, `users`, `pools`){
      if (!missing(`upsert`)) {
        self$`upsert` <- `upsert`
      }
      if (!missing(`groupname`)) {
        stopifnot(is.character(`groupname`), length(`groupname`) == 1)
        self$`groupname` <- `groupname`
      }
      if (!missing(`users`)) {
        stopifnot(is.list(`users`), length(`users`) != 0)
        lapply(`users`, function(x) stopifnot(is.character(x)))
        self$`users` <- `users`
      }
      if (!missing(`pools`)) {
        stopifnot(is.list(`pools`), length(`pools`) != 0)
        lapply(`pools`, function(x) stopifnot(is.character(x)))
        self$`pools` <- `pools`
      }
    },
    toJSON = function() {
      Data22Object <- list()
      if (!is.null(self$`upsert`)) {
        Data22Object[['upsert']] <- self$`upsert`
      }
      if (!is.null(self$`groupname`)) {
        Data22Object[['groupname']] <- self$`groupname`
      }
      if (!is.null(self$`users`)) {
        Data22Object[['users']] <- self$`users`
      }
      if (!is.null(self$`pools`)) {
        Data22Object[['pools']] <- self$`pools`
      }

      Data22Object
    },
    fromJSON = function(Data22Json) {
      Data22Object <- jsonlite::fromJSON(Data22Json)
      if (!is.null(Data22Object$`upsert`)) {
        self$`upsert` <- Data22Object$`upsert`
      }
      if (!is.null(Data22Object$`groupname`)) {
        self$`groupname` <- Data22Object$`groupname`
      }
      if (!is.null(Data22Object$`users`)) {
        self$`users` <- Data22Object$`users`
      }
      if (!is.null(Data22Object$`pools`)) {
        self$`pools` <- Data22Object$`pools`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "upsert": %s,
           "groupname": %s,
           "users": [%s],
           "pools": [%s]
        }',
        self$`upsert`,
        self$`groupname`,
        lapply(self$`users`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`pools`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(Data22Json) {
      Data22Object <- jsonlite::fromJSON(Data22Json)
      self$`upsert` <- Data22Object$`upsert`
      self$`groupname` <- Data22Object$`groupname`
      self$`users` <- Data22Object$`users`
      self$`pools` <- Data22Object$`pools`
    }
  )
)
