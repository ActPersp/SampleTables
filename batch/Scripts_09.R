# Look up tables using coverage object as lookup key.

library(Rgogo)
library(SampleTables)


# Create a coverage object
cov <- Cov(
   issDate = as.Date("2021-01-01"), 
   issAge = 35L, 
   riskClass = "", 
   faceAmt = 0,
   premMode = integer()
)


# Look up an attained age mortality table:
LookUp(Mort.Sample.AA, cov)

# Look up a select and ultimate mortality table:
LookUp(Mort.CSO2017LL.FN, cov)

# Look up a issue age by policy year cash value table:
LookUp(CV.E20, cov)

