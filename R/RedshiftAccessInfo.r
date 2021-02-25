# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RedshiftAccessInfo Class
#'
#' @field endpoint 
#' @field username 
#' @field password 
#' @field database 
#' @field region 
#' @field cacert 
#' @field insecureSSL 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RedshiftAccessInfo <- R6::R6Class(
  'RedshiftAccessInfo',
  public = list(
    `endpoint` = NULL,
    `username` = NULL,
    `password` = NULL,
    `database` = NULL,
    `region` = NULL,
    `cacert` = NULL,
    `insecureSSL` = NULL,
    initialize = function(`endpoint`, `username`, `password`, `database`, `region`, `cacert`, `insecureSSL`){
      if (!missing(`endpoint`)) {
        stopifnot(is.character(`endpoint`), length(`endpoint`) == 1)
        self$`endpoint` <- `endpoint`
      }
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`password`)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
        self$`password` <- `password`
      }
      if (!missing(`database`)) {
        stopifnot(is.character(`database`), length(`database`) == 1)
        self$`database` <- `database`
      }
      if (!missing(`region`)) {
        stopifnot(is.character(`region`), length(`region`) == 1)
        self$`region` <- `region`
      }
      if (!missing(`cacert`)) {
        stopifnot(R6::is.R6(`cacert`))
        self$`cacert` <- `cacert`
      }
      if (!missing(`insecureSSL`)) {
        self$`insecureSSL` <- `insecureSSL`
      }
    },
    toJSON = function() {
      RedshiftAccessInfoObject <- list()
      if (!is.null(self$`endpoint`)) {
        RedshiftAccessInfoObject[['endpoint']] <- self$`endpoint`
      }
      if (!is.null(self$`username`)) {
        RedshiftAccessInfoObject[['username']] <- self$`username`
      }
      if (!is.null(self$`password`)) {
        RedshiftAccessInfoObject[['password']] <- self$`password`
      }
      if (!is.null(self$`database`)) {
        RedshiftAccessInfoObject[['database']] <- self$`database`
      }
      if (!is.null(self$`region`)) {
        RedshiftAccessInfoObject[['region']] <- self$`region`
      }
      if (!is.null(self$`cacert`)) {
        RedshiftAccessInfoObject[['cacert']] <- self$`cacert`$toJSON()
      }
      if (!is.null(self$`insecureSSL`)) {
        RedshiftAccessInfoObject[['insecureSSL']] <- self$`insecureSSL`
      }

      RedshiftAccessInfoObject
    },
    fromJSON = function(RedshiftAccessInfoJson) {
      RedshiftAccessInfoObject <- jsonlite::fromJSON(RedshiftAccessInfoJson)
      if (!is.null(RedshiftAccessInfoObject$`endpoint`)) {
        self$`endpoint` <- RedshiftAccessInfoObject$`endpoint`
      }
      if (!is.null(RedshiftAccessInfoObject$`username`)) {
        self$`username` <- RedshiftAccessInfoObject$`username`
      }
      if (!is.null(RedshiftAccessInfoObject$`password`)) {
        self$`password` <- RedshiftAccessInfoObject$`password`
      }
      if (!is.null(RedshiftAccessInfoObject$`database`)) {
        self$`database` <- RedshiftAccessInfoObject$`database`
      }
      if (!is.null(RedshiftAccessInfoObject$`region`)) {
        self$`region` <- RedshiftAccessInfoObject$`region`
      }
      if (!is.null(RedshiftAccessInfoObject$`cacert`)) {
        cacertObject <- CertFileModel$new()
        cacertObject$fromJSON(jsonlite::toJSON(RedshiftAccessInfoObject$cacert, auto_unbox = TRUE))
        self$`cacert` <- cacertObject
      }
      if (!is.null(RedshiftAccessInfoObject$`insecureSSL`)) {
        self$`insecureSSL` <- RedshiftAccessInfoObject$`insecureSSL`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "endpoint": %s,
           "username": %s,
           "password": %s,
           "database": %s,
           "region": %s,
           "cacert": %s,
           "insecureSSL": %s
        }',
        self$`endpoint`,
        self$`username`,
        self$`password`,
        self$`database`,
        self$`region`,
        self$`cacert`$toJSON(),
        self$`insecureSSL`
      )
    },
    fromJSONString = function(RedshiftAccessInfoJson) {
      RedshiftAccessInfoObject <- jsonlite::fromJSON(RedshiftAccessInfoJson)
      self$`endpoint` <- RedshiftAccessInfoObject$`endpoint`
      self$`username` <- RedshiftAccessInfoObject$`username`
      self$`password` <- RedshiftAccessInfoObject$`password`
      self$`database` <- RedshiftAccessInfoObject$`database`
      self$`region` <- RedshiftAccessInfoObject$`region`
      CertFileModelObject <- CertFileModel$new()
      self$`cacert` <- CertFileModelObject$fromJSON(jsonlite::toJSON(RedshiftAccessInfoObject$cacert, auto_unbox = TRUE))
      self$`insecureSSL` <- RedshiftAccessInfoObject$`insecureSSL`
    }
  )
)
