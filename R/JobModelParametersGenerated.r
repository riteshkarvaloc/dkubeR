# Dkube api server
#
# No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
#
# OpenAPI spec version: 2.2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobModelParametersGenerated Class
#'
#' @field deleted 
#' @field archived 
#' @field isprivate 
#' @field category 
#' @field cicdstatus 
#' @field pipeline 
#' @field subclass 
#' @field hp_tuning_info 
#' @field training_image 
#' @field serving_image 
#' @field scheduled 
#' @field affinity 
#' @field user 
#' @field jobid 
#' @field uuid 
#' @field status 
#' @field timestamps 
#' @field runtime 
#' @field ngpus_alloc 
#' @field ngpus_max 
#' @field tbref 
#' @field studyref 
#' @field trialref 
#' @field best_trial_id 
#' @field best_objective_value 
#' @field accelerator 
#' @field versions 
#' @field tracking 
#' @field inputDatumRefs 
#' @field inputFeaturesetRefs 
#' @field details 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobModelParametersGenerated <- R6::R6Class(
  'JobModelParametersGenerated',
  public = list(
    `deleted` = NULL,
    `archived` = NULL,
    `isprivate` = NULL,
    `category` = NULL,
    `cicdstatus` = NULL,
    `pipeline` = NULL,
    `subclass` = NULL,
    `hp_tuning_info` = NULL,
    `training_image` = NULL,
    `serving_image` = NULL,
    `scheduled` = NULL,
    `affinity` = NULL,
    `user` = NULL,
    `jobid` = NULL,
    `uuid` = NULL,
    `status` = NULL,
    `timestamps` = NULL,
    `runtime` = NULL,
    `ngpus_alloc` = NULL,
    `ngpus_max` = NULL,
    `tbref` = NULL,
    `studyref` = NULL,
    `trialref` = NULL,
    `best_trial_id` = NULL,
    `best_objective_value` = NULL,
    `accelerator` = NULL,
    `versions` = NULL,
    `tracking` = NULL,
    `inputDatumRefs` = NULL,
    `inputFeaturesetRefs` = NULL,
    `details` = NULL,
    initialize = function(`deleted`, `archived`, `isprivate`, `category`, `cicdstatus`, `pipeline`, `subclass`, `hp_tuning_info`, `training_image`, `serving_image`, `scheduled`, `affinity`, `user`, `jobid`, `uuid`, `status`, `timestamps`, `runtime`, `ngpus_alloc`, `ngpus_max`, `tbref`, `studyref`, `trialref`, `best_trial_id`, `best_objective_value`, `accelerator`, `versions`, `tracking`, `inputDatumRefs`, `inputFeaturesetRefs`, `details`){
      if (!missing(`deleted`)) {
        self$`deleted` <- `deleted`
      }
      if (!missing(`archived`)) {
        self$`archived` <- `archived`
      }
      if (!missing(`isprivate`)) {
        stopifnot(is.character(`isprivate`), length(`isprivate`) == 1)
        self$`isprivate` <- `isprivate`
      }
      if (!missing(`category`)) {
        stopifnot(is.character(`category`), length(`category`) == 1)
        self$`category` <- `category`
      }
      if (!missing(`cicdstatus`)) {
        stopifnot(R6::is.R6(`cicdstatus`))
        self$`cicdstatus` <- `cicdstatus`
      }
      if (!missing(`pipeline`)) {
        stopifnot(R6::is.R6(`pipeline`))
        self$`pipeline` <- `pipeline`
      }
      if (!missing(`subclass`)) {
        stopifnot(is.character(`subclass`), length(`subclass`) == 1)
        self$`subclass` <- `subclass`
      }
      if (!missing(`hp_tuning_info`)) {
        stopifnot(is.character(`hp_tuning_info`), length(`hp_tuning_info`) == 1)
        self$`hp_tuning_info` <- `hp_tuning_info`
      }
      if (!missing(`training_image`)) {
        stopifnot(R6::is.R6(`training_image`))
        self$`training_image` <- `training_image`
      }
      if (!missing(`serving_image`)) {
        stopifnot(R6::is.R6(`serving_image`))
        self$`serving_image` <- `serving_image`
      }
      if (!missing(`scheduled`)) {
        self$`scheduled` <- `scheduled`
      }
      if (!missing(`affinity`)) {
        stopifnot(is.character(`affinity`), length(`affinity`) == 1)
        self$`affinity` <- `affinity`
      }
      if (!missing(`user`)) {
        stopifnot(is.character(`user`), length(`user`) == 1)
        self$`user` <- `user`
      }
      if (!missing(`jobid`)) {
        stopifnot(is.character(`jobid`), length(`jobid`) == 1)
        self$`jobid` <- `jobid`
      }
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`timestamps`)) {
        stopifnot(R6::is.R6(`timestamps`))
        self$`timestamps` <- `timestamps`
      }
      if (!missing(`runtime`)) {
        stopifnot(R6::is.R6(`runtime`))
        self$`runtime` <- `runtime`
      }
      if (!missing(`ngpus_alloc`)) {
        stopifnot(is.numeric(`ngpus_alloc`), length(`ngpus_alloc`) == 1)
        self$`ngpus_alloc` <- `ngpus_alloc`
      }
      if (!missing(`ngpus_max`)) {
        stopifnot(is.numeric(`ngpus_max`), length(`ngpus_max`) == 1)
        self$`ngpus_max` <- `ngpus_max`
      }
      if (!missing(`tbref`)) {
        stopifnot(is.character(`tbref`), length(`tbref`) == 1)
        self$`tbref` <- `tbref`
      }
      if (!missing(`studyref`)) {
        stopifnot(is.character(`studyref`), length(`studyref`) == 1)
        self$`studyref` <- `studyref`
      }
      if (!missing(`trialref`)) {
        stopifnot(is.character(`trialref`), length(`trialref`) == 1)
        self$`trialref` <- `trialref`
      }
      if (!missing(`best_trial_id`)) {
        stopifnot(is.character(`best_trial_id`), length(`best_trial_id`) == 1)
        self$`best_trial_id` <- `best_trial_id`
      }
      if (!missing(`best_objective_value`)) {
        self$`best_objective_value` <- `best_objective_value`
      }
      if (!missing(`accelerator`)) {
        stopifnot(is.character(`accelerator`), length(`accelerator`) == 1)
        self$`accelerator` <- `accelerator`
      }
      if (!missing(`versions`)) {
        stopifnot(R6::is.R6(`versions`))
        self$`versions` <- `versions`
      }
      if (!missing(`tracking`)) {
        stopifnot(is.list(`tracking`), length(`tracking`) != 0)
        lapply(`tracking`, function(x) stopifnot(is.character(x)))
        self$`tracking` <- `tracking`
      }
      if (!missing(`inputDatumRefs`)) {
        stopifnot(is.list(`inputDatumRefs`), length(`inputDatumRefs`) != 0)
        lapply(`inputDatumRefs`, function(x) stopifnot(R6::is.R6(x)))
        self$`inputDatumRefs` <- `inputDatumRefs`
      }
      if (!missing(`inputFeaturesetRefs`)) {
        stopifnot(is.list(`inputFeaturesetRefs`), length(`inputFeaturesetRefs`) != 0)
        lapply(`inputFeaturesetRefs`, function(x) stopifnot(R6::is.R6(x)))
        self$`inputFeaturesetRefs` <- `inputFeaturesetRefs`
      }
      if (!missing(`details`)) {
        stopifnot(R6::is.R6(`details`))
        self$`details` <- `details`
      }
    },
    toJSON = function() {
      JobModelParametersGeneratedObject <- list()
      if (!is.null(self$`deleted`)) {
        JobModelParametersGeneratedObject[['deleted']] <- self$`deleted`
      }
      if (!is.null(self$`archived`)) {
        JobModelParametersGeneratedObject[['archived']] <- self$`archived`
      }
      if (!is.null(self$`isprivate`)) {
        JobModelParametersGeneratedObject[['isprivate']] <- self$`isprivate`
      }
      if (!is.null(self$`category`)) {
        JobModelParametersGeneratedObject[['category']] <- self$`category`
      }
      if (!is.null(self$`cicdstatus`)) {
        JobModelParametersGeneratedObject[['cicdstatus']] <- self$`cicdstatus`$toJSON()
      }
      if (!is.null(self$`pipeline`)) {
        JobModelParametersGeneratedObject[['pipeline']] <- self$`pipeline`$toJSON()
      }
      if (!is.null(self$`subclass`)) {
        JobModelParametersGeneratedObject[['subclass']] <- self$`subclass`
      }
      if (!is.null(self$`hp_tuning_info`)) {
        JobModelParametersGeneratedObject[['hp_tuning_info']] <- self$`hp_tuning_info`
      }
      if (!is.null(self$`training_image`)) {
        JobModelParametersGeneratedObject[['training_image']] <- self$`training_image`$toJSON()
      }
      if (!is.null(self$`serving_image`)) {
        JobModelParametersGeneratedObject[['serving_image']] <- self$`serving_image`$toJSON()
      }
      if (!is.null(self$`scheduled`)) {
        JobModelParametersGeneratedObject[['scheduled']] <- self$`scheduled`
      }
      if (!is.null(self$`affinity`)) {
        JobModelParametersGeneratedObject[['affinity']] <- self$`affinity`
      }
      if (!is.null(self$`user`)) {
        JobModelParametersGeneratedObject[['user']] <- self$`user`
      }
      if (!is.null(self$`jobid`)) {
        JobModelParametersGeneratedObject[['jobid']] <- self$`jobid`
      }
      if (!is.null(self$`uuid`)) {
        JobModelParametersGeneratedObject[['uuid']] <- self$`uuid`
      }
      if (!is.null(self$`status`)) {
        JobModelParametersGeneratedObject[['status']] <- self$`status`$toJSON()
      }
      if (!is.null(self$`timestamps`)) {
        JobModelParametersGeneratedObject[['timestamps']] <- self$`timestamps`$toJSON()
      }
      if (!is.null(self$`runtime`)) {
        JobModelParametersGeneratedObject[['runtime']] <- self$`runtime`$toJSON()
      }
      if (!is.null(self$`ngpus_alloc`)) {
        JobModelParametersGeneratedObject[['ngpus_alloc']] <- self$`ngpus_alloc`
      }
      if (!is.null(self$`ngpus_max`)) {
        JobModelParametersGeneratedObject[['ngpus_max']] <- self$`ngpus_max`
      }
      if (!is.null(self$`tbref`)) {
        JobModelParametersGeneratedObject[['tbref']] <- self$`tbref`
      }
      if (!is.null(self$`studyref`)) {
        JobModelParametersGeneratedObject[['studyref']] <- self$`studyref`
      }
      if (!is.null(self$`trialref`)) {
        JobModelParametersGeneratedObject[['trialref']] <- self$`trialref`
      }
      if (!is.null(self$`best_trial_id`)) {
        JobModelParametersGeneratedObject[['best_trial_id']] <- self$`best_trial_id`
      }
      if (!is.null(self$`best_objective_value`)) {
        JobModelParametersGeneratedObject[['best_objective_value']] <- self$`best_objective_value`
      }
      if (!is.null(self$`accelerator`)) {
        JobModelParametersGeneratedObject[['accelerator']] <- self$`accelerator`
      }
      if (!is.null(self$`versions`)) {
        JobModelParametersGeneratedObject[['versions']] <- self$`versions`$toJSON()
      }
      if (!is.null(self$`tracking`)) {
        JobModelParametersGeneratedObject[['tracking']] <- self$`tracking`
      }
      if (!is.null(self$`inputDatumRefs`)) {
        JobModelParametersGeneratedObject[['inputDatumRefs']] <- lapply(self$`inputDatumRefs`, function(x) x$toJSON())
      }
      if (!is.null(self$`inputFeaturesetRefs`)) {
        JobModelParametersGeneratedObject[['inputFeaturesetRefs']] <- lapply(self$`inputFeaturesetRefs`, function(x) x$toJSON())
      }
      if (!is.null(self$`details`)) {
        JobModelParametersGeneratedObject[['details']] <- self$`details`$toJSON()
      }

      JobModelParametersGeneratedObject
    },
    fromJSON = function(JobModelParametersGeneratedJson) {
      JobModelParametersGeneratedObject <- jsonlite::fromJSON(JobModelParametersGeneratedJson)
      if (!is.null(JobModelParametersGeneratedObject$`deleted`)) {
        self$`deleted` <- JobModelParametersGeneratedObject$`deleted`
      }
      if (!is.null(JobModelParametersGeneratedObject$`archived`)) {
        self$`archived` <- JobModelParametersGeneratedObject$`archived`
      }
      if (!is.null(JobModelParametersGeneratedObject$`isprivate`)) {
        self$`isprivate` <- JobModelParametersGeneratedObject$`isprivate`
      }
      if (!is.null(JobModelParametersGeneratedObject$`category`)) {
        self$`category` <- JobModelParametersGeneratedObject$`category`
      }
      if (!is.null(JobModelParametersGeneratedObject$`cicdstatus`)) {
        cicdstatusObject <- CICDStatusModel$new()
        cicdstatusObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$cicdstatus, auto_unbox = TRUE))
        self$`cicdstatus` <- cicdstatusObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`pipeline`)) {
        pipelineObject <- JobModelParametersGeneratedPipeline$new()
        pipelineObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$pipeline, auto_unbox = TRUE))
        self$`pipeline` <- pipelineObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`subclass`)) {
        self$`subclass` <- JobModelParametersGeneratedObject$`subclass`
      }
      if (!is.null(JobModelParametersGeneratedObject$`hp_tuning_info`)) {
        self$`hp_tuning_info` <- JobModelParametersGeneratedObject$`hp_tuning_info`
      }
      if (!is.null(JobModelParametersGeneratedObject$`training_image`)) {
        training_imageObject <- CustomContainerModel$new()
        training_imageObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$training_image, auto_unbox = TRUE))
        self$`training_image` <- training_imageObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`serving_image`)) {
        serving_imageObject <- CustomContainerModel$new()
        serving_imageObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$serving_image, auto_unbox = TRUE))
        self$`serving_image` <- serving_imageObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`scheduled`)) {
        self$`scheduled` <- JobModelParametersGeneratedObject$`scheduled`
      }
      if (!is.null(JobModelParametersGeneratedObject$`affinity`)) {
        self$`affinity` <- JobModelParametersGeneratedObject$`affinity`
      }
      if (!is.null(JobModelParametersGeneratedObject$`user`)) {
        self$`user` <- JobModelParametersGeneratedObject$`user`
      }
      if (!is.null(JobModelParametersGeneratedObject$`jobid`)) {
        self$`jobid` <- JobModelParametersGeneratedObject$`jobid`
      }
      if (!is.null(JobModelParametersGeneratedObject$`uuid`)) {
        self$`uuid` <- JobModelParametersGeneratedObject$`uuid`
      }
      if (!is.null(JobModelParametersGeneratedObject$`status`)) {
        statusObject <- JobStatusModel$new()
        statusObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$status, auto_unbox = TRUE))
        self$`status` <- statusObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`timestamps`)) {
        timestampsObject <- TimeStamps$new()
        timestampsObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$timestamps, auto_unbox = TRUE))
        self$`timestamps` <- timestampsObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`runtime`)) {
        runtimeObject <- TimeStamps$new()
        runtimeObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$runtime, auto_unbox = TRUE))
        self$`runtime` <- runtimeObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`ngpus_alloc`)) {
        self$`ngpus_alloc` <- JobModelParametersGeneratedObject$`ngpus_alloc`
      }
      if (!is.null(JobModelParametersGeneratedObject$`ngpus_max`)) {
        self$`ngpus_max` <- JobModelParametersGeneratedObject$`ngpus_max`
      }
      if (!is.null(JobModelParametersGeneratedObject$`tbref`)) {
        self$`tbref` <- JobModelParametersGeneratedObject$`tbref`
      }
      if (!is.null(JobModelParametersGeneratedObject$`studyref`)) {
        self$`studyref` <- JobModelParametersGeneratedObject$`studyref`
      }
      if (!is.null(JobModelParametersGeneratedObject$`trialref`)) {
        self$`trialref` <- JobModelParametersGeneratedObject$`trialref`
      }
      if (!is.null(JobModelParametersGeneratedObject$`best_trial_id`)) {
        self$`best_trial_id` <- JobModelParametersGeneratedObject$`best_trial_id`
      }
      if (!is.null(JobModelParametersGeneratedObject$`best_objective_value`)) {
        self$`best_objective_value` <- JobModelParametersGeneratedObject$`best_objective_value`
      }
      if (!is.null(JobModelParametersGeneratedObject$`accelerator`)) {
        self$`accelerator` <- JobModelParametersGeneratedObject$`accelerator`
      }
      if (!is.null(JobModelParametersGeneratedObject$`versions`)) {
        versionsObject <- JobModelParametersGeneratedVersions$new()
        versionsObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$versions, auto_unbox = TRUE))
        self$`versions` <- versionsObject
      }
      if (!is.null(JobModelParametersGeneratedObject$`tracking`)) {
        self$`tracking` <- JobModelParametersGeneratedObject$`tracking`
      }
      if (!is.null(JobModelParametersGeneratedObject$`inputDatumRefs`)) {
        self$`inputDatumRefs` <- lapply(JobModelParametersGeneratedObject$`inputDatumRefs`, function(x) {
          inputDatumRefsObject <- JobModelParametersGeneratedInputDatumRefs$new()
          inputDatumRefsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          inputDatumRefsObject
        })
      }
      if (!is.null(JobModelParametersGeneratedObject$`inputFeaturesetRefs`)) {
        self$`inputFeaturesetRefs` <- lapply(JobModelParametersGeneratedObject$`inputFeaturesetRefs`, function(x) {
          inputFeaturesetRefsObject <- JobModelParametersGeneratedInputFeaturesetRefs$new()
          inputFeaturesetRefsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          inputFeaturesetRefsObject
        })
      }
      if (!is.null(JobModelParametersGeneratedObject$`details`)) {
        detailsObject <- JobModelParametersGeneratedDetails$new()
        detailsObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$details, auto_unbox = TRUE))
        self$`details` <- detailsObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "deleted": %s,
           "archived": %s,
           "isprivate": %s,
           "category": %s,
           "cicdstatus": %s,
           "pipeline": %s,
           "subclass": %s,
           "hp_tuning_info": %s,
           "training_image": %s,
           "serving_image": %s,
           "scheduled": %s,
           "affinity": %s,
           "user": %s,
           "jobid": %s,
           "uuid": %s,
           "status": %s,
           "timestamps": %s,
           "runtime": %s,
           "ngpus_alloc": %d,
           "ngpus_max": %d,
           "tbref": %s,
           "studyref": %s,
           "trialref": %s,
           "best_trial_id": %s,
           "best_objective_value": %s,
           "accelerator": %s,
           "versions": %s,
           "tracking": [%s],
           "inputDatumRefs": [%s],
           "inputFeaturesetRefs": [%s],
           "details": %s
        }',
        self$`deleted`,
        self$`archived`,
        self$`isprivate`,
        self$`category`,
        self$`cicdstatus`$toJSON(),
        self$`pipeline`$toJSON(),
        self$`subclass`,
        self$`hp_tuning_info`,
        self$`training_image`$toJSON(),
        self$`serving_image`$toJSON(),
        self$`scheduled`,
        self$`affinity`,
        self$`user`,
        self$`jobid`,
        self$`uuid`,
        self$`status`$toJSON(),
        self$`timestamps`$toJSON(),
        self$`runtime`$toJSON(),
        self$`ngpus_alloc`,
        self$`ngpus_max`,
        self$`tbref`,
        self$`studyref`,
        self$`trialref`,
        self$`best_trial_id`,
        self$`best_objective_value`,
        self$`accelerator`,
        self$`versions`$toJSON(),
        lapply(self$`tracking`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`inputDatumRefs`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`inputFeaturesetRefs`, function(x) paste(x$toJSON(), sep=",")),
        self$`details`$toJSON()
      )
    },
    fromJSONString = function(JobModelParametersGeneratedJson) {
      JobModelParametersGeneratedObject <- jsonlite::fromJSON(JobModelParametersGeneratedJson)
      self$`deleted` <- JobModelParametersGeneratedObject$`deleted`
      self$`archived` <- JobModelParametersGeneratedObject$`archived`
      self$`isprivate` <- JobModelParametersGeneratedObject$`isprivate`
      self$`category` <- JobModelParametersGeneratedObject$`category`
      CICDStatusModelObject <- CICDStatusModel$new()
      self$`cicdstatus` <- CICDStatusModelObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$cicdstatus, auto_unbox = TRUE))
      JobModelParametersGeneratedPipelineObject <- JobModelParametersGeneratedPipeline$new()
      self$`pipeline` <- JobModelParametersGeneratedPipelineObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$pipeline, auto_unbox = TRUE))
      self$`subclass` <- JobModelParametersGeneratedObject$`subclass`
      self$`hp_tuning_info` <- JobModelParametersGeneratedObject$`hp_tuning_info`
      CustomContainerModelObject <- CustomContainerModel$new()
      self$`training_image` <- CustomContainerModelObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$training_image, auto_unbox = TRUE))
      CustomContainerModelObject <- CustomContainerModel$new()
      self$`serving_image` <- CustomContainerModelObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$serving_image, auto_unbox = TRUE))
      self$`scheduled` <- JobModelParametersGeneratedObject$`scheduled`
      self$`affinity` <- JobModelParametersGeneratedObject$`affinity`
      self$`user` <- JobModelParametersGeneratedObject$`user`
      self$`jobid` <- JobModelParametersGeneratedObject$`jobid`
      self$`uuid` <- JobModelParametersGeneratedObject$`uuid`
      JobStatusModelObject <- JobStatusModel$new()
      self$`status` <- JobStatusModelObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$status, auto_unbox = TRUE))
      TimeStampsObject <- TimeStamps$new()
      self$`timestamps` <- TimeStampsObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$timestamps, auto_unbox = TRUE))
      TimeStampsObject <- TimeStamps$new()
      self$`runtime` <- TimeStampsObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$runtime, auto_unbox = TRUE))
      self$`ngpus_alloc` <- JobModelParametersGeneratedObject$`ngpus_alloc`
      self$`ngpus_max` <- JobModelParametersGeneratedObject$`ngpus_max`
      self$`tbref` <- JobModelParametersGeneratedObject$`tbref`
      self$`studyref` <- JobModelParametersGeneratedObject$`studyref`
      self$`trialref` <- JobModelParametersGeneratedObject$`trialref`
      self$`best_trial_id` <- JobModelParametersGeneratedObject$`best_trial_id`
      self$`best_objective_value` <- JobModelParametersGeneratedObject$`best_objective_value`
      self$`accelerator` <- JobModelParametersGeneratedObject$`accelerator`
      JobModelParametersGeneratedVersionsObject <- JobModelParametersGeneratedVersions$new()
      self$`versions` <- JobModelParametersGeneratedVersionsObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$versions, auto_unbox = TRUE))
      self$`tracking` <- JobModelParametersGeneratedObject$`tracking`
      self$`inputDatumRefs` <- lapply(JobModelParametersGeneratedObject$`inputDatumRefs`, function(x) JobModelParametersGeneratedInputDatumRefs$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`inputFeaturesetRefs` <- lapply(JobModelParametersGeneratedObject$`inputFeaturesetRefs`, function(x) JobModelParametersGeneratedInputFeaturesetRefs$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      JobModelParametersGeneratedDetailsObject <- JobModelParametersGeneratedDetails$new()
      self$`details` <- JobModelParametersGeneratedDetailsObject$fromJSON(jsonlite::toJSON(JobModelParametersGeneratedObject$details, auto_unbox = TRUE))
    }
  )
)
