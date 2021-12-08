# Export a table object to Excel.

library(Rgogo)
library(SampleTables)

# Export sample mortality table - make sure you delete any existing file in export folder
ExportToExcel(Mort.Sample.AA, "export/SampleMortTable.xlsx")

# Export CSO mortality table - make sure you delete any existing file in export folder
ExportToExcel(Mort.CSO2017LL.FN, "export/CSO2017FN.xlsx")

# Export 20-year endowment insurance cash value table - any existing file will be overwritten
ExportToExcel(CV.E20, "export/CVE20.xlsx", overwrite = TRUE)

