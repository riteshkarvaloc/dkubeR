# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RunTemplateModelParametersPriority Class
#'
#' @field donot_queue 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RunTemplateModelParametersPriority <- R6::R6Class(
  'RunTemplateModelParametersPriority',
  public = list(
    `donot_queue` = NULL,
    initialize = function(`donot_queue`){
      if (!missing(`donot_queue`)) {
        stopifnot(is.character(`donot_queue`), length(`donot_queue`) == 1)
        self$`donot_queue` <- `donot_queue`
      }
    },
    toJSON = function() {
      RunTemplateModelParametersPriorityObject <- list()
      if (!is.null(self$`donot_queue`)) {
        RunTemplateModelParametersPriorityObject[['donot_queue']] <- self$`donot_queue`
      }

      RunTemplateModelParametersPriorityObject
    },
    fromJSON = function(RunTemplateModelParametersPriorityJson) {
      RunTemplateModelParametersPriorityObject <- jsonlite::fromJSON(RunTemplateModelParametersPriorityJson)
      if (!is.null(RunTemplateModelParametersPriorityObject$`donot_queue`)) {
        self$`donot_queue` <- RunTemplateModelParametersPriorityObject$`donot_queue`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "donot_queue": %s
        }',
        self$`donot_queue`
      )
    },
    fromJSONString = function(RunTemplateModelParametersPriorityJson) {
      RunTemplateModelParametersPriorityObject <- jsonlite::fromJSON(RunTemplateModelParametersPriorityJson)
      self$`donot_queue` <- RunTemplateModelParametersPriorityObject$`donot_queue`
    }
  )
)
