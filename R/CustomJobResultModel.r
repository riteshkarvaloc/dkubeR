# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CustomJobResultModel Class
#'
#' @field url 
#' @field outdir 
#' @field view 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomJobResultModel <- R6::R6Class(
  'CustomJobResultModel',
  public = list(
    `url` = NULL,
    `outdir` = NULL,
    `view` = NULL,
    initialize = function(`url`, `outdir`, `view`){
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`outdir`)) {
        stopifnot(is.character(`outdir`), length(`outdir`) == 1)
        self$`outdir` <- `outdir`
      }
      if (!missing(`view`)) {
        stopifnot(R6::is.R6(`view`))
        self$`view` <- `view`
      }
    },
    toJSON = function() {
      CustomJobResultModelObject <- list()
      if (!is.null(self$`url`)) {
        CustomJobResultModelObject[['url']] <- self$`url`
      }
      if (!is.null(self$`outdir`)) {
        CustomJobResultModelObject[['outdir']] <- self$`outdir`
      }
      if (!is.null(self$`view`)) {
        CustomJobResultModelObject[['view']] <- self$`view`$toJSON()
      }

      CustomJobResultModelObject
    },
    fromJSON = function(CustomJobResultModelJson) {
      CustomJobResultModelObject <- jsonlite::fromJSON(CustomJobResultModelJson)
      if (!is.null(CustomJobResultModelObject$`url`)) {
        self$`url` <- CustomJobResultModelObject$`url`
      }
      if (!is.null(CustomJobResultModelObject$`outdir`)) {
        self$`outdir` <- CustomJobResultModelObject$`outdir`
      }
      if (!is.null(CustomJobResultModelObject$`view`)) {
        viewObject <- DSJobModelView$new()
        viewObject$fromJSON(jsonlite::toJSON(CustomJobResultModelObject$view, auto_unbox = TRUE))
        self$`view` <- viewObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "url": %s,
           "outdir": %s,
           "view": %s
        }',
        self$`url`,
        self$`outdir`,
        self$`view`$toJSON()
      )
    },
    fromJSONString = function(CustomJobResultModelJson) {
      CustomJobResultModelObject <- jsonlite::fromJSON(CustomJobResultModelJson)
      self$`url` <- CustomJobResultModelObject$`url`
      self$`outdir` <- CustomJobResultModelObject$`outdir`
      DSJobModelViewObject <- DSJobModelView$new()
      self$`view` <- DSJobModelViewObject$fromJSON(jsonlite::toJSON(CustomJobResultModelObject$view, auto_unbox = TRUE))
    }
  )
)
