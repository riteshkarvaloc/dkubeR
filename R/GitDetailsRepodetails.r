# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GitDetailsRepodetails Class
#'
#' @field branches 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GitDetailsRepodetails <- R6::R6Class(
  'GitDetailsRepodetails',
  public = list(
    `branches` = NULL,
    initialize = function(`branches`){
      if (!missing(`branches`)) {
        stopifnot(is.list(`branches`), length(`branches`) != 0)
        lapply(`branches`, function(x) stopifnot(R6::is.R6(x)))
        self$`branches` <- `branches`
      }
    },
    toJSON = function() {
      GitDetailsRepodetailsObject <- list()
      if (!is.null(self$`branches`)) {
        GitDetailsRepodetailsObject[['branches']] <- lapply(self$`branches`, function(x) x$toJSON())
      }

      GitDetailsRepodetailsObject
    },
    fromJSON = function(GitDetailsRepodetailsJson) {
      GitDetailsRepodetailsObject <- jsonlite::fromJSON(GitDetailsRepodetailsJson)
      if (!is.null(GitDetailsRepodetailsObject$`branches`)) {
        self$`branches` <- lapply(GitDetailsRepodetailsObject$`branches`, function(x) {
          branchesObject <- GitDetailsRepodetailsBranches$new()
          branchesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          branchesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "branches": [%s]
        }',
        lapply(self$`branches`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(GitDetailsRepodetailsJson) {
      GitDetailsRepodetailsObject <- jsonlite::fromJSON(GitDetailsRepodetailsJson)
      self$`branches` <- lapply(GitDetailsRepodetailsObject$`branches`, function(x) GitDetailsRepodetailsBranches$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
