# Create an issue age by policy year table.

library(Rgogo)

tbl <- Table.IAPY(
   minAge = 18L, 
   maxAge = 50L, 
   maxPolYear = 20L,
   tBase = 1000, 
   source = "Sample Cash Value Table.xlsx", 
   createdBy = "Edward Kuo",
   id = "CV.E20", 
   descrip = "20-Year Endowment Cash Value Table"
)

tbl <- ImportTableValuesFromExcel(tbl, "data-raw/Sample Cash Value Table.xlsx", "Sheet1", "B3:U35")

SaveAsRda(tbl, overwrite = TRUE)

