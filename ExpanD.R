# Prepare environment and dataset ##################################
# List of packages to check
packages <- c("sas7bdat", "ExPanDaR")

# Function to check, install (if necessary), and load packages
install_and_load <- function(package){
  if (!require(package, character.only = TRUE)) {
    install.packages(package, dependencies = TRUE)
    library(package, character.only = TRUE)
  }
}

# Apply the function to each package
sapply(packages, install_and_load)

# work dictionary
setwd("/Users/gongjunming/Library/CloudStorage/Box-Box/FSHCog/data")
# laod data
df <- read.sas7bdat("fshcogdat.sas7bdat")

################################################################################
ExPanD(df)

