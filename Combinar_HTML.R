files <- list.files(
  "/Volumes/ssd_externo/UEL DOUTORADO 2022/Bookdown/apostila/docs/",
  pattern = "\\.html$",
  full.names = TRUE
)

# Lê cada arquivo e colapsa suas linhas
contents <- lapply(files, function(f) paste(readLines(f, warn = FALSE), collapse = "\n"))

# Combina todos os HTMLs em um único
final_html <- paste(contents, collapse = "\n")

writeLines(
  final_html,
  "/Volumes/ssd_externo/UEL DOUTORADO 2022/Bookdown/apostila/docs/apostila_combinada.html"
)
