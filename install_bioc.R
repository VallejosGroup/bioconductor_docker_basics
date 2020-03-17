pkgs1 <- c(
  "BASiCS",
  "BiocStyle",
  "scran",
  "scater"
)

BiocManager::install(pkgs1, update = FALSE, Ncpus = 4)

# List installed packages
installed_pkgs <- as.vector(installed.packages()[,1])

# Check if anything is not installed 
print(setdiff(pkgs1,installed_pkgs))