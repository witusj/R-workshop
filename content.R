library(googleVis)
op <- options(gvis.plot.tag='chart')

adres = "Oranjesingel 42, 6511 NW Nijmegen"
extra = "Vergaderzaal"
directions = "<a href='https://goo.gl/maps/jLUsm7gVtxw'>Get directions</a>"

locaties <- data.frame(adres = adres,
                       tooltip= paste0(extra, "<br>", directions)
                       )

M1 <- gvisMap(locaties, "adres" , "tooltip",
              options=list(showTip=TRUE,
                           mapType='normal',
                           zoomLevel=16,
                           width=100,
                           height=300
              )
)
plot(M1)
