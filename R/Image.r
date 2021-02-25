# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Image Class
#'
#' @field name 
#' @field registry 
#' @field image 
#' @field digest 
#' @field repo 
#' @field timestamp 
#' @field isprivate 
#' @field project 
#' @field description 
#' @field tags 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Image <- R6::R6Class(
  'Image',
  public = list(
    `name` = NULL,
    `registry` = NULL,
    `image` = NULL,
    `digest` = NULL,
    `repo` = NULL,
    `timestamp` = NULL,
    `isprivate` = NULL,
    `project` = NULL,
    `description` = NULL,
    `tags` = NULL,
    initialize = function(`name`, `registry`, `image`, `digest`, `repo`, `timestamp`, `isprivate`, `project`, `description`, `tags`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`registry`)) {
        stopifnot(is.character(`registry`), length(`registry`) == 1)
        self$`registry` <- `registry`
      }
      if (!missing(`image`)) {
        stopifnot(is.character(`image`), length(`image`) == 1)
        self$`image` <- `image`
      }
      if (!missing(`digest`)) {
        stopifnot(is.character(`digest`), length(`digest`) == 1)
        self$`digest` <- `digest`
      }
      if (!missing(`repo`)) {
        stopifnot(is.character(`repo`), length(`repo`) == 1)
        self$`repo` <- `repo`
      }
      if (!missing(`timestamp`)) {
        stopifnot(is.numeric(`timestamp`), length(`timestamp`) == 1)
        self$`timestamp` <- `timestamp`
      }
      if (!missing(`isprivate`)) {
        self$`isprivate` <- `isprivate`
      }
      if (!missing(`project`)) {
        stopifnot(is.character(`project`), length(`project`) == 1)
        self$`project` <- `project`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`tags`)) {
        stopifnot(is.list(`tags`), length(`tags`) != 0)
        lapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
    },
    toJSON = function() {
      ImageObject <- list()
      if (!is.null(self$`name`)) {
        ImageObject[['name']] <- self$`name`
      }
      if (!is.null(self$`registry`)) {
        ImageObject[['registry']] <- self$`registry`
      }
      if (!is.null(self$`image`)) {
        ImageObject[['image']] <- self$`image`
      }
      if (!is.null(self$`digest`)) {
        ImageObject[['digest']] <- self$`digest`
      }
      if (!is.null(self$`repo`)) {
        ImageObject[['repo']] <- self$`repo`
      }
      if (!is.null(self$`timestamp`)) {
        ImageObject[['timestamp']] <- self$`timestamp`
      }
      if (!is.null(self$`isprivate`)) {
        ImageObject[['isprivate']] <- self$`isprivate`
      }
      if (!is.null(self$`project`)) {
        ImageObject[['project']] <- self$`project`
      }
      if (!is.null(self$`description`)) {
        ImageObject[['description']] <- self$`description`
      }
      if (!is.null(self$`tags`)) {
        ImageObject[['tags']] <- self$`tags`
      }

      ImageObject
    },
    fromJSON = function(ImageJson) {
      ImageObject <- jsonlite::fromJSON(ImageJson)
      if (!is.null(ImageObject$`name`)) {
        self$`name` <- ImageObject$`name`
      }
      if (!is.null(ImageObject$`registry`)) {
        self$`registry` <- ImageObject$`registry`
      }
      if (!is.null(ImageObject$`image`)) {
        self$`image` <- ImageObject$`image`
      }
      if (!is.null(ImageObject$`digest`)) {
        self$`digest` <- ImageObject$`digest`
      }
      if (!is.null(ImageObject$`repo`)) {
        self$`repo` <- ImageObject$`repo`
      }
      if (!is.null(ImageObject$`timestamp`)) {
        self$`timestamp` <- ImageObject$`timestamp`
      }
      if (!is.null(ImageObject$`isprivate`)) {
        self$`isprivate` <- ImageObject$`isprivate`
      }
      if (!is.null(ImageObject$`project`)) {
        self$`project` <- ImageObject$`project`
      }
      if (!is.null(ImageObject$`description`)) {
        self$`description` <- ImageObject$`description`
      }
      if (!is.null(ImageObject$`tags`)) {
        self$`tags` <- ImageObject$`tags`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "registry": %s,
           "image": %s,
           "digest": %s,
           "repo": %s,
           "timestamp": %d,
           "isprivate": %s,
           "project": %s,
           "description": %s,
           "tags": [%s]
        }',
        self$`name`,
        self$`registry`,
        self$`image`,
        self$`digest`,
        self$`repo`,
        self$`timestamp`,
        self$`isprivate`,
        self$`project`,
        self$`description`,
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(ImageJson) {
      ImageObject <- jsonlite::fromJSON(ImageJson)
      self$`name` <- ImageObject$`name`
      self$`registry` <- ImageObject$`registry`
      self$`image` <- ImageObject$`image`
      self$`digest` <- ImageObject$`digest`
      self$`repo` <- ImageObject$`repo`
      self$`timestamp` <- ImageObject$`timestamp`
      self$`isprivate` <- ImageObject$`isprivate`
      self$`project` <- ImageObject$`project`
      self$`description` <- ImageObject$`description`
      self$`tags` <- ImageObject$`tags`
    }
  )
)
