# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DatumModel Class
#'
#' @field version 
#' @field name 
#' @field description 
#' @field tags 
#' @field class 
#' @field dvs 
#' @field source 
#' @field url 
#' @field remote 
#' @field gitaccess 
#' @field redshift 
#' @field s3access 
#' @field k8svolume 
#' @field hostpath 
#' @field nfsaccess 
#' @field gcsaccess 
#' @field generated 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatumModel <- R6::R6Class(
  'DatumModel',
  public = list(
    `version` = NULL,
    `name` = NULL,
    `description` = NULL,
    `tags` = NULL,
    `class` = NULL,
    `dvs` = NULL,
    `source` = NULL,
    `url` = NULL,
    `remote` = NULL,
    `gitaccess` = NULL,
    `redshift` = NULL,
    `s3access` = NULL,
    `k8svolume` = NULL,
    `hostpath` = NULL,
    `nfsaccess` = NULL,
    `gcsaccess` = NULL,
    `generated` = NULL,
    initialize = function(`version`, `name`, `description`, `tags`, `class`, `dvs`, `source`, `url`, `remote`, `gitaccess`, `redshift`, `s3access`, `k8svolume`, `hostpath`, `nfsaccess`, `gcsaccess`, `generated`){
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`tags`)) {
        stopifnot(is.list(`tags`), length(`tags`) != 0)
        lapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!missing(`class`)) {
        stopifnot(is.character(`class`), length(`class`) == 1)
        self$`class` <- `class`
      }
      if (!missing(`dvs`)) {
        stopifnot(is.character(`dvs`), length(`dvs`) == 1)
        self$`dvs` <- `dvs`
      }
      if (!missing(`source`)) {
        stopifnot(is.character(`source`), length(`source`) == 1)
        self$`source` <- `source`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`remote`)) {
        self$`remote` <- `remote`
      }
      if (!missing(`gitaccess`)) {
        stopifnot(R6::is.R6(`gitaccess`))
        self$`gitaccess` <- `gitaccess`
      }
      if (!missing(`redshift`)) {
        stopifnot(R6::is.R6(`redshift`))
        self$`redshift` <- `redshift`
      }
      if (!missing(`s3access`)) {
        stopifnot(R6::is.R6(`s3access`))
        self$`s3access` <- `s3access`
      }
      if (!missing(`k8svolume`)) {
        stopifnot(R6::is.R6(`k8svolume`))
        self$`k8svolume` <- `k8svolume`
      }
      if (!missing(`hostpath`)) {
        stopifnot(R6::is.R6(`hostpath`))
        self$`hostpath` <- `hostpath`
      }
      if (!missing(`nfsaccess`)) {
        stopifnot(R6::is.R6(`nfsaccess`))
        self$`nfsaccess` <- `nfsaccess`
      }
      if (!missing(`gcsaccess`)) {
        stopifnot(R6::is.R6(`gcsaccess`))
        self$`gcsaccess` <- `gcsaccess`
      }
      if (!missing(`generated`)) {
        stopifnot(R6::is.R6(`generated`))
        self$`generated` <- `generated`
      }
    },
    toJSON = function() {
      DatumModelObject <- list()
      if (!is.null(self$`version`)) {
        DatumModelObject[['version']] <- self$`version`
      }
      if (!is.null(self$`name`)) {
        DatumModelObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        DatumModelObject[['description']] <- self$`description`
      }
      if (!is.null(self$`tags`)) {
        DatumModelObject[['tags']] <- self$`tags`
      }
      if (!is.null(self$`class`)) {
        DatumModelObject[['class']] <- self$`class`
      }
      if (!is.null(self$`dvs`)) {
        DatumModelObject[['dvs']] <- self$`dvs`
      }
      if (!is.null(self$`source`)) {
        DatumModelObject[['source']] <- self$`source`
      }
      if (!is.null(self$`url`)) {
        DatumModelObject[['url']] <- self$`url`
      }
      if (!is.null(self$`remote`)) {
        DatumModelObject[['remote']] <- self$`remote`
      }
      if (!is.null(self$`gitaccess`)) {
        DatumModelObject[['gitaccess']] <- self$`gitaccess`$toJSON()
      }
      if (!is.null(self$`redshift`)) {
        DatumModelObject[['redshift']] <- self$`redshift`$toJSON()
      }
      if (!is.null(self$`s3access`)) {
        DatumModelObject[['s3access']] <- self$`s3access`$toJSON()
      }
      if (!is.null(self$`k8svolume`)) {
        DatumModelObject[['k8svolume']] <- self$`k8svolume`$toJSON()
      }
      if (!is.null(self$`hostpath`)) {
        DatumModelObject[['hostpath']] <- self$`hostpath`$toJSON()
      }
      if (!is.null(self$`nfsaccess`)) {
        DatumModelObject[['nfsaccess']] <- self$`nfsaccess`$toJSON()
      }
      if (!is.null(self$`gcsaccess`)) {
        DatumModelObject[['gcsaccess']] <- self$`gcsaccess`$toJSON()
      }
      if (!is.null(self$`generated`)) {
        DatumModelObject[['generated']] <- self$`generated`$toJSON()
      }

      DatumModelObject
    },
    fromJSON = function(DatumModelJson) {
      DatumModelObject <- jsonlite::fromJSON(DatumModelJson)
      if (!is.null(DatumModelObject$`version`)) {
        self$`version` <- DatumModelObject$`version`
      }
      if (!is.null(DatumModelObject$`name`)) {
        self$`name` <- DatumModelObject$`name`
      }
      if (!is.null(DatumModelObject$`description`)) {
        self$`description` <- DatumModelObject$`description`
      }
      if (!is.null(DatumModelObject$`tags`)) {
        self$`tags` <- DatumModelObject$`tags`
      }
      if (!is.null(DatumModelObject$`class`)) {
        self$`class` <- DatumModelObject$`class`
      }
      if (!is.null(DatumModelObject$`dvs`)) {
        self$`dvs` <- DatumModelObject$`dvs`
      }
      if (!is.null(DatumModelObject$`source`)) {
        self$`source` <- DatumModelObject$`source`
      }
      if (!is.null(DatumModelObject$`url`)) {
        self$`url` <- DatumModelObject$`url`
      }
      if (!is.null(DatumModelObject$`remote`)) {
        self$`remote` <- DatumModelObject$`remote`
      }
      if (!is.null(DatumModelObject$`gitaccess`)) {
        gitaccessObject <- GitAccessInfo$new()
        gitaccessObject$fromJSON(jsonlite::toJSON(DatumModelObject$gitaccess, auto_unbox = TRUE))
        self$`gitaccess` <- gitaccessObject
      }
      if (!is.null(DatumModelObject$`redshift`)) {
        redshiftObject <- RedshiftAccessInfo$new()
        redshiftObject$fromJSON(jsonlite::toJSON(DatumModelObject$redshift, auto_unbox = TRUE))
        self$`redshift` <- redshiftObject
      }
      if (!is.null(DatumModelObject$`s3access`)) {
        s3accessObject <- S3AccessCredentials$new()
        s3accessObject$fromJSON(jsonlite::toJSON(DatumModelObject$s3access, auto_unbox = TRUE))
        self$`s3access` <- s3accessObject
      }
      if (!is.null(DatumModelObject$`k8svolume`)) {
        k8svolumeObject <- DatumModelK8svolume$new()
        k8svolumeObject$fromJSON(jsonlite::toJSON(DatumModelObject$k8svolume, auto_unbox = TRUE))
        self$`k8svolume` <- k8svolumeObject
      }
      if (!is.null(DatumModelObject$`hostpath`)) {
        hostpathObject <- DatumModelHostpath$new()
        hostpathObject$fromJSON(jsonlite::toJSON(DatumModelObject$hostpath, auto_unbox = TRUE))
        self$`hostpath` <- hostpathObject
      }
      if (!is.null(DatumModelObject$`nfsaccess`)) {
        nfsaccessObject <- NFSAccessInfo$new()
        nfsaccessObject$fromJSON(jsonlite::toJSON(DatumModelObject$nfsaccess, auto_unbox = TRUE))
        self$`nfsaccess` <- nfsaccessObject
      }
      if (!is.null(DatumModelObject$`gcsaccess`)) {
        gcsaccessObject <- GCSAccessInfo$new()
        gcsaccessObject$fromJSON(jsonlite::toJSON(DatumModelObject$gcsaccess, auto_unbox = TRUE))
        self$`gcsaccess` <- gcsaccessObject
      }
      if (!is.null(DatumModelObject$`generated`)) {
        generatedObject <- DatumModelGenerated$new()
        generatedObject$fromJSON(jsonlite::toJSON(DatumModelObject$generated, auto_unbox = TRUE))
        self$`generated` <- generatedObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "version": %s,
           "name": %s,
           "description": %s,
           "tags": [%s],
           "class": %s,
           "dvs": %s,
           "source": %s,
           "url": %s,
           "remote": %s,
           "gitaccess": %s,
           "redshift": %s,
           "s3access": %s,
           "k8svolume": %s,
           "hostpath": %s,
           "nfsaccess": %s,
           "gcsaccess": %s,
           "generated": %s
        }',
        self$`version`,
        self$`name`,
        self$`description`,
        lapply(self$`tags`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`class`,
        self$`dvs`,
        self$`source`,
        self$`url`,
        self$`remote`,
        self$`gitaccess`$toJSON(),
        self$`redshift`$toJSON(),
        self$`s3access`$toJSON(),
        self$`k8svolume`$toJSON(),
        self$`hostpath`$toJSON(),
        self$`nfsaccess`$toJSON(),
        self$`gcsaccess`$toJSON(),
        self$`generated`$toJSON()
      )
    },
    fromJSONString = function(DatumModelJson) {
      DatumModelObject <- jsonlite::fromJSON(DatumModelJson)
      self$`version` <- DatumModelObject$`version`
      self$`name` <- DatumModelObject$`name`
      self$`description` <- DatumModelObject$`description`
      self$`tags` <- DatumModelObject$`tags`
      self$`class` <- DatumModelObject$`class`
      self$`dvs` <- DatumModelObject$`dvs`
      self$`source` <- DatumModelObject$`source`
      self$`url` <- DatumModelObject$`url`
      self$`remote` <- DatumModelObject$`remote`
      GitAccessInfoObject <- GitAccessInfo$new()
      self$`gitaccess` <- GitAccessInfoObject$fromJSON(jsonlite::toJSON(DatumModelObject$gitaccess, auto_unbox = TRUE))
      RedshiftAccessInfoObject <- RedshiftAccessInfo$new()
      self$`redshift` <- RedshiftAccessInfoObject$fromJSON(jsonlite::toJSON(DatumModelObject$redshift, auto_unbox = TRUE))
      S3AccessCredentialsObject <- S3AccessCredentials$new()
      self$`s3access` <- S3AccessCredentialsObject$fromJSON(jsonlite::toJSON(DatumModelObject$s3access, auto_unbox = TRUE))
      DatumModelK8svolumeObject <- DatumModelK8svolume$new()
      self$`k8svolume` <- DatumModelK8svolumeObject$fromJSON(jsonlite::toJSON(DatumModelObject$k8svolume, auto_unbox = TRUE))
      DatumModelHostpathObject <- DatumModelHostpath$new()
      self$`hostpath` <- DatumModelHostpathObject$fromJSON(jsonlite::toJSON(DatumModelObject$hostpath, auto_unbox = TRUE))
      NFSAccessInfoObject <- NFSAccessInfo$new()
      self$`nfsaccess` <- NFSAccessInfoObject$fromJSON(jsonlite::toJSON(DatumModelObject$nfsaccess, auto_unbox = TRUE))
      GCSAccessInfoObject <- GCSAccessInfo$new()
      self$`gcsaccess` <- GCSAccessInfoObject$fromJSON(jsonlite::toJSON(DatumModelObject$gcsaccess, auto_unbox = TRUE))
      DatumModelGeneratedObject <- DatumModelGenerated$new()
      self$`generated` <- DatumModelGeneratedObject$fromJSON(jsonlite::toJSON(DatumModelObject$generated, auto_unbox = TRUE))
    }
  )
)
