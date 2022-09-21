# set up your script

install.packages(c("tidyverse", "gapminder", "pacman"))

pacman::p_load(tidyverse, gapminder)

data(gapminder)
head(gapminder)

# Clean your Data ---------------------------------------------------------

gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)

# Next, and using the tidyverse, subset our cleaned df to include only countries in the Americas.

gapminder_clean %>% 
  filter(continent == "Americas")

# also add a new categorical variable using mutate() that qualifies whether a country is rich or poor! (Hint use the variable gdp_per_cap and ìf_else())

gapminder_clean %>% 
+   mutate(wealth == if_else(gdp_per_cap > 50000, "rich", "poor", missing = NULL)

# error ^ didn't work for some reason


