rmarkdown::render("../../index.Rmd")

## move index.html to /var/www/html/index.html
## file.copy("../../index.html", "/var/www/html/index.html", overwrite = TRUE)
