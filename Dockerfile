# Name: korniichuk/sagemathcell-paad
# Short Description: SageMathCell for the PAAD project
# Full Description: The korniichuk/sagemathcell Docker image for the PAAD project.
# Version: 0.1a1

FROM korniichuk/sagemathcell:6.9b6

MAINTAINER Ruslan Korniichuk <ruslan.korniichuk@gmail.com>

USER paad

# Change the info.html file
COPY info.html /home/paad/sc_build/sagecell/templates/info.html

# Add logos for footer
COPY logos/ig_logo_240x80px.png /home/paad/sc_build/sagecell/static/ig_logo_240x80px.png
COPY logos/us_plus_intibs_logo_129x80px.png /home/paad/sc_build/sagecell/static/us_plus_intibs_logo_129x80px.png
COPY logos/efrr_logo_326x80px.png /home/paad/sc_build/sagecell/static/efrr_logo_326x80px.png
RUN sudo chmod 644 /home/paad/sc_build/sagecell/static/ig_logo_240x80px.png
RUN sudo chmod 644 /home/paad/sc_build/sagecell/static/us_plus_intibs_logo_129x80px.png
RUN sudo chmod 644 /home/paad/sc_build/sagecell/static/efrr_logo_326x80px.png
