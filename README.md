Git repository containing files to build a docker image with shiny-server and `learnr` lessons for a biology lab course, designed for and with Dr. Grace Kwan.

Lessons include:

* A lesson on how to run and interpret ANOVA in R: `anova`.
* A lesson on creating a specific visual for experimental data: `endpoint-plot`
* A lesson on creating a different visual for experimental data: `time-plot`

Keeping in mind that the `learnr` lesson files must be *locally rendered* to create the .HTML-file before they will work, the docker build runs a script to create these files.

