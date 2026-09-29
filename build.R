# Compila todos os formatos (gitbook, pdf_book, html_document2) e copia o HTML
# de download para docs/, que é a pasta publicada no GitHub Pages.
# Uso: abra este arquivo no RStudio e clique em "Source".

bookdown::render_book("index.Rmd", "all")
stopifnot(file.copy("apostila.html", "docs/apostila.html", overwrite = TRUE))
message("OK: docs/apostila.html atualizado (", round(file.size("docs/apostila.html") / 1e6, 1), " MB)")
