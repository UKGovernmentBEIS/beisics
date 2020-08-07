# Package `beisics`

This package is intended to allow consistent 'BEIS-like' styling in R dashboards, visualisations and markdown documents.
 
## Background 

Having a consistent styling framework available to all analysts in BEIS will make work produced within BEIS recognisable and clear, whilst ideally adhering to UX and usability standards. It could also help to implement work already undertaken by the CAGG team to create consistent styling in plots in excel for internal use. Therefore there is already grounds for engagement with this package, which increases the chance that others will contribute to it in future, and hopefully also translate it to other programming languages. R Studio report that:
 
> "Interestingly, one powerful way to increase the adoption of data science outputs [...] is to stick to consistent branding. Having a common look and feel makes it easier for management to recognize the work of the data science team, especially as the team grows. Consistent branding also saves the R user time that would normally be spent picking fonts and color schemes."

## Existing functions

The current functions in the package are:

- `beis_colours()` - returns BEIS-like colour palette as a vector of colours, with options 
- `beis_logo()` - copies BEIS logo to directory and returns BEIS logo, with optional white typeface
- `beis_css()` - copies BEIS-like css file to directory and returns BEIS css filepath
- `theme_beis()` - styles ggplots with BEIS-like styling
- `get_beis_css()` - copies BEIS-like css file to directory
- `get_beis_logo()` - copies BEIS logo to directory, with optional white typeface
- `get_beisics()` - copies both the BEIS-like css file and the BEIS logo to directory
 
## Ideal future functions
 
- a function for BEIS-like plotly theme
- a function for BEIS-like dygraph theme
- a function for BEIS-like leaflet theme
- an example template/ markdown layout 
- BEIS-like Shiny elements, e.g. css spinner
- a function for styling excel workbooks/csvs saved from R

## Resources
https://engineering-shiny.org/css.html
https://slides.earo.me/rladies-pkg/#5
Mango package building course
R package `Govdown`, created by GDS and installed in CBAS