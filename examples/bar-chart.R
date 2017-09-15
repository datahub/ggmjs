library(tidyverse)
library(ggmjs)

plot_original <- economics %>%
  ggplot(aes(x = date, y = uempmed)) %+%
  geom_line(color = 'steelblue') %+%
  xlab('') %+%
  ylab('') %+%
  ggtitle('The long term unemployed', 'Median duration of unemployment, in weeks, 1967 to 2015')

plot_mjs <- plot_original %+%
  theme_mjs()
