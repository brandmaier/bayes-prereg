# Generated by repro: do not edit by hand
# Please edit Dockerfiles in .repro/
FROM rocker/verse:4.1.3
ARG BUILD_DATE=2022-09-10
WORKDIR /home/rstudio
RUN apt-get update -y && apt-get install -y rsync
RUN tlmgr install collection-latexrecommended
RUN tlmgr install apa7 pgf preview scalerel threeparttable endfloat was multirow threeparttablex environ trimspaces xpatch csquotes
RUN apt-get update -y && apt-get install -y git rsync curl inkscape
RUN install2.r --error --skipinstalled \ 
  gert \ 
  ggplot2 \ 
  ggthemes \ 
  here \ 
  pacman \ 
  patchwork \ 
  qrcode \ 
  rticles \ 
  showtext \ 
  svglite \ 
  tidyverse \ 
  tikzDevice \ 
  xaringanthemer
RUN installGithub.r \ 
  aaronpeikert/repro@5075336 \ 
  crsh/papaja@1c488f7
