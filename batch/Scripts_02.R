# Create an attained age table by importing table values from an Excel file.

library(Rgogo)

tbl <- Table.AA(
   minAge = 0L, 
   maxAge = 110L, 
   tBase = 1000, 
   source = "Actuarial Mathematics (Bowers Jr, Gerber, Hickman, Jones, Nesbit)", 
   createdBy = "Edward Kuo",
   id = "Mort.Sample.AA", 
   descrip = "Sample mortality table - attained age table"
)

tbl <- ImportTableValuesFromExcel(tbl, "data-raw/Sample Mortality Table.xlsx", "Sheet1", "B2:B112")

SaveAsRda(tbl, overwrite = TRUE)

