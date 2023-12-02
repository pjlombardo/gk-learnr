# rocker/shiny-verse with learnr, kableExtra, car, and sortable
# shiny-verse comes with shiny server pointed to 3838, as well
# as tidyverse installed, with many other important packages.
# We simply extend it to include some other packages I use for 
# learnr lessons and other visualizations.


From rocker/shiny-verse:4.3

RUN R -e 'install.packages("learnr")'
RUN R -e 'install.packages("kableExtra")'
RUN R -e 'install.packages("car")'
Run R -e 'install.packages("sortable")'

# scripts to for making learnr htmls
Run mkdir /scripts
ADD render_learnr.sh /scripts
ADD render.R /scripts

# Copy leanr or shiny files
COPY ../anova /srv/shiny-server/anova
COPY ../endpoint-plot /srv/shiny-server/endpoint-plot
COPY ../time-plot /srv/shiny-server/time-plot
COPY ../css /srv/shiny-server/css
COPY ../index.html /srv/shiny-server/index.html
COPY ../images /srv/shiny-server/images

# Run indexing scripts
RUN sh /scripts/render_learnr.sh

# Add launch-page
# Coming soon...


EXPOSE 3838

CMD ["/init"]
