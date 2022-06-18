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

# triangle legend key glyph
key_triangle <- function (data, params, size) {
  # draw triangle
  triangle <- list(x = c(0.5000000, 0.0669873, 0.9330127), 
                 y = c(1.00, 0.25, 0.25))
  
  # hexagon grob
  polygonGrob(triangle$x, triangle$y, 
              gp = gpar(col = data$colour,
                        fill = alpha(data$fill, data$alpha)))
}

# pentagon legend key glyph
key_pentagon <- function (data, params, size) {
  # draw pentagon
  pentagon <- list(x = c(0.50000000, 0.02447174, 0.20610737, 0.79389263, 0.97552826), 
                   y = c(1.0000000, 0.6545085, 0.0954915, 0.0954915, 0.6545085))
  # hexagon grob
  polygonGrob(pentagon$x, pentagon$y, 
              gp = gpar(col = data$colour,
                        fill = alpha(data$fill, data$alpha)))
}
