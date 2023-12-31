createDeepPatientLevelPredictionValidationModuleSpecifications <- function(
    validationComponentsList = list(
      list(
        targetId = 1,
        oucomeId = 4,
        restrictPlpDataSettings = PatientLevelPrediction::createRestrictPlpDataSettings(), # vector
        validationSettings = PatientLevelPrediction::createValidationSettings(
          recalibrate = "weakRecalibration"
          ),
        populationSettings = PatientLevelPrediction::createStudyPopulationSettings(
          riskWindowStart = 90, 
          riskWindowEnd = 360,
          requireTimeAtRisk = F
          )
      ), 
      list(
        targetId = 3,
        oucomeId = 4,
        restrictPlpDataSettings = PatientLevelPrediction::createRestrictPlpDataSettings(), # vector
        validationSettings = PatientLevelPrediction::createValidationSettings(
          recalibrate = "weakRecalibration"
          )
        
      )
    )
) {
  
  specifications <- list(
    module = "DeepPatientLevelPredictionValidationModule",
    version = "0.0.3",
    remoteRepo = "github.com",
    remoteUsername = "ohdsi",
    settings = validationComponentsList
  )
  class(specifications) <- c("PatientLevelPredictionValidationModuleSpecifications", "ModuleSpecifications")
  return(specifications)
}