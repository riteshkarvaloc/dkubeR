# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NotificationData Class
#'
#' @field Username 
#' @field JobUUID 
#' @field Class 
#' @field Subclass 
#' @field Status 
#' @field Reason 
#' @field NotebookUrl 
#' @field ServingUrl 
#' @field TensorboardUrl 
#' @field IsTensorboard 
#' @field Study 
#' @field Worker 
#' @field Datum 
#' @field Version 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationData <- R6::R6Class(
  'NotificationData',
  public = list(
    `Username` = NULL,
    `JobUUID` = NULL,
    `Class` = NULL,
    `Subclass` = NULL,
    `Status` = NULL,
    `Reason` = NULL,
    `NotebookUrl` = NULL,
    `ServingUrl` = NULL,
    `TensorboardUrl` = NULL,
    `IsTensorboard` = NULL,
    `Study` = NULL,
    `Worker` = NULL,
    `Datum` = NULL,
    `Version` = NULL,
    initialize = function(`Username`, `JobUUID`, `Class`, `Subclass`, `Status`, `Reason`, `NotebookUrl`, `ServingUrl`, `TensorboardUrl`, `IsTensorboard`, `Study`, `Worker`, `Datum`, `Version`){
      if (!missing(`Username`)) {
        stopifnot(is.character(`Username`), length(`Username`) == 1)
        self$`Username` <- `Username`
      }
      if (!missing(`JobUUID`)) {
        stopifnot(is.character(`JobUUID`), length(`JobUUID`) == 1)
        self$`JobUUID` <- `JobUUID`
      }
      if (!missing(`Class`)) {
        stopifnot(is.character(`Class`), length(`Class`) == 1)
        self$`Class` <- `Class`
      }
      if (!missing(`Subclass`)) {
        stopifnot(is.character(`Subclass`), length(`Subclass`) == 1)
        self$`Subclass` <- `Subclass`
      }
      if (!missing(`Status`)) {
        stopifnot(is.character(`Status`), length(`Status`) == 1)
        self$`Status` <- `Status`
      }
      if (!missing(`Reason`)) {
        stopifnot(is.character(`Reason`), length(`Reason`) == 1)
        self$`Reason` <- `Reason`
      }
      if (!missing(`NotebookUrl`)) {
        stopifnot(is.character(`NotebookUrl`), length(`NotebookUrl`) == 1)
        self$`NotebookUrl` <- `NotebookUrl`
      }
      if (!missing(`ServingUrl`)) {
        stopifnot(is.character(`ServingUrl`), length(`ServingUrl`) == 1)
        self$`ServingUrl` <- `ServingUrl`
      }
      if (!missing(`TensorboardUrl`)) {
        stopifnot(is.character(`TensorboardUrl`), length(`TensorboardUrl`) == 1)
        self$`TensorboardUrl` <- `TensorboardUrl`
      }
      if (!missing(`IsTensorboard`)) {
        self$`IsTensorboard` <- `IsTensorboard`
      }
      if (!missing(`Study`)) {
        stopifnot(R6::is.R6(`Study`))
        self$`Study` <- `Study`
      }
      if (!missing(`Worker`)) {
        stopifnot(R6::is.R6(`Worker`))
        self$`Worker` <- `Worker`
      }
      if (!missing(`Datum`)) {
        stopifnot(R6::is.R6(`Datum`))
        self$`Datum` <- `Datum`
      }
      if (!missing(`Version`)) {
        stopifnot(R6::is.R6(`Version`))
        self$`Version` <- `Version`
      }
    },
    toJSON = function() {
      NotificationDataObject <- list()
      if (!is.null(self$`Username`)) {
        NotificationDataObject[['Username']] <- self$`Username`
      }
      if (!is.null(self$`JobUUID`)) {
        NotificationDataObject[['JobUUID']] <- self$`JobUUID`
      }
      if (!is.null(self$`Class`)) {
        NotificationDataObject[['Class']] <- self$`Class`
      }
      if (!is.null(self$`Subclass`)) {
        NotificationDataObject[['Subclass']] <- self$`Subclass`
      }
      if (!is.null(self$`Status`)) {
        NotificationDataObject[['Status']] <- self$`Status`
      }
      if (!is.null(self$`Reason`)) {
        NotificationDataObject[['Reason']] <- self$`Reason`
      }
      if (!is.null(self$`NotebookUrl`)) {
        NotificationDataObject[['NotebookUrl']] <- self$`NotebookUrl`
      }
      if (!is.null(self$`ServingUrl`)) {
        NotificationDataObject[['ServingUrl']] <- self$`ServingUrl`
      }
      if (!is.null(self$`TensorboardUrl`)) {
        NotificationDataObject[['TensorboardUrl']] <- self$`TensorboardUrl`
      }
      if (!is.null(self$`IsTensorboard`)) {
        NotificationDataObject[['IsTensorboard']] <- self$`IsTensorboard`
      }
      if (!is.null(self$`Study`)) {
        NotificationDataObject[['Study']] <- self$`Study`$toJSON()
      }
      if (!is.null(self$`Worker`)) {
        NotificationDataObject[['Worker']] <- self$`Worker`$toJSON()
      }
      if (!is.null(self$`Datum`)) {
        NotificationDataObject[['Datum']] <- self$`Datum`$toJSON()
      }
      if (!is.null(self$`Version`)) {
        NotificationDataObject[['Version']] <- self$`Version`$toJSON()
      }

      NotificationDataObject
    },
    fromJSON = function(NotificationDataJson) {
      NotificationDataObject <- jsonlite::fromJSON(NotificationDataJson)
      if (!is.null(NotificationDataObject$`Username`)) {
        self$`Username` <- NotificationDataObject$`Username`
      }
      if (!is.null(NotificationDataObject$`JobUUID`)) {
        self$`JobUUID` <- NotificationDataObject$`JobUUID`
      }
      if (!is.null(NotificationDataObject$`Class`)) {
        self$`Class` <- NotificationDataObject$`Class`
      }
      if (!is.null(NotificationDataObject$`Subclass`)) {
        self$`Subclass` <- NotificationDataObject$`Subclass`
      }
      if (!is.null(NotificationDataObject$`Status`)) {
        self$`Status` <- NotificationDataObject$`Status`
      }
      if (!is.null(NotificationDataObject$`Reason`)) {
        self$`Reason` <- NotificationDataObject$`Reason`
      }
      if (!is.null(NotificationDataObject$`NotebookUrl`)) {
        self$`NotebookUrl` <- NotificationDataObject$`NotebookUrl`
      }
      if (!is.null(NotificationDataObject$`ServingUrl`)) {
        self$`ServingUrl` <- NotificationDataObject$`ServingUrl`
      }
      if (!is.null(NotificationDataObject$`TensorboardUrl`)) {
        self$`TensorboardUrl` <- NotificationDataObject$`TensorboardUrl`
      }
      if (!is.null(NotificationDataObject$`IsTensorboard`)) {
        self$`IsTensorboard` <- NotificationDataObject$`IsTensorboard`
      }
      if (!is.null(NotificationDataObject$`Study`)) {
        StudyObject <- NotificationDataStudy$new()
        StudyObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Study, auto_unbox = TRUE))
        self$`Study` <- StudyObject
      }
      if (!is.null(NotificationDataObject$`Worker`)) {
        WorkerObject <- WorkerModel$new()
        WorkerObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Worker, auto_unbox = TRUE))
        self$`Worker` <- WorkerObject
      }
      if (!is.null(NotificationDataObject$`Datum`)) {
        DatumObject <- DatumModel$new()
        DatumObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Datum, auto_unbox = TRUE))
        self$`Datum` <- DatumObject
      }
      if (!is.null(NotificationDataObject$`Version`)) {
        VersionObject <- VersionModel$new()
        VersionObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Version, auto_unbox = TRUE))
        self$`Version` <- VersionObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "Username": %s,
           "JobUUID": %s,
           "Class": %s,
           "Subclass": %s,
           "Status": %s,
           "Reason": %s,
           "NotebookUrl": %s,
           "ServingUrl": %s,
           "TensorboardUrl": %s,
           "IsTensorboard": %s,
           "Study": %s,
           "Worker": %s,
           "Datum": %s,
           "Version": %s
        }',
        self$`Username`,
        self$`JobUUID`,
        self$`Class`,
        self$`Subclass`,
        self$`Status`,
        self$`Reason`,
        self$`NotebookUrl`,
        self$`ServingUrl`,
        self$`TensorboardUrl`,
        self$`IsTensorboard`,
        self$`Study`$toJSON(),
        self$`Worker`$toJSON(),
        self$`Datum`$toJSON(),
        self$`Version`$toJSON()
      )
    },
    fromJSONString = function(NotificationDataJson) {
      NotificationDataObject <- jsonlite::fromJSON(NotificationDataJson)
      self$`Username` <- NotificationDataObject$`Username`
      self$`JobUUID` <- NotificationDataObject$`JobUUID`
      self$`Class` <- NotificationDataObject$`Class`
      self$`Subclass` <- NotificationDataObject$`Subclass`
      self$`Status` <- NotificationDataObject$`Status`
      self$`Reason` <- NotificationDataObject$`Reason`
      self$`NotebookUrl` <- NotificationDataObject$`NotebookUrl`
      self$`ServingUrl` <- NotificationDataObject$`ServingUrl`
      self$`TensorboardUrl` <- NotificationDataObject$`TensorboardUrl`
      self$`IsTensorboard` <- NotificationDataObject$`IsTensorboard`
      NotificationDataStudyObject <- NotificationDataStudy$new()
      self$`Study` <- NotificationDataStudyObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Study, auto_unbox = TRUE))
      WorkerModelObject <- WorkerModel$new()
      self$`Worker` <- WorkerModelObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Worker, auto_unbox = TRUE))
      DatumModelObject <- DatumModel$new()
      self$`Datum` <- DatumModelObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Datum, auto_unbox = TRUE))
      VersionModelObject <- VersionModel$new()
      self$`Version` <- VersionModelObject$fromJSON(jsonlite::toJSON(NotificationDataObject$Version, auto_unbox = TRUE))
    }
  )
)
