# Create an attained age by birth year table.

library(Rgogo)

tbl <- Table.AABY(
   minAge = 0L, 
   maxAge = 119L,
   minBirthYear = 1900L,
   maxBirthYear = 2007L, 
   tBase = 1, 
   source = "US Social Security Administration", 
   createdBy = "Edward Kuo",
   id = "Mort.SSA.M", 
   descrip = "Social Security Administration Mortality Rates 1900-2007, Male"
)

tbl <- ImportTableValuesFromExcel(tbl, "data-raw/SSA Mortality Rates 1900-2007.xlsx", 
                                  "Male", "B2:DE121")

SaveAsRda(tbl, overwrite = TRUE)



tbl <- Table.AABY(
   minAge = 0L, 
   maxAge = 119L,
   minBirthYear = 1900L,
   maxBirthYear = 2007L, 
   tBase = 1, 
   source = "US Social Security Administration", 
   createdBy = "Edward Kuo",
   id = "Mort.SSA.F", 
   descrip = "Social Security Administration Mortality Rates 1900-2007, Female"
)

tbl <- ImportTableValuesFromExcel(tbl, "data-raw/SSA Mortality Rates 1900-2007.xlsx", 
                                  "Female", "B2:DQ109", transposeData = TRUE)

SaveAsRda(tbl, overwrite = TRUE)
