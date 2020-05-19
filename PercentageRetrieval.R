#Going to create a sample data.frame from which to draw percentages
#Want there to be 12 provinces and 7 levels of energy friendliness,

HouseData <- data.frame("Provinces" = sample(1:12, 10000, replace=TRUE),
                        "Energy Friendliness" = sample(0:7, 10000, replace=TRUE))


#First we'll explore creating percentages using table, prop.table, and converting it.

HouseDataTable <- table(HouseData)
PropTablePercents.1 <- prop.table(HouseDataTable, margin = 1)
PropTablePercents.2 <- prop.table(HouseDataTable, margin = 2)
#margin default is null, assumes entire table sums to 1 
#margin = 1 sums across rows to equal 1, so finding out how all energy friendliness level is spread across a province.
#margin = 2 sums down columns to equal 1, which will find out how a energy friendliness level is spread across all provinces.

#you can convert the table into percentages with an apply() function 
#see:https://stackoverflow.com/questions/9185745/appending-sign-in-output-of-prop-table

PropTableView.1 <- apply(PropTablePercents.1*100, 2, function(u) sprintf( "%.1f%%", u))
PropTableView.2 <- apply(PropTablePercents.2*100, 2, function(u) sprintf( "%.1f%%", u))

#The above put simply multiplies every entry by 100

