Legend Key Glyphs
================

Drawing custom shapes for use as legend key glyphs with ggplot2 in R.

#### Examples:

``` r
# hexagon legend key glyph
iris %>%
  ggplot(aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_col(aes(fill = Species), key_glyph = key_hex)
```

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
# zig zag legend key glyph
iris %>%
  ggplot(aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_col(aes(fill = Species), key_glyph = key_zig_zag)
```

![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

``` r
# wide rectangle legend key glyph
iris %>%
  ggplot(aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_col(aes(fill = Species), key_glyph = key_rect_wide)
```

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->
