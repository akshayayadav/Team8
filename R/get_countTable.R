#' Get count table for the specified column.
#' @importFrom dplyr select_
#' @importFrom dplyr group_by_
#' @importFrom dplyr count
#' @importFrom dplyr %>%
#' @return Tibble with all value counts in target column.
#' @param data A table
#' @param col A string
#' @export
#' @examples
#' data(iris)
#' get_countTable(iris,"Species")
get_countTable<-function(data,col){
  countTable<-data %>% select_(col) %>% group_by_(col) %>% count()
  return(countTable)
}


#' Edgar Anderson's Iris Data
#' @description This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
#'
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{Sepal.Length}{Sepal Length, in centimeter}
#'   \item{Sepal.Width}{Sepal Width of the diamond, in centimeter}
#'   \item{Petal.Length}{Petal Length, in centimeter}
#'   \item{Petal.Width}{Petal Width, in centimeter}
#'   \item{Species}{The species of the flower}
#'   ...
#' }
"iris"
