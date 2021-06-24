# Package `beisics`

This package is intended to allow consistent 'BEIS-like' styling in R dashboards, visualisations and markdown documents. This package was designed to create each function as a minimum viable product, which can be added to and updated continously. 

## Background 

Having a consistent styling framework available to all analysts in BEIS will make work produced within BEIS recognisable and clear, whilst ideally adhering to UX and usability standards. It could also help to implement work already undertaken by the CAGG team to create consistent styling in plots in excel for internal use. Therefore there is already grounds for engagement with this package, which increases the chance that others will contribute to it in future, and hopefully also translate it to other programming languages. R Studio report that:
 
> "Interestingly, one powerful way to increase the adoption of data science outputs [...] is to stick to consistent branding. Having a common look and feel makes it easier for management to recognize the work of the data science team, especially as the team grows. Consistent branding also saves the R user time that would normally be spent picking fonts and color schemes."

## Downloading and using

Similar to other packages which have been written for R within CBAS, this package can be downloaded, installed and tested from the internal instance of the CBAS gitlab, under `all_data_science/beisics`

To download and install the package from the gitlab repository:

- Click on the beisics…tar.gz in the respository
- Download into a folder accessible from R
- In RStudio click on Tools -> Install Packages…
- Install from Package Archive file
- browse to the location of the beisics…tar.gz
- Then click Install

A potential alternative in the future will be to install the package using the `devtools`, `git2r` and `getPass` packages with the following code:
```
devtools::install_git(
    "http://cbas-pdcm-01/all_data_science/beisics",
    credentials = git2r::cred_user_pass("your_username", getPass::getPass())
)
```
Entering your CBAS password when prompted.
 
## Adding to the package

The ideal state of this package is for it to be owned and evolved by BEIS analysts within the department. If there is a function which could be added or improved in the package, please do contribute to the package by first cloning and branching from the master GitLab repo, building or refactoring code, re-building the package to get the gz file, add this back into the repo, and setting up a merge request through GitLab. Ideally someone else will be available to check through the merge request before adding it to the master version. 

## Existing functions

The current functions in the package are:

- `add_beis_body_style()` - adds a styled body content when saving an excel workbook with openxlsx package. This follows the CAGG guidance from 2019.
- `add_beis_header_style()` - adds a styled header when saving an excel workbook with openxlsx package. This follows the CAGG guidance from 2019.
- `beis_colours()` - returns BEIS-like colour palette as a vector of colours, with options 
- `beis_logo()` - copies BEIS logo to directory and returns BEIS logo, with optional white typeface
- `beis_css()` - copies BEIS-like css file for Rmarkdown and for Slides to directory and returns BEIS css filepath
- `theme_beis()` - styles ggplots with BEIS-like styling
- `get_beis_css()` - copies BEIS-like css file to directory
- `get_beis_logo()` - copies BEIS logo to directory, with optional white typeface
- `get_beisics()` - copies both the BEIS-like css file and the BEIS logo to directory
- `theme_beis_dygraph()` - uses `beis_css()` and `beis_colours()` to style dygraph objects
 
## Ongoing expansions

- Additional functionality for the ggplot function `theme_beis()` to include further colour styling
- Additional functionality for `get_beisics()` to set defaults for ggplots, plotly and dygraph

## Ideal future functions
 
- a function for BEIS-like plotly theme
- a function for BEIS-like leaflet theme
- an example template/ markdown layout 
- BEIS-like Shiny elements 

## Resources
- https://engineering-shiny.org/css.html
- https://slides.earo.me/rladies-pkg/#5
- Analysis Style guide and Branding; 2019 CAGG presentation
- Mango package building course
- R package `Govdown`, created by GDS and installed in CBAS
