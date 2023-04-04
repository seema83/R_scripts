#texts is character vector
#as.character converts the readLines() function to read teh file
#From package stringr (), the function str_extract() has been applied on the character vector
#The na.omit() function removes any NA values from the words variable after . 
#attr(,"na.action")is an attribute that appends the missing values as number at the end of the output.
#Its made NULL for aesthetic reasons.
#unique() keeps only the unique words
#The na.action attribute is stored as a function that can be called to retrieve or modify the missing value information associated with the data. The attribute is attached to the data frame or matrix returned by the function, and can be accessed using the attr() function.
#Put any word in place of the pattern

texts <- as.character(readLines("literature.txt", warn=FALSE))
library(stringr)
words <- na.omit(str_extract(texts, "\\b\\w+pattern\\b"))
attr(words, "na.action") <- NULL
unique_words <- unique(words)
unique_words

#Example, if I use 'ous' in plac eof pattern, I might get 
#  	[1] "dangerous" ,                     
#	[2] "famous"                            
#	[3] "enormous"                          
#	[4] "furious"                           
#	[5] "sous"                              
#	[6] "generous" 
