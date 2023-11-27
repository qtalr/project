# ABOUT ----------------------------------------------------

# Description: <project name/ description>
# Usage: <how to use this script>
# Author: <your name>
# Maintainer: <your contact email>
# Created: <date created>

# SETUP -----------------------------------------------------

# Check/ Install `pacman` package manager
if (!require("pacman")) install.packages("pacman")

# Load global packages
pacman::p_load(pacman, quarto, sessioninfo, readr)

# RUN -------------------------------------------------------

# Execute files

# source("process/01_acquire.R")
# render("process/01_acquire.Rmd")
# render("process/01_acquire.qmd")

# DOCUMENTATION ---------------------------------------------

# Session info

session_info() |>
  write_lines("output/session_info.txt")

# CLEAN UP --------------------------------------------------

p_unload(all) # unload all packages
rm(list = ls()) # clear global environment
