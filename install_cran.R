# List of packages to be installed
pkgs1 <- c(
  "bit64",
  "coda",
  "data.table",
  "knitr",
  "ggplot2",
  "ggpointdensity",
  "pheatmap",
  "rmarkdown",
  "RSQLite",
  "survival"
)

# All packages 
all_pkgs <- pkgs1

install.packages(pkgs1,
                 Ncpus = 4)

# List installed packages
installed_pkgs <- as.vector(installed.packages()[,1])

# Check if anything is not installed 
print(setdiff(all_pkgs,installed_pkgs))