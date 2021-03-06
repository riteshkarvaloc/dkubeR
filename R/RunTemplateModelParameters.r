# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RunTemplateModelParameters Class
#'
#' @field gpu_allocation 
#' @field priority 
#' @field training 
#' @field preprocessing 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RunTemplateModelParameters <- R6::R6Class(
  'RunTemplateModelParameters',
  public = list(
    `gpu_allocation` = NULL,
    `priority` = NULL,
    `training` = NULL,
    `preprocessing` = NULL,
    initialize = function(`gpu_allocation`, `priority`, `training`, `preprocessing`){
      if (!missing(`gpu_allocation`)) {
        stopifnot(R6::is.R6(`gpu_allocation`))
        self$`gpu_allocation` <- `gpu_allocation`
      }
      if (!missing(`priority`)) {
        stopifnot(R6::is.R6(`priority`))
        self$`priority` <- `priority`
      }
      if (!missing(`training`)) {
        stopifnot(R6::is.R6(`training`))
        self$`training` <- `training`
      }
      if (!missing(`preprocessing`)) {
        stopifnot(R6::is.R6(`preprocessing`))
        self$`preprocessing` <- `preprocessing`
      }
    },
    toJSON = function() {
      RunTemplateModelParametersObject <- list()
      if (!is.null(self$`gpu_allocation`)) {
        RunTemplateModelParametersObject[['gpu_allocation']] <- self$`gpu_allocation`$toJSON()
      }
      if (!is.null(self$`priority`)) {
        RunTemplateModelParametersObject[['priority']] <- self$`priority`$toJSON()
      }
      if (!is.null(self$`training`)) {
        RunTemplateModelParametersObject[['training']] <- self$`training`$toJSON()
      }
      if (!is.null(self$`preprocessing`)) {
        RunTemplateModelParametersObject[['preprocessing']] <- self$`preprocessing`$toJSON()
      }

      RunTemplateModelParametersObject
    },
    fromJSON = function(RunTemplateModelParametersJson) {
      RunTemplateModelParametersObject <- jsonlite::fromJSON(RunTemplateModelParametersJson)
      if (!is.null(RunTemplateModelParametersObject$`gpu_allocation`)) {
        gpu_allocationObject <- GpuAllocation$new()
        gpu_allocationObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$gpu_allocation, auto_unbox = TRUE))
        self$`gpu_allocation` <- gpu_allocationObject
      }
      if (!is.null(RunTemplateModelParametersObject$`priority`)) {
        priorityObject <- RunTemplateModelParametersPriority$new()
        priorityObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$priority, auto_unbox = TRUE))
        self$`priority` <- priorityObject
      }
      if (!is.null(RunTemplateModelParametersObject$`training`)) {
        trainingObject <- DSJobModel$new()
        trainingObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$training, auto_unbox = TRUE))
        self$`training` <- trainingObject
      }
      if (!is.null(RunTemplateModelParametersObject$`preprocessing`)) {
        preprocessingObject <- PreprocessingJobModel$new()
        preprocessingObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$preprocessing, auto_unbox = TRUE))
        self$`preprocessing` <- preprocessingObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "gpu_allocation": %s,
           "priority": %s,
           "training": %s,
           "preprocessing": %s
        }',
        self$`gpu_allocation`$toJSON(),
        self$`priority`$toJSON(),
        self$`training`$toJSON(),
        self$`preprocessing`$toJSON()
      )
    },
    fromJSONString = function(RunTemplateModelParametersJson) {
      RunTemplateModelParametersObject <- jsonlite::fromJSON(RunTemplateModelParametersJson)
      GpuAllocationObject <- GpuAllocation$new()
      self$`gpu_allocation` <- GpuAllocationObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$gpu_allocation, auto_unbox = TRUE))
      RunTemplateModelParametersPriorityObject <- RunTemplateModelParametersPriority$new()
      self$`priority` <- RunTemplateModelParametersPriorityObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$priority, auto_unbox = TRUE))
      DSJobModelObject <- DSJobModel$new()
      self$`training` <- DSJobModelObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$training, auto_unbox = TRUE))
      PreprocessingJobModelObject <- PreprocessingJobModel$new()
      self$`preprocessing` <- PreprocessingJobModelObject$fromJSON(jsonlite::toJSON(RunTemplateModelParametersObject$preprocessing, auto_unbox = TRUE))
    }
  )
)
