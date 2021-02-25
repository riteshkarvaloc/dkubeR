# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data32 Class
#'
#' @field name
#' @field image
#' @field isprivate
#' @field username
#' @field password
#' @field project
#' @field description
#' @field tags
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data32 <- R6::R6Class(
  'Data32',
  public = list(
    `name` = NULL,
    `image` = NULL,
    `isprivate` = NULL,
    `username` = NULL,
    `password` = NULL,
    `project` = NULL,
    `description` = NULL,
    `tags` = NULL,
    initialize = function(`name`, `image`, `isprivate`, `username`, `password`, `project`, `description`, `tags`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`image`)) {
        stopifnot(is.character(`image`), length(`image`) == 1)
        self$`image` <- `image`
      }
      if (!missing(`isprivate`)) {
        self$`isprivate` <- `isprivate`
      }
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`password`)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
        self$`password` <- `password`
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
      Data32Object <- list()
      if (!is.null(self$`name`)) {
        Data32Object[['name']] <- self$`name`
      }
      if (!is.null(self$`image`)) {
        Data32Object[['image']] <- self$`image`
      }
      if (!is.null(self$`isprivate`)) {
        Data32Object[['isprivate']] <- self$`isprivate`
      }
      if (!is.null(self$`username`)) {
        Data32Object[['username']] <- self$`username`
      }
      if (!is.null(self$`password`)) {
        Data32Object[['password']] <- self$`password`
      }
      if (!is.null(self$`project`)) {
        Data32Object[['project']] <- self$`project`
      }
      if (!is.null(self$`description`)) {
        Data32Object[['description']] <- self$`description`
      }
      if (!is.null(self$`tags`)) {
        Data32Object[['tags']] <- self$`tags`
      }

      Data32Object
    },
    fromJSON = function(Data32Json) {
      Data32Object <- jsonlite::fromJSON(Data32Json)
      if (!is.null(Data32Object$`name`)) {
        self$`name` <- Data32Object$`name`
      }
      if (!is.null(Data32Object$`image`)) {
        self$`image` <- Data32Object$`image`
      }
      if (!is.null(Data32Object$`isprivate`)) {
        self$`isprivate` <- Data32Object$`isprivate`
      }
      if (!is.null(Data32Object$`username`)) {
        self$`username` <- Data32Object$`username`
      }
      if (!is.null(Data32Object$`password`)) {
        self$`password` <- Data32Object$`password`
      }
      if (!is.null(Data32Object$`project`)) {
        self$`project` <- Data32Object$`project`
      }
      if (!is.null(Data32Object$`description`)) {
        self$`description` <- Data32Object$`description`
      }
      if (!is.null(Data32Object$`tags`)) {
        self$`tags` <- Data32Object$`tags`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "image": %s,
           "isprivate": %s,
           "username": %s,
           "password": %s,
           "project": %s,
           "description": %s,
           "tags": [%s]
        }',
        self$`name`,
        self$`image`,
        self$`isprivate`,
        self$`username`,
        self$`password`,
        self$`project`,
        self$`description`,
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(Data32Json) {
      Data32Object <- jsonlite::fromJSON(Data32Json)
      self$`name` <- Data32Object$`name`
      self$`image` <- Data32Object$`image`
      self$`isprivate` <- Data32Object$`isprivate`
      self$`username` <- Data32Object$`username`
      self$`password` <- Data32Object$`password`
      self$`project` <- Data32Object$`project`
      self$`description` <- Data32Object$`description`
      self$`tags` <- Data32Object$`tags`
    }
  )
)
