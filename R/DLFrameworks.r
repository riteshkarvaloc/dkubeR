# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DLFrameworks Class
#'
#' @field nb-ide 
#' @field r-ide 
#' @field training 
#' @field preprocessing 
#' @field serving 
#' @field project 
#' @field frameworks 
#' @field images 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DLFrameworks <- R6::R6Class(
  'DLFrameworks',
  public = list(
    `nb-ide` = NULL,
    `r-ide` = NULL,
    `training` = NULL,
    `preprocessing` = NULL,
    `serving` = NULL,
    `project` = NULL,
    `frameworks` = NULL,
    `images` = NULL,
    initialize = function(`nb-ide`, `r-ide`, `training`, `preprocessing`, `serving`, `project`, `frameworks`, `images`){
      if (!missing(`nb-ide`)) {
        stopifnot(R6::is.R6(`nb-ide`))
        self$`nb-ide` <- `nb-ide`
      }
      if (!missing(`r-ide`)) {
        stopifnot(R6::is.R6(`r-ide`))
        self$`r-ide` <- `r-ide`
      }
      if (!missing(`training`)) {
        stopifnot(R6::is.R6(`training`))
        self$`training` <- `training`
      }
      if (!missing(`preprocessing`)) {
        stopifnot(R6::is.R6(`preprocessing`))
        self$`preprocessing` <- `preprocessing`
      }
      if (!missing(`serving`)) {
        stopifnot(R6::is.R6(`serving`))
        self$`serving` <- `serving`
      }
      if (!missing(`project`)) {
        stopifnot(R6::is.R6(`project`))
        self$`project` <- `project`
      }
      if (!missing(`frameworks`)) {
        stopifnot(is.list(`frameworks`), length(`frameworks`) != 0)
        lapply(`frameworks`, function(x) stopifnot(R6::is.R6(x)))
        self$`frameworks` <- `frameworks`
      }
      if (!missing(`images`)) {
        stopifnot(is.list(`images`), length(`images`) != 0)
        lapply(`images`, function(x) stopifnot(is.character(x)))
        self$`images` <- `images`
      }
    },
    toJSON = function() {
      DLFrameworksObject <- list()
      if (!is.null(self$`nb-ide`)) {
        DLFrameworksObject[['nb-ide']] <- self$`nb-ide`$toJSON()
      }
      if (!is.null(self$`r-ide`)) {
        DLFrameworksObject[['r-ide']] <- self$`r-ide`$toJSON()
      }
      if (!is.null(self$`training`)) {
        DLFrameworksObject[['training']] <- self$`training`$toJSON()
      }
      if (!is.null(self$`preprocessing`)) {
        DLFrameworksObject[['preprocessing']] <- self$`preprocessing`$toJSON()
      }
      if (!is.null(self$`serving`)) {
        DLFrameworksObject[['serving']] <- self$`serving`$toJSON()
      }
      if (!is.null(self$`project`)) {
        DLFrameworksObject[['project']] <- self$`project`$toJSON()
      }
      if (!is.null(self$`frameworks`)) {
        DLFrameworksObject[['frameworks']] <- lapply(self$`frameworks`, function(x) x$toJSON())
      }
      if (!is.null(self$`images`)) {
        DLFrameworksObject[['images']] <- self$`images`
      }

      DLFrameworksObject
    },
    fromJSON = function(DLFrameworksJson) {
      DLFrameworksObject <- jsonlite::fromJSON(DLFrameworksJson)
      if (!is.null(DLFrameworksObject$`nb-ide`)) {
        nb-ideObject <- DLFrameworkModel$new()
        nb-ideObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$nb-ide, auto_unbox = TRUE))
        self$`nb-ide` <- nb-ideObject
      }
      if (!is.null(DLFrameworksObject$`r-ide`)) {
        r-ideObject <- DLFrameworkModel$new()
        r-ideObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$r-ide, auto_unbox = TRUE))
        self$`r-ide` <- r-ideObject
      }
      if (!is.null(DLFrameworksObject$`training`)) {
        trainingObject <- DLFrameworkModel$new()
        trainingObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$training, auto_unbox = TRUE))
        self$`training` <- trainingObject
      }
      if (!is.null(DLFrameworksObject$`preprocessing`)) {
        preprocessingObject <- DLFrameworkModel$new()
        preprocessingObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$preprocessing, auto_unbox = TRUE))
        self$`preprocessing` <- preprocessingObject
      }
      if (!is.null(DLFrameworksObject$`serving`)) {
        servingObject <- DLFrameworkModel$new()
        servingObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$serving, auto_unbox = TRUE))
        self$`serving` <- servingObject
      }
      if (!is.null(DLFrameworksObject$`project`)) {
        projectObject <- DLFrameworkProject$new()
        projectObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$project, auto_unbox = TRUE))
        self$`project` <- projectObject
      }
      if (!is.null(DLFrameworksObject$`frameworks`)) {
        self$`frameworks` <- lapply(DLFrameworksObject$`frameworks`, function(x) {
          frameworksObject <- DLFramework$new()
          frameworksObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          frameworksObject
        })
      }
      if (!is.null(DLFrameworksObject$`images`)) {
        self$`images` <- DLFrameworksObject$`images`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "nb-ide": %s,
           "r-ide": %s,
           "training": %s,
           "preprocessing": %s,
           "serving": %s,
           "project": %s,
           "frameworks": [%s],
           "images": [%s]
        }',
        self$`nb-ide`$toJSON(),
        self$`r-ide`$toJSON(),
        self$`training`$toJSON(),
        self$`preprocessing`$toJSON(),
        self$`serving`$toJSON(),
        self$`project`$toJSON(),
        lapply(self$`frameworks`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`images`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(DLFrameworksJson) {
      DLFrameworksObject <- jsonlite::fromJSON(DLFrameworksJson)
      DLFrameworkModelObject <- DLFrameworkModel$new()
      self$`nb-ide` <- DLFrameworkModelObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$nb-ide, auto_unbox = TRUE))
      DLFrameworkModelObject <- DLFrameworkModel$new()
      self$`r-ide` <- DLFrameworkModelObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$r-ide, auto_unbox = TRUE))
      DLFrameworkModelObject <- DLFrameworkModel$new()
      self$`training` <- DLFrameworkModelObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$training, auto_unbox = TRUE))
      DLFrameworkModelObject <- DLFrameworkModel$new()
      self$`preprocessing` <- DLFrameworkModelObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$preprocessing, auto_unbox = TRUE))
      DLFrameworkModelObject <- DLFrameworkModel$new()
      self$`serving` <- DLFrameworkModelObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$serving, auto_unbox = TRUE))
      DLFrameworkProjectObject <- DLFrameworkProject$new()
      self$`project` <- DLFrameworkProjectObject$fromJSON(jsonlite::toJSON(DLFrameworksObject$project, auto_unbox = TRUE))
      self$`frameworks` <- lapply(DLFrameworksObject$`frameworks`, function(x) DLFramework$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`images` <- DLFrameworksObject$`images`
    }
  )
)
