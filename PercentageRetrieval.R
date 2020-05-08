#Going to create a sample data.frame from which to draw percentages
#Want there to be 12 provinces and 7 levels of energy friendliness,

HouseData <- data.frame("Provinces" = sample(1:12, 10000, replace=TRUE),
                        "Energy Friendliness" = sample(0:7, 10000, replace=TRUE))
