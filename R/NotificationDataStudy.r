# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NotificationDataStudy Class
#'
#' @field StudyID 
#' @field BestTrialID 
#' @field BestObjectiveValue 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationDataStudy <- R6::R6Class(
  'NotificationDataStudy',
  public = list(
    `StudyID` = NULL,
    `BestTrialID` = NULL,
    `BestObjectiveValue` = NULL,
    initialize = function(`StudyID`, `BestTrialID`, `BestObjectiveValue`){
      if (!missing(`StudyID`)) {
        stopifnot(is.character(`StudyID`), length(`StudyID`) == 1)
        self$`StudyID` <- `StudyID`
      }
      if (!missing(`BestTrialID`)) {
        stopifnot(is.character(`BestTrialID`), length(`BestTrialID`) == 1)
        self$`BestTrialID` <- `BestTrialID`
      }
      if (!missing(`BestObjectiveValue`)) {
        self$`BestObjectiveValue` <- `BestObjectiveValue`
      }
    },
    toJSON = function() {
      NotificationDataStudyObject <- list()
      if (!is.null(self$`StudyID`)) {
        NotificationDataStudyObject[['StudyID']] <- self$`StudyID`
      }
      if (!is.null(self$`BestTrialID`)) {
        NotificationDataStudyObject[['BestTrialID']] <- self$`BestTrialID`
      }
      if (!is.null(self$`BestObjectiveValue`)) {
        NotificationDataStudyObject[['BestObjectiveValue']] <- self$`BestObjectiveValue`
      }

      NotificationDataStudyObject
    },
    fromJSON = function(NotificationDataStudyJson) {
      NotificationDataStudyObject <- jsonlite::fromJSON(NotificationDataStudyJson)
      if (!is.null(NotificationDataStudyObject$`StudyID`)) {
        self$`StudyID` <- NotificationDataStudyObject$`StudyID`
      }
      if (!is.null(NotificationDataStudyObject$`BestTrialID`)) {
        self$`BestTrialID` <- NotificationDataStudyObject$`BestTrialID`
      }
      if (!is.null(NotificationDataStudyObject$`BestObjectiveValue`)) {
        self$`BestObjectiveValue` <- NotificationDataStudyObject$`BestObjectiveValue`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "StudyID": %s,
           "BestTrialID": %s,
           "BestObjectiveValue": %s
        }',
        self$`StudyID`,
        self$`BestTrialID`,
        self$`BestObjectiveValue`
      )
    },
    fromJSONString = function(NotificationDataStudyJson) {
      NotificationDataStudyObject <- jsonlite::fromJSON(NotificationDataStudyJson)
      self$`StudyID` <- NotificationDataStudyObject$`StudyID`
      self$`BestTrialID` <- NotificationDataStudyObject$`BestTrialID`
      self$`BestObjectiveValue` <- NotificationDataStudyObject$`BestObjectiveValue`
    }
  )
)