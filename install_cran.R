# Setup Rprofile 
# Based on info available 
if(!file.exists("~/.Rprofile")) # only create if not already there
  file.create("~/.Rprofile")    # (don't overwrite it)
file.edit("~/.Rprofile")

.libPaths("/usr/local/lib/R/library" ) 

# List of packages to be installed
pkgs1 <- c(
  "BiocManager",
  "coda",
  "data.table",
  "knitr",
  "ggplot2",
  "ggpointdensity",
  "pheatmap",
  "rmarkdown"
)

# All packages 
all_pkgs <- pkgs1

install.packages(pkgs1,
                 Ncpus = 4)

# List installed packages
installed_pkgs <- as.vector(installed.packages()[,1])

# Check if anything is not installed 
print(setdiff(all_pkgs,installed_pkgs))