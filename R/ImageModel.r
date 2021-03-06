# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ImageModel Class
#'
#' @field image 
#' @field registry 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImageModel <- R6::R6Class(
  'ImageModel',
  public = list(
    `image` = NULL,
    `registry` = NULL,
    initialize = function(`image`, `registry`){
      if (!missing(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!missing(`registry`)) {
        stopifnot(R6::is.R6(`registry`))
        self$`registry` <- `registry`
      }
    },
    toJSON = function() {
      ImageModelObject <- list()
      if (!is.null(self$`image`)) {
        ImageModelObject[['image']] <- self$`image`$toJSON()
      }
      if (!is.null(self$`registry`)) {
        ImageModelObject[['registry']] <- self$`registry`$toJSON()
      }

      ImageModelObject
    },
    fromJSON = function(ImageModelJson) {
      ImageModelObject <- jsonlite::fromJSON(ImageModelJson)
      if (!is.null(ImageModelObject$`image`)) {
        imageObject <- Image$new()
        imageObject$fromJSON(jsonlite::toJSON(ImageModelObject$image, auto_unbox = TRUE))
        self$`image` <- imageObject
      }
      if (!is.null(ImageModelObject$`registry`)) {
        registryObject <- Registry$new()
        registryObject$fromJSON(jsonlite::toJSON(ImageModelObject$registry, auto_unbox = TRUE))
        self$`registry` <- registryObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "image": %s,
           "registry": %s
        }',
        self$`image`$toJSON(),
        self$`registry`$toJSON()
      )
    },
    fromJSONString = function(ImageModelJson) {
      ImageModelObject <- jsonlite::fromJSON(ImageModelJson)
      ImageObject <- Image$new()
      self$`image` <- ImageObject$fromJSON(jsonlite::toJSON(ImageModelObject$image, auto_unbox = TRUE))
      RegistryObject <- Registry$new()
      self$`registry` <- RegistryObject$fromJSON(jsonlite::toJSON(ImageModelObject$registry, auto_unbox = TRUE))
    }
  )
)
