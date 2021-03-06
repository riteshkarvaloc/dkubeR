# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' S3AccessCredentials Class
#'
#' @field AccessKeyId 
#' @field AccessKey 
#' @field bucket 
#' @field prefix 
#' @field endpoint 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
S3AccessCredentials <- R6::R6Class(
  'S3AccessCredentials',
  public = list(
    `AccessKeyId` = NULL,
    `AccessKey` = NULL,
    `bucket` = NULL,
    `prefix` = NULL,
    `endpoint` = NULL,
    initialize = function(`AccessKeyId`, `AccessKey`, `bucket`, `prefix`, `endpoint`){
      if (!missing(`AccessKeyId`)) {
        stopifnot(is.character(`AccessKeyId`), length(`AccessKeyId`) == 1)
        self$`AccessKeyId` <- `AccessKeyId`
      }
      if (!missing(`AccessKey`)) {
        stopifnot(is.character(`AccessKey`), length(`AccessKey`) == 1)
        self$`AccessKey` <- `AccessKey`
      }
      if (!missing(`bucket`)) {
        stopifnot(is.character(`bucket`), length(`bucket`) == 1)
        self$`bucket` <- `bucket`
      }
      if (!missing(`prefix`)) {
        stopifnot(is.character(`prefix`), length(`prefix`) == 1)
        self$`prefix` <- `prefix`
      }
      if (!missing(`endpoint`)) {
        stopifnot(is.character(`endpoint`), length(`endpoint`) == 1)
        self$`endpoint` <- `endpoint`
      }
    },
    toJSON = function() {
      S3AccessCredentialsObject <- list()
      if (!is.null(self$`AccessKeyId`)) {
        S3AccessCredentialsObject[['AccessKeyId']] <- self$`AccessKeyId`
      }
      if (!is.null(self$`AccessKey`)) {
        S3AccessCredentialsObject[['AccessKey']] <- self$`AccessKey`
      }
      if (!is.null(self$`bucket`)) {
        S3AccessCredentialsObject[['bucket']] <- self$`bucket`
      }
      if (!is.null(self$`prefix`)) {
        S3AccessCredentialsObject[['prefix']] <- self$`prefix`
      }
      if (!is.null(self$`endpoint`)) {
        S3AccessCredentialsObject[['endpoint']] <- self$`endpoint`
      }

      S3AccessCredentialsObject
    },
    fromJSON = function(S3AccessCredentialsJson) {
      S3AccessCredentialsObject <- jsonlite::fromJSON(S3AccessCredentialsJson)
      if (!is.null(S3AccessCredentialsObject$`AccessKeyId`)) {
        self$`AccessKeyId` <- S3AccessCredentialsObject$`AccessKeyId`
      }
      if (!is.null(S3AccessCredentialsObject$`AccessKey`)) {
        self$`AccessKey` <- S3AccessCredentialsObject$`AccessKey`
      }
      if (!is.null(S3AccessCredentialsObject$`bucket`)) {
        self$`bucket` <- S3AccessCredentialsObject$`bucket`
      }
      if (!is.null(S3AccessCredentialsObject$`prefix`)) {
        self$`prefix` <- S3AccessCredentialsObject$`prefix`
      }
      if (!is.null(S3AccessCredentialsObject$`endpoint`)) {
        self$`endpoint` <- S3AccessCredentialsObject$`endpoint`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "AccessKeyId": %s,
           "AccessKey": %s,
           "bucket": %s,
           "prefix": %s,
           "endpoint": %s
        }',
        self$`AccessKeyId`,
        self$`AccessKey`,
        self$`bucket`,
        self$`prefix`,
        self$`endpoint`
      )
    },
    fromJSONString = function(S3AccessCredentialsJson) {
      S3AccessCredentialsObject <- jsonlite::fromJSON(S3AccessCredentialsJson)
      self$`AccessKeyId` <- S3AccessCredentialsObject$`AccessKeyId`
      self$`AccessKey` <- S3AccessCredentialsObject$`AccessKey`
      self$`bucket` <- S3AccessCredentialsObject$`bucket`
      self$`prefix` <- S3AccessCredentialsObject$`prefix`
      self$`endpoint` <- S3AccessCredentialsObject$`endpoint`
    }
  )
)
