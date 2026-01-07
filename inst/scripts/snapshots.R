library(webshot2)

okapps <- c(
    "https://shiny.sph.cuny.edu/imageTCGA",
    "https://shiny.sph.cuny.edu/BiocPkgDash",
    "https://shiny.sph.cuny.edu/BiocHubsShiny",
    "https://shiny.sph.cuny.edu/BugSigDBEnrich",
    "https://shiny.sph.cuny.edu/curatedMetagenomicDataCurationShiny",
    "https://shiny.sph.cuny.edu/PowerCalc",
    "https://shiny.sph.cuny.edu/primers"
)

picdir <- "~/Pictures/shinysnaps/"

if (!dir.exists(picdir))
    dir.create(picdir, recursive = TRUE)

picfiles <- file.path("~/Pictures/shinysnaps/", paste0(basename(okapps), ".png"))

delays <- c(5, 13, 13, 4, 3, 3, 7)

mapply(
    webshot2::webshot,
    url = okapps,
    file = picfiles,
    delay = delays,
    MoreArgs = list(
        vwidth = 1420, vheight = 1065
    ),
    SIMPLIFY = FALSE
)

