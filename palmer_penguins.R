################ Palmer Penguin - TidyTuesday roject - Week 31 #################

## Packages and Data -----------------------------------------------------------
library(palmerpenguins)
library(ggplot2)
library(ggridges)

data(package = 'palmerpenguins')
head(penguins)

## Density Plot ----------------------------------------------------------------

p_theme <- theme(panel.background = element_rect(fill = "white"),
           panel.grid = element_line(colour = "grey"),
           plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))

p1 <- ggplot(na.omit(penguins),
             aes(x = body_mass_g,
                 y = species,
                 fill = sex)) +
  geom_density_ridges(scale=0.9,
                      alpha=0.8,
                      color="grey") +
  labs(subtitle = "The Distribution of Body Mass by Species and Sex",
       x = "Body Mass (g)",
       y = "Species") +
  p_theme


p2 <- ggplot(na.omit(penguins),
             aes(x = flipper_length_mm,
                 y = species,
                 fill = sex)) +
  geom_density_ridges(scale=0.9,
                      alpha=0.8,
                      color="grey") +
  labs(subtitle = "The Distribution of Flipper Length by Species and Sex",
       x = "Flipper Length (mm)",
       y = "Species") +
  p_theme

p3 <- ggplot(na.omit(penguins),
             aes(x = bill_length_mm,
                 y = species,
                 fill = sex)) +
  geom_density_ridges(scale=0.9,
                      alpha=0.8,
                      color="grey") +
  labs(subtitle = "The Distribution of Bill Length by Species and Sex",
       x = "Bill Length (mm)",
       y = "Species") +
  p_theme

p4 <- ggplot(na.omit(penguins),
             aes(x = bill_depth_mm,
                 y = species,
                 fill = sex)) +
  geom_density_ridges(scale=0.9,
                      alpha=0.8,
                      color="grey") +
  labs(subtitle = "The Distribution of Bill Depth by Species and Sex",
       caption = "Palmer Penguins - TidyTuesday Project - Week 31",
       x = "Bill Depth (mm)",
       y = "Species") +
  p_theme


ggarrange(p1, p2, p3, p4,
          common.legend = TRUE,
          legend = "right",
          ncol = 1)

################################################################################
