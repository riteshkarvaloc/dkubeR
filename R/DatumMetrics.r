# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DatumMetrics Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatumMetrics <- R6::R6Class(
  'DatumMetrics',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      DatumMetricsObject <- list()

      DatumMetricsObject
    },
    fromJSON = function(DatumMetricsJson) {
      DatumMetricsObject <- jsonlite::fromJSON(DatumMetricsJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(DatumMetricsJson) {
      DatumMetricsObject <- jsonlite::fromJSON(DatumMetricsJson)
    }
  )
)
