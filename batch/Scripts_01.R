# Create a simple attained age table in which values for all attained ages are identical.

library(Rgogo)

tbl <- Table.AA(
   minAge = 18L, 
   maxAge = 70L, 
   tValue = 0.75,
   tBase = 1000, 
   source = "SampleTables Project", 
   createdBy = "Edward Kuo",
   id = "Prem.ADB", 
   descrip = "Accidental death benefit premium rates"
)

SaveAsRda(tbl, overwrite = TRUE)

