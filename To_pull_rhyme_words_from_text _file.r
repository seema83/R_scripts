texts <- as.character(readLines("lit1.txt", warn=FALSE))
library(stringr)
words <- na.omit(str_extract(texts, "\\b\\w+ix\\b"))
attr(words, "na.action") <- NULL
unique_words <- unique(words)
unique_words