# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application
##
## /!\ Note: if you want to change the name of your app during development,
## either re-run this function, call golem::set_golem_name(), or don't forget
## to change the name in the app_sys() function in app_config.R /!\
##
golem::fill_desc(
  pkg_name = "meu.golem", # The Name of the package containing the App
  pkg_title = "Golem De Exemplo Do Curso De Deploy", # The Title of the package containing the App
  pkg_description = "Golem de exemplo. Vou colocar no GCP depois.", # The Description of the package containing the App
  author_first_name = "Fernando", # Your First Name
  author_last_name = "Corrêa", # Your Last Name
  author_email = "fcorrea@curso-r.com", # Your Email
  repo_url = NULL # The URL of the GitHub Repo (optional)
)

## Set {golem} options ----
golem::set_golem_options()

## Create Common Files ----
## See ?usethis for more information
usethis::use_mit_license("Golem User") # You can set another license here
usethis::use_readme_rmd(open = FALSE)

## Use git ----
usethis::use_git()

## Add helper functions ----
# golem::use_utils_ui(with_test = TRUE)
# golem::use_utils_server(with_test = TRUE)

# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile("dev/02_dev.R")
