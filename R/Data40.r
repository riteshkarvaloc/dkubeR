# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data40 Class
#'
#' @field container_image 
#' @field version 
#' @field description 
#' @field tags 
#' @field arguments 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data40 <- R6::R6Class(
  'Data40',
  public = list(
    `container_image` = NULL,
    `version` = NULL,
    `description` = NULL,
    `tags` = NULL,
    `arguments` = NULL,
    initialize = function(`container_image`, `version`, `description`, `tags`, `arguments`){
      if (!missing(`container_image`)) {
        stopifnot(is.character(`container_image`), length(`container_image`) == 1)
        self$`container_image` <- `container_image`
      }
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
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
      if (!missing(`arguments`)) {
        stopifnot(is.list(`arguments`), length(`arguments`) != 0)
        lapply(`arguments`, function(x) stopifnot(is.character(x)))
        self$`arguments` <- `arguments`
      }
    },
    toJSON = function() {
      Data40Object <- list()
      if (!is.null(self$`container_image`)) {
        Data40Object[['container_image']] <- self$`container_image`
      }
      if (!is.null(self$`version`)) {
        Data40Object[['version']] <- self$`version`
      }
      if (!is.null(self$`description`)) {
        Data40Object[['description']] <- self$`description`
      }
      if (!is.null(self$`tags`)) {
        Data40Object[['tags']] <- self$`tags`
      }
      if (!is.null(self$`arguments`)) {
        Data40Object[['arguments']] <- self$`arguments`
      }

      Data40Object
    },
    fromJSON = function(Data40Json) {
      Data40Object <- jsonlite::fromJSON(Data40Json)
      if (!is.null(Data40Object$`container_image`)) {
        self$`container_image` <- Data40Object$`container_image`
      }
      if (!is.null(Data40Object$`version`)) {
        self$`version` <- Data40Object$`version`
      }
      if (!is.null(Data40Object$`description`)) {
        self$`description` <- Data40Object$`description`
      }
      if (!is.null(Data40Object$`tags`)) {
        self$`tags` <- Data40Object$`tags`
      }
      if (!is.null(Data40Object$`arguments`)) {
        self$`arguments` <- Data40Object$`arguments`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "container_image": %s,
           "version": %s,
           "description": %s,
           "tags": [%s],
           "arguments": [%s]
        }',
        self$`container_image`,
        self$`version`,
        self$`description`,
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`arguments`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(Data40Json) {
      Data40Object <- jsonlite::fromJSON(Data40Json)
      self$`container_image` <- Data40Object$`container_image`
      self$`version` <- Data40Object$`version`
      self$`description` <- Data40Object$`description`
      self$`tags` <- Data40Object$`tags`
      self$`arguments` <- Data40Object$`arguments`
    }
  )
)
