# Look up tables using list as lookup key.

library(Rgogo)
library(SampleTables)


# Mort.Sample.AA is an attained age table.
# Look up the mortality rate at attained age 40:
LookUp(Mort.Sample.AA, list(AttAge = 40))

# Look up the mortality rates for the range of attained ages from 40 to 60:
LookUp(Mort.Sample.AA, list(AttAge = 40:60))



# CV.E20 is an issue age by policy year table.
# Look up the cash value per thousand face amount of issue age 30:
LookUp(CV.E20, list(IssAge = 30, PolYear = 1:20))

# Look up the cash value per thousand face amount of issue ages between 30 and 40 during the first ten policy years:
LookUp(CV.E20, list(IssAge = 30:40, PolYear = 1:10))



# Mort.CSO2017LL.FN is a select and ultimate table
# Look up CSO mortality rate vector for female nonsmoker aged 35 at issue:
LookUp(Mort.CSO2017LL.FN, list(IssAge = 35))

# Look up mortality rates for issue age 35 during the first 20 policy years:
LookUp(Mort.CSO2017LL.FN, list(IssAge = 35, PolYear = 1:10))

# Look up mortality rates for issue ages between 35 and 40 during the first 10 policy years:
LookUp(Mort.CSO2017LL.FN, list(IssAge = 35:40, PolYear = 1:10))

