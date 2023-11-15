
library(ggplot2)
library(cowplot)


yes_img <- "images/yes.png"
no_img <- "images/no.png"

yes_plot <- ggdraw() + draw_image(yes_img, scale = 1)
no_plot <- ggdraw() + draw_image(no_img, scale = 1)

bad_plot <- 
  ggplot(mpg, aes(x = displ, y = hwy, colour = "blue")) +
  geom_point()

good_plot <- 
  ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(colour = "blue") +
  geom_smooth(colour = "red") + 
  theme_half_open(12) +
  labs(x = "Engine power (litres displ.)",
       y = "Fuel Efficiency (miles/gallon)")


plot_grid(yes_plot, good_plot,
          no_plot, bad_plot) 

