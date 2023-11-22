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
pacman::p_load(tidyverse, quarto, fs, sessioninfo)

# RUN -------------------------------------------------------

# Execute code files

quarto_render("code/1_acquire_data.qmd")

quarto_render("code/2_curate_dataset.qmd")

quarto_render("code/3_transform_dataset.qmd")

quarto_render("code/4_describe_dataset.qmd")

quarto_render("code/5_analyze_dataset.qmd")

# Execute report files

quarto_render("output/reports/article.qmd")

# DOCUMENTATION ---------------------------------------------

# Session info

sessioninfo::session_info() |>
  write_lines("output/session_info.txt")

# CLEAN UP --------------------------------------------------

rm(list = ls()) # clear global environment
pacman::p_unload(all) # unload all packages
