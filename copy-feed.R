dir.create("_site/tags/r", recursive = TRUE, showWarnings = FALSE)

file.copy(
  "_site/index-r-bloggers.xml",
  "_site/tags/r/index.xml",
  overwrite = TRUE
)