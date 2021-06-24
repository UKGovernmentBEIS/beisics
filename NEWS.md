# beisics 0.0.2.1
* Added css for creating ios html slides using the beisics colour scheme and template. This is now called by the get_beisics() function or get_beis_css().




# beisics 0.0.2.0
* Excel styling now available when saving a workbook using the openxlsx package. Use add_beis_header_style() to style the column headers and add_beis_body_style() to style the body.

* The beis_colours() function has now been updated to reorder the colours slightly, the Cerise (#cc0099) and Green (#66cc33) have swapped position to avoid confusion between the two greens (lime and green) when side by side. 

* Some CSS styling has been added for floating TOCS when using R Markdown, so the indent is the same when a line overlaps and that the hover background colour is the same as the BEIS dark blue: #003366

# beisics 0.0.1.1

* Added a `NEWS.md` file to track changes to the package.

* beis_colours() update to the latest colour scheme and also given an alternative palette. Alternative palette is selectable via the default = FALSE argument.

* theme_beis now includes a call to beis_colours for scale_fill_manual and scale_fill_colour and included the option to use the alternative palettte or the distinct colour palette.

