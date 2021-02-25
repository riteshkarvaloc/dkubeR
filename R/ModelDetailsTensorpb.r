# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ModelDetailsTensorpb Class
#'
#' @field signatures 
#' @field devicenodes 
#' @field devices 
#' @field parameters 
#' @field weights 
#' @field layers 
#' @field servable 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelDetailsTensorpb <- R6::R6Class(
  'ModelDetailsTensorpb',
  public = list(
    `signatures` = NULL,
    `devicenodes` = NULL,
    `devices` = NULL,
    `parameters` = NULL,
    `weights` = NULL,
    `layers` = NULL,
    `servable` = NULL,
    initialize = function(`signatures`, `devicenodes`, `devices`, `parameters`, `weights`, `layers`, `servable`){
      if (!missing(`signatures`)) {
        stopifnot(R6::is.R6(`signatures`))
        self$`signatures` <- `signatures`
      }
      if (!missing(`devicenodes`)) {
        stopifnot(is.list(`devicenodes`), length(`devicenodes`) != 0)
        lapply(`devicenodes`, function(x) stopifnot(is.character(x)))
        self$`devicenodes` <- `devicenodes`
      }
      if (!missing(`devices`)) {
        stopifnot(R6::is.R6(`devices`))
        self$`devices` <- `devices`
      }
      if (!missing(`parameters`)) {
        stopifnot(is.numeric(`parameters`), length(`parameters`) == 1)
        self$`parameters` <- `parameters`
      }
      if (!missing(`weights`)) {
        stopifnot(is.numeric(`weights`), length(`weights`) == 1)
        self$`weights` <- `weights`
      }
      if (!missing(`layers`)) {
        stopifnot(is.numeric(`layers`), length(`layers`) == 1)
        self$`layers` <- `layers`
      }
      if (!missing(`servable`)) {
        self$`servable` <- `servable`
      }
    },
    toJSON = function() {
      ModelDetailsTensorpbObject <- list()
      if (!is.null(self$`signatures`)) {
        ModelDetailsTensorpbObject[['signatures']] <- self$`signatures`$toJSON()
      }
      if (!is.null(self$`devicenodes`)) {
        ModelDetailsTensorpbObject[['devicenodes']] <- self$`devicenodes`
      }
      if (!is.null(self$`devices`)) {
        ModelDetailsTensorpbObject[['devices']] <- self$`devices`$toJSON()
      }
      if (!is.null(self$`parameters`)) {
        ModelDetailsTensorpbObject[['parameters']] <- self$`parameters`
      }
      if (!is.null(self$`weights`)) {
        ModelDetailsTensorpbObject[['weights']] <- self$`weights`
      }
      if (!is.null(self$`layers`)) {
        ModelDetailsTensorpbObject[['layers']] <- self$`layers`
      }
      if (!is.null(self$`servable`)) {
        ModelDetailsTensorpbObject[['servable']] <- self$`servable`
      }

      ModelDetailsTensorpbObject
    },
    fromJSON = function(ModelDetailsTensorpbJson) {
      ModelDetailsTensorpbObject <- jsonlite::fromJSON(ModelDetailsTensorpbJson)
      if (!is.null(ModelDetailsTensorpbObject$`signatures`)) {
        signaturesObject <- ModelDetailsTensorpbSignatures$new()
        signaturesObject$fromJSON(jsonlite::toJSON(ModelDetailsTensorpbObject$signatures, auto_unbox = TRUE))
        self$`signatures` <- signaturesObject
      }
      if (!is.null(ModelDetailsTensorpbObject$`devicenodes`)) {
        self$`devicenodes` <- ModelDetailsTensorpbObject$`devicenodes`
      }
      if (!is.null(ModelDetailsTensorpbObject$`devices`)) {
        devicesObject <- ModelDetailsTensorpbDevices$new()
        devicesObject$fromJSON(jsonlite::toJSON(ModelDetailsTensorpbObject$devices, auto_unbox = TRUE))
        self$`devices` <- devicesObject
      }
      if (!is.null(ModelDetailsTensorpbObject$`parameters`)) {
        self$`parameters` <- ModelDetailsTensorpbObject$`parameters`
      }
      if (!is.null(ModelDetailsTensorpbObject$`weights`)) {
        self$`weights` <- ModelDetailsTensorpbObject$`weights`
      }
      if (!is.null(ModelDetailsTensorpbObject$`layers`)) {
        self$`layers` <- ModelDetailsTensorpbObject$`layers`
      }
      if (!is.null(ModelDetailsTensorpbObject$`servable`)) {
        self$`servable` <- ModelDetailsTensorpbObject$`servable`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "signatures": %s,
           "devicenodes": [%s],
           "devices": %s,
           "parameters": %d,
           "weights": %d,
           "layers": %d,
           "servable": %s
        }',
        self$`signatures`$toJSON(),
        lapply(self$`devicenodes`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`devices`$toJSON(),
        self$`parameters`,
        self$`weights`,
        self$`layers`,
        self$`servable`
      )
    },
    fromJSONString = function(ModelDetailsTensorpbJson) {
      ModelDetailsTensorpbObject <- jsonlite::fromJSON(ModelDetailsTensorpbJson)
      ModelDetailsTensorpbSignaturesObject <- ModelDetailsTensorpbSignatures$new()
      self$`signatures` <- ModelDetailsTensorpbSignaturesObject$fromJSON(jsonlite::toJSON(ModelDetailsTensorpbObject$signatures, auto_unbox = TRUE))
      self$`devicenodes` <- ModelDetailsTensorpbObject$`devicenodes`
      ModelDetailsTensorpbDevicesObject <- ModelDetailsTensorpbDevices$new()
      self$`devices` <- ModelDetailsTensorpbDevicesObject$fromJSON(jsonlite::toJSON(ModelDetailsTensorpbObject$devices, auto_unbox = TRUE))
      self$`parameters` <- ModelDetailsTensorpbObject$`parameters`
      self$`weights` <- ModelDetailsTensorpbObject$`weights`
      self$`layers` <- ModelDetailsTensorpbObject$`layers`
      self$`servable` <- ModelDetailsTensorpbObject$`servable`
    }
  )
)