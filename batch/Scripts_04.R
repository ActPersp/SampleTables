# Create a policy year table.

library(Rgogo)

tbl <- Table.PY(
   maxPolYear = 10L, 
   tValue = c(20, 10, 7.5, 5, 5, 5, 5, 5, 5, 5),
   tBase = 100, 
   source = "Rgog Sample Project", 
   createdBy = "Edward Kuo",
   id = "Lapse.Sample", 
   descrip = "Sample lapse rate table"
)

SaveAsRda(tbl, overwrite = TRUE)


