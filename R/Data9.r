# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data9 Class
#'
#' @field tags 
#' @field description 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data9 <- R6::R6Class(
  'Data9',
  public = list(
    `tags` = NULL,
    `description` = NULL,
    initialize = function(`tags`, `description`){
      if (!missing(`tags`)) {
        stopifnot(is.list(`tags`), length(`tags`) != 0)
        lapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    toJSON = function() {
      Data9Object <- list()
      if (!is.null(self$`tags`)) {
        Data9Object[['tags']] <- self$`tags`
      }
      if (!is.null(self$`description`)) {
        Data9Object[['description']] <- self$`description`
      }

      Data9Object
    },
    fromJSON = function(Data9Json) {
      Data9Object <- jsonlite::fromJSON(Data9Json)
      if (!is.null(Data9Object$`tags`)) {
        self$`tags` <- Data9Object$`tags`
      }
      if (!is.null(Data9Object$`description`)) {
        self$`description` <- Data9Object$`description`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "tags": [%s],
           "description": %s
        }',
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`description`
      )
    },
    fromJSONString = function(Data9Json) {
      Data9Object <- jsonlite::fromJSON(Data9Json)
      self$`tags` <- Data9Object$`tags`
      self$`description` <- Data9Object$`description`
    }
  )
)
