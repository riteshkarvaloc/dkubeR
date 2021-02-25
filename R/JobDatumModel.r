# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobDatumModel Class
#'
#' @field workspace 
#' @field models 
#' @field datasets 
#' @field outputs 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobDatumModel <- R6::R6Class(
  'JobDatumModel',
  public = list(
    `workspace` = NULL,
    `models` = NULL,
    `datasets` = NULL,
    `outputs` = NULL,
    initialize = function(`workspace`, `models`, `datasets`, `outputs`){
      if (!missing(`workspace`)) {
        stopifnot(R6::is.R6(`workspace`))
        self$`workspace` <- `workspace`
      }
      if (!missing(`models`)) {
        stopifnot(is.list(`models`), length(`models`) != 0)
        lapply(`models`, function(x) stopifnot(R6::is.R6(x)))
        self$`models` <- `models`
      }
      if (!missing(`datasets`)) {
        stopifnot(is.list(`datasets`), length(`datasets`) != 0)
        lapply(`datasets`, function(x) stopifnot(R6::is.R6(x)))
        self$`datasets` <- `datasets`
      }
      if (!missing(`outputs`)) {
        stopifnot(is.list(`outputs`), length(`outputs`) != 0)
        lapply(`outputs`, function(x) stopifnot(R6::is.R6(x)))
        self$`outputs` <- `outputs`
      }
    },
    toJSON = function() {
      JobDatumModelObject <- list()
      if (!is.null(self$`workspace`)) {
        JobDatumModelObject[['workspace']] <- self$`workspace`$toJSON()
      }
      if (!is.null(self$`models`)) {
        JobDatumModelObject[['models']] <- lapply(self$`models`, function(x) x$toJSON())
      }
      if (!is.null(self$`datasets`)) {
        JobDatumModelObject[['datasets']] <- lapply(self$`datasets`, function(x) x$toJSON())
      }
      if (!is.null(self$`outputs`)) {
        JobDatumModelObject[['outputs']] <- lapply(self$`outputs`, function(x) x$toJSON())
      }

      JobDatumModelObject
    },
    fromJSON = function(JobDatumModelJson) {
      JobDatumModelObject <- jsonlite::fromJSON(JobDatumModelJson)
      if (!is.null(JobDatumModelObject$`workspace`)) {
        workspaceObject <- JobDatumModelWorkspace$new()
        workspaceObject$fromJSON(jsonlite::toJSON(JobDatumModelObject$workspace, auto_unbox = TRUE))
        self$`workspace` <- workspaceObject
      }
      if (!is.null(JobDatumModelObject$`models`)) {
        self$`models` <- lapply(JobDatumModelObject$`models`, function(x) {
          modelsObject <- JobInputDatumModel$new()
          modelsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          modelsObject
        })
      }
      if (!is.null(JobDatumModelObject$`datasets`)) {
        self$`datasets` <- lapply(JobDatumModelObject$`datasets`, function(x) {
          datasetsObject <- JobInputDatumModel$new()
          datasetsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          datasetsObject
        })
      }
      if (!is.null(JobDatumModelObject$`outputs`)) {
        self$`outputs` <- lapply(JobDatumModelObject$`outputs`, function(x) {
          outputsObject <- JobInputDatumModel$new()
          outputsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          outputsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "workspace": %s,
           "models": [%s],
           "datasets": [%s],
           "outputs": [%s]
        }',
        self$`workspace`$toJSON(),
        lapply(self$`models`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`datasets`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`outputs`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(JobDatumModelJson) {
      JobDatumModelObject <- jsonlite::fromJSON(JobDatumModelJson)
      JobDatumModelWorkspaceObject <- JobDatumModelWorkspace$new()
      self$`workspace` <- JobDatumModelWorkspaceObject$fromJSON(jsonlite::toJSON(JobDatumModelObject$workspace, auto_unbox = TRUE))
      self$`models` <- lapply(JobDatumModelObject$`models`, function(x) JobInputDatumModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`datasets` <- lapply(JobDatumModelObject$`datasets`, function(x) JobInputDatumModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`outputs` <- lapply(JobDatumModelObject$`outputs`, function(x) JobInputDatumModel$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
