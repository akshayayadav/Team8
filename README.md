# README
Akshay Yadav  
March 30, 2017  


# Team8

Package for getting count tables for specified columns from the given data table


```r
library(Team8)
irisSpecies_CountTable<-get_countTable(iris,"Species")
irisSpecies_CountTable
```

```
## # A tibble: 3 × 2
##      Species     n
##       <fctr> <int>
## 1     setosa    50
## 2 versicolor    50
## 3  virginica    50
```


