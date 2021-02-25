# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Data33 Class
#'
#' @field images 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Data33 <- R6::R6Class(
  'Data33',
  public = list(
    `images` = NULL,
    initialize = function(`images`){
      if (!missing(`images`)) {
        stopifnot(is.list(`images`), length(`images`) != 0)
        lapply(`images`, function(x) stopifnot(is.character(x)))
        self$`images` <- `images`
      }
    },
    toJSON = function() {
      Data33Object <- list()
      if (!is.null(self$`images`)) {
        Data33Object[['images']] <- self$`images`
      }

      Data33Object
    },
    fromJSON = function(Data33Json) {
      Data33Object <- jsonlite::fromJSON(Data33Json)
      if (!is.null(Data33Object$`images`)) {
        self$`images` <- Data33Object$`images`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "images": [%s]
        }',
        lapply(self$`images`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(Data33Json) {
      Data33Object <- jsonlite::fromJSON(Data33Json)
      self$`images` <- Data33Object$`images`
    }
  )
)
