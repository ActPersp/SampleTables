library(Rgogo)
library(SampleTables)

# Export sample mortality table
ExportToExcel(Mort.Sample.AA, "export/SampleMortTable.xlsx")

# Export CSO mortality table
ExportToExcel(Mort.CSO2017LL.FN, "export/CSO2017FN.xlsx")

# Export 20-year endowment insurance cash value table
ExportToExcel(CV.E20, "export/CVE20.xlsx", overwrite = TRUE)

