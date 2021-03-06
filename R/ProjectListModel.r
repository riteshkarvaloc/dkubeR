# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProjectListModel Class
#'
#' @field name Name
#' @field description Description
#' @field image Image
#' @field leaderboard Leaderboard
#' @field id Id
#' @field owner Owner
#' @field last_updated Last Updated
#' @field status 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectListModel <- R6::R6Class(
  'ProjectListModel',
  public = list(
    `name` = NULL,
    `description` = NULL,
    `image` = NULL,
    `leaderboard` = NULL,
    `id` = NULL,
    `owner` = NULL,
    `last_updated` = NULL,
    `status` = NULL,
    initialize = function(`name`, `description`, `image`, `leaderboard`, `id`, `owner`, `last_updated`, `status`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`image`)) {
        stopifnot(is.character(`image`), length(`image`) == 1)
        self$`image` <- `image`
      }
      if (!missing(`leaderboard`)) {
        self$`leaderboard` <- `leaderboard`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self$`owner` <- `owner`
      }
      if (!missing(`last_updated`)) {
        stopifnot(is.character(`last_updated`), length(`last_updated`) == 1)
        self$`last_updated` <- `last_updated`
      }
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
    },
    toJSON = function() {
      ProjectListModelObject <- list()
      if (!is.null(self$`name`)) {
        ProjectListModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        ProjectListModelObject[['description']] <- self$`description`
      }
      if (!is.null(self$`image`)) {
        ProjectListModelObject[['image']] <- self$`image`
      }
      if (!is.null(self$`leaderboard`)) {
        ProjectListModelObject[['leaderboard']] <- self$`leaderboard`
      }
      if (!is.null(self$`id`)) {
        ProjectListModelObject[['id']] <- self$`id`
      }
      if (!is.null(self$`owner`)) {
        ProjectListModelObject[['owner']] <- self$`owner`
      }
      if (!is.null(self$`last_updated`)) {
        ProjectListModelObject[['last_updated']] <- self$`last_updated`
      }
      if (!is.null(self$`status`)) {
        ProjectListModelObject[['status']] <- self$`status`$toJSON()
      }

      ProjectListModelObject
    },
    fromJSON = function(ProjectListModelJson) {
      ProjectListModelObject <- jsonlite::fromJSON(ProjectListModelJson)
      if (!is.null(ProjectListModelObject$`name`)) {
        self$`name` <- ProjectListModelObject$`name`
      }
      if (!is.null(ProjectListModelObject$`description`)) {
        self$`description` <- ProjectListModelObject$`description`
      }
      if (!is.null(ProjectListModelObject$`image`)) {
        self$`image` <- ProjectListModelObject$`image`
      }
      if (!is.null(ProjectListModelObject$`leaderboard`)) {
        self$`leaderboard` <- ProjectListModelObject$`leaderboard`
      }
      if (!is.null(ProjectListModelObject$`id`)) {
        self$`id` <- ProjectListModelObject$`id`
      }
      if (!is.null(ProjectListModelObject$`owner`)) {
        self$`owner` <- ProjectListModelObject$`owner`
      }
      if (!is.null(ProjectListModelObject$`last_updated`)) {
        self$`last_updated` <- ProjectListModelObject$`last_updated`
      }
      if (!is.null(ProjectListModelObject$`status`)) {
        statusObject <- ProjectStatusModel$new()
        statusObject$fromJSON(jsonlite::toJSON(ProjectListModelObject$status, auto_unbox = TRUE))
        self$`status` <- statusObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "description": %s,
           "image": %s,
           "leaderboard": %s,
           "id": %s,
           "owner": %s,
           "last_updated": %s,
           "status": %s
        }',
        self$`name`,
        self$`description`,
        self$`image`,
        self$`leaderboard`,
        self$`id`,
        self$`owner`,
        self$`last_updated`,
        self$`status`$toJSON()
      )
    },
    fromJSONString = function(ProjectListModelJson) {
      ProjectListModelObject <- jsonlite::fromJSON(ProjectListModelJson)
      self$`name` <- ProjectListModelObject$`name`
      self$`description` <- ProjectListModelObject$`description`
      self$`image` <- ProjectListModelObject$`image`
      self$`leaderboard` <- ProjectListModelObject$`leaderboard`
      self$`id` <- ProjectListModelObject$`id`
      self$`owner` <- ProjectListModelObject$`owner`
      self$`last_updated` <- ProjectListModelObject$`last_updated`
      ProjectStatusModelObject <- ProjectStatusModel$new()
      self$`status` <- ProjectStatusModelObject$fromJSON(jsonlite::toJSON(ProjectListModelObject$status, auto_unbox = TRUE))
    }
  )
)
