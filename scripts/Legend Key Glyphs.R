## custom-shaped legend key glyphs for ggplot2

library(grid)

# hexagon legend key glyph
key_hex <- function (data, params, size) {
  # hexagon points
  hex <- list(x = c(0.95, 0.725, 0.275, 0.05, 0.275, 0.725), 
              y = c(0.5, 0.1102885683, 0.1102885683, 0.5, 0.8897114317, 0.8897114317))
  # hexagon grob
  polygonGrob(hex$x, hex$y, 
              gp = gpar(col = data$colour,
                        fill = alpha(data$fill, data$alpha)))
}

# wide rectangle legend key glyph
key_rect_wide <- function (data, params, size) {
  # rectangle points
  rect_wide <- list(x = c(0, 1, 1, 0), 
                    y = c(0.35, 0.35, 0.65, 0.65))
  # rectangle grob
  polygonGrob(rect_wide$x, rect_wide$y, 
              gp = gpar(col = data$colour,
                        fill = alpha(data$fill, data$alpha)))
}

# zig zag legend key glyph
key_zig_zag <- function (data, params, size) {
  # zig zag points
  zigzag <- list(x = c(0, 0.25, 0.5, 0.75, 1, 1, 0.75, 0.5, 0.25, 0), 
                 y = c(0.2, 0.4, 0.2, 0.4, 0.2, 0.4, 0.6, 0.4, 0.6, 0.4))
  # zig zag grob
  polygonGrob(zigzag$x, zigzag$y, 
              gp = gpar(col = data$colour,
                        fill = alpha(data$fill, data$alpha)))
}
