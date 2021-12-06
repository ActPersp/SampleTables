# Create a select and ultimate table.

library(Rgogo)

tbl <- Table.SU(
   minSelAge = 18L,
   maxSelAge = 95L,
   selPeriod = 25L,
   maxAttAge = 120L,
   tBase = 1000, 
   source = "Society of Actuaries", 
   createdBy = "Edward Kuo",
   id = "Mort.CSO2017LL.FN", 
   descrip = "2017 Loaded CSO Female Nonsmoker ALB Mortality Rates per 1000"
)

tbl <- ImportTableValuesFromExcel.SU(
   tbl, "data-raw/2017 Loaded CSO Female Nonsmoker ALB.xlsx", 
   "2017 FNS ALB", "B4:Z81", "AA4:AA81"
)

SaveAsRda(tbl, overwrite = TRUE)

