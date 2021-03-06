# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DkubeInfoLicense Class
#'
#' @field startDate 
#' @field endDate 
#' @field validity 
#' @field licensee 
#' @field genTime 
#' @field expired 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DkubeInfoLicense <- R6::R6Class(
  'DkubeInfoLicense',
  public = list(
    `startDate` = NULL,
    `endDate` = NULL,
    `validity` = NULL,
    `licensee` = NULL,
    `genTime` = NULL,
    `expired` = NULL,
    initialize = function(`startDate`, `endDate`, `validity`, `licensee`, `genTime`, `expired`){
      if (!missing(`startDate`)) {
        stopifnot(is.character(`startDate`), length(`startDate`) == 1)
        self$`startDate` <- `startDate`
      }
      if (!missing(`endDate`)) {
        stopifnot(is.character(`endDate`), length(`endDate`) == 1)
        self$`endDate` <- `endDate`
      }
      if (!missing(`validity`)) {
        stopifnot(is.numeric(`validity`), length(`validity`) == 1)
        self$`validity` <- `validity`
      }
      if (!missing(`licensee`)) {
        stopifnot(is.character(`licensee`), length(`licensee`) == 1)
        self$`licensee` <- `licensee`
      }
      if (!missing(`genTime`)) {
        stopifnot(is.character(`genTime`), length(`genTime`) == 1)
        self$`genTime` <- `genTime`
      }
      if (!missing(`expired`)) {
        self$`expired` <- `expired`
      }
    },
    toJSON = function() {
      DkubeInfoLicenseObject <- list()
      if (!is.null(self$`startDate`)) {
        DkubeInfoLicenseObject[['startDate']] <- self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        DkubeInfoLicenseObject[['endDate']] <- self$`endDate`
      }
      if (!is.null(self$`validity`)) {
        DkubeInfoLicenseObject[['validity']] <- self$`validity`
      }
      if (!is.null(self$`licensee`)) {
        DkubeInfoLicenseObject[['licensee']] <- self$`licensee`
      }
      if (!is.null(self$`genTime`)) {
        DkubeInfoLicenseObject[['genTime']] <- self$`genTime`
      }
      if (!is.null(self$`expired`)) {
        DkubeInfoLicenseObject[['expired']] <- self$`expired`
      }

      DkubeInfoLicenseObject
    },
    fromJSON = function(DkubeInfoLicenseJson) {
      DkubeInfoLicenseObject <- jsonlite::fromJSON(DkubeInfoLicenseJson)
      if (!is.null(DkubeInfoLicenseObject$`startDate`)) {
        self$`startDate` <- DkubeInfoLicenseObject$`startDate`
      }
      if (!is.null(DkubeInfoLicenseObject$`endDate`)) {
        self$`endDate` <- DkubeInfoLicenseObject$`endDate`
      }
      if (!is.null(DkubeInfoLicenseObject$`validity`)) {
        self$`validity` <- DkubeInfoLicenseObject$`validity`
      }
      if (!is.null(DkubeInfoLicenseObject$`licensee`)) {
        self$`licensee` <- DkubeInfoLicenseObject$`licensee`
      }
      if (!is.null(DkubeInfoLicenseObject$`genTime`)) {
        self$`genTime` <- DkubeInfoLicenseObject$`genTime`
      }
      if (!is.null(DkubeInfoLicenseObject$`expired`)) {
        self$`expired` <- DkubeInfoLicenseObject$`expired`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "startDate": %s,
           "endDate": %s,
           "validity": %d,
           "licensee": %s,
           "genTime": %s,
           "expired": %s
        }',
        self$`startDate`,
        self$`endDate`,
        self$`validity`,
        self$`licensee`,
        self$`genTime`,
        self$`expired`
      )
    },
    fromJSONString = function(DkubeInfoLicenseJson) {
      DkubeInfoLicenseObject <- jsonlite::fromJSON(DkubeInfoLicenseJson)
      self$`startDate` <- DkubeInfoLicenseObject$`startDate`
      self$`endDate` <- DkubeInfoLicenseObject$`endDate`
      self$`validity` <- DkubeInfoLicenseObject$`validity`
      self$`licensee` <- DkubeInfoLicenseObject$`licensee`
      self$`genTime` <- DkubeInfoLicenseObject$`genTime`
      self$`expired` <- DkubeInfoLicenseObject$`expired`
    }
  )
)
