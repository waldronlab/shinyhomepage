library(webshot2)

okapps <- c(
    "https://shiny.sph.cuny.edu/BiocHubsShiny",
    "https://shiny.sph.cuny.edu/BugSigDBEnrich",
    "https://shiny.sph.cuny.edu/curatedMetagenomicDataCurationShiny",
    "https://shiny.sph.cuny.edu/PowerCalc",
    "https://shiny.sph.cuny.edu/primers"
)

picfiles <- file.path("~/pictures", paste0(basename(okapps), ".png"))

webshot2::webshot(
    url = okapps, file = picfiles, delay = 25, vwidth = 1420, vheight = 1065
)
