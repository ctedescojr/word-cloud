library("readr")
library("dplyr")
library("tidytext")
library("wordcloud")
library("stringr")
library("SnowballC")

word_card <- read_tsv("LinkedIn.txt", show_col_types = FALSE)

#Word cloud - teste word e stem
word_count <- word_card %>% select(WORDS) %>% count(WORDS, sort = TRUE)

pal <- brewer.pal(6,"Greys")
word_count %>% with(wordcloud(WORDS, n, scale = c(2,.2),random.order = FALSE, max.words = 100, colors=pal))

?brewer.pal
