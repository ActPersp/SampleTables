# Create an issue age table by importing table values from an Excel file.

library(Rgogo)

tbl <- Table.IA(
   minAge = 18L, 
   maxAge = 55L, 
   tBase = 1000, 
   source = "Rgog Sample Project", 
   createdBy = "Edward Kuo",
   id = "Prem.LT10.M", 
   descrip = "10-Year Level Term Premium Rates, Male"
)

tbl <- ImportTableValuesFromExcel(tbl, "data-raw/Sample LT10 Premium Table.xlsx", "Sheet1", "C6:C43")

SaveAsRda(tbl, overwrite = TRUE)



tbl <- Table.IA(
   minAge = 18L, 
   maxAge = 55L, 
   tBase = 1000, 
   source = "Rgog Sample Project", 
   createdBy = "Edward Kuo",
   id = "Prem.LT10.F", 
   descrip = "10-Year Level Term Premium Rates, Female"
)

tbl <- ImportTableValuesFromExcel(tbl, "data-raw/Sample LT10 Premium Table.xlsx", "Sheet1", "D6:D43")

SaveAsRda(tbl, overwrite = TRUE)

