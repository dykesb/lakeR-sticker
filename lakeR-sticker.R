library(tidyverse)
library(maps)
library(magick)
library(here)
library(hexSticker)

r_logo <- image_read(paste0(here("Rlogo.png")))
r_logo <- image_scale(r_logo, "300")
white_image <- image_blank(320,332)
floor_image <- image_blank(300,100)
shifted_r_logo <- image_append(c(r_logo, floor_image), stack = TRUE)

(lakeR <- image_annotate(image_append(c(white_image,shifted_r_logo)), 
               "lake", size = 233, font = "sans",
               color = "black", location = "+0+20"))

s
sticker(lakeR, package = "",
        p_size = 24,
        p_x = 1, p_y = 0,
        s_x = 1, s_y = .95,
        s_width = 1.5, s_height = 1.5,
        url = "gvsu.edu/stat                  CC-BY-SA 4.0 bit.ly/2OLJEvG", 
        u_size = 6,
        h_fill = "white", h_color = "#0065a4",
        p_color = "black", dpi = 600,
        filename = paste0(here("lakeR-sicker.png")))
