# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ServingResultModel Class
#'
#' @field modeldir 
#' @field servingurl 
#' @field curlcmd 
#' @field apiPrefix 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServingResultModel <- R6::R6Class(
  'ServingResultModel',
  public = list(
    `modeldir` = NULL,
    `servingurl` = NULL,
    `curlcmd` = NULL,
    `apiPrefix` = NULL,
    initialize = function(`modeldir`, `servingurl`, `curlcmd`, `apiPrefix`){
      if (!missing(`modeldir`)) {
        stopifnot(is.character(`modeldir`), length(`modeldir`) == 1)
        self$`modeldir` <- `modeldir`
      }
      if (!missing(`servingurl`)) {
        stopifnot(is.character(`servingurl`), length(`servingurl`) == 1)
        self$`servingurl` <- `servingurl`
      }
      if (!missing(`curlcmd`)) {
        stopifnot(is.character(`curlcmd`), length(`curlcmd`) == 1)
        self$`curlcmd` <- `curlcmd`
      }
      if (!missing(`apiPrefix`)) {
        stopifnot(is.character(`apiPrefix`), length(`apiPrefix`) == 1)
        self$`apiPrefix` <- `apiPrefix`
      }
    },
    toJSON = function() {
      ServingResultModelObject <- list()
      if (!is.null(self$`modeldir`)) {
        ServingResultModelObject[['modeldir']] <- self$`modeldir`
      }
      if (!is.null(self$`servingurl`)) {
        ServingResultModelObject[['servingurl']] <- self$`servingurl`
      }
      if (!is.null(self$`curlcmd`)) {
        ServingResultModelObject[['curlcmd']] <- self$`curlcmd`
      }
      if (!is.null(self$`apiPrefix`)) {
        ServingResultModelObject[['apiPrefix']] <- self$`apiPrefix`
      }

      ServingResultModelObject
    },
    fromJSON = function(ServingResultModelJson) {
      ServingResultModelObject <- jsonlite::fromJSON(ServingResultModelJson)
      if (!is.null(ServingResultModelObject$`modeldir`)) {
        self$`modeldir` <- ServingResultModelObject$`modeldir`
      }
      if (!is.null(ServingResultModelObject$`servingurl`)) {
        self$`servingurl` <- ServingResultModelObject$`servingurl`
      }
      if (!is.null(ServingResultModelObject$`curlcmd`)) {
        self$`curlcmd` <- ServingResultModelObject$`curlcmd`
      }
      if (!is.null(ServingResultModelObject$`apiPrefix`)) {
        self$`apiPrefix` <- ServingResultModelObject$`apiPrefix`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "modeldir": %s,
           "servingurl": %s,
           "curlcmd": %s,
           "apiPrefix": %s
        }',
        self$`modeldir`,
        self$`servingurl`,
        self$`curlcmd`,
        self$`apiPrefix`
      )
    },
    fromJSONString = function(ServingResultModelJson) {
      ServingResultModelObject <- jsonlite::fromJSON(ServingResultModelJson)
      self$`modeldir` <- ServingResultModelObject$`modeldir`
      self$`servingurl` <- ServingResultModelObject$`servingurl`
      self$`curlcmd` <- ServingResultModelObject$`curlcmd`
      self$`apiPrefix` <- ServingResultModelObject$`apiPrefix`
    }
  )
)
