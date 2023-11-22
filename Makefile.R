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
pacman::p_load(pacman, sessioninfo, readr)

# RUN -------------------------------------------------------

# Execute files

# DOCUMENTATION ---------------------------------------------

# Session info

session_info() |>
  write_lines("output/session_info.txt")

# CLEAN UP --------------------------------------------------

p_unload(all) # unload all packages
rm(list = ls()) # clear global environment
