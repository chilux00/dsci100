library(tidyverse)

# load data---------------------------------------------------------------------
setwd("C:\\Users\\chiin\\Documents\\R")
can_lang <- read_csv("can_lang.csv")

# wrangle data - 10 most common aboriginal lang

aboriginal_lang <- filter(can_lang, category == "Aboriginal languages")
# select() not needed, since ggplot specifies variables later
arranged_lang <- arrange(selected_lang, by = desc(mother_tongue))
ten_lang <- slice(arranged_lang, 1:10)

# plot data---------------------------------------------------------------------
ggplot(ten_lang, aes(
  x = mother_tongue,
  y = reorder(language, mother_tongue)
)) + # desc

  geom_bar(stat = "identity") + # observation as bars, val = yval
  xlab("Mother Tongue (Number of Canadian Residents)") +
  ylab("Language")
