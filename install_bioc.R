pkgs1 <- c(
  "AnnotationDbi",
  "BASiCS",
  "BiocStyle",
  "biomaRt",
  "EnsDb.Mmusculus.v79",
  "GenomicFeatures",
  "goseq",
  "org.Mm.eg.db",
  "scran",
  "scater",
  "SingleCellExperiment"
)

BiocManager::install(pkgs1, update = FALSE, Ncpus = 4)

# List installed packages
installed_pkgs <- as.vector(installed.packages()[,1])

# Check if anything is not installed 
print(setdiff(pkgs1,installed_pkgs))