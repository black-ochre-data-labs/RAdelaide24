# Veyr basic installation script
pkg <- c(
  "AnnotationHub",
  "Biostrings","BSgenome.Hsapiens.UCSC.hg38",
  "cqn",
  "DESeq2",
  "edgeR", "ensembldb", "extraChIPs",
  "GenomicFeatures", "Gviz", "glue", "ggrepel",
  "IRanges",
  "lme4", "lmerTest",
  "msigdbr",
  "pander", "plyranges",
  "readxl", "rtracklayer",
  "S4Vectors",
  "tidyverse"
)

install.packages("BiocManager")
stopifnot("BiocManager" %in% rownames(installed.packages()))
cat("BiocManager successfully installed\n")
BiocManager::install(pkg, ask = FALSE, force = TRUE)

missing <- setdiff(pkg, rownames(installed.packages()))
if (length(missing)) {
  message("The following packages failed to install. Please email for assistance")
  cat(missing, sep = "\n")
  stop("Exiting installation")
}

message("All packages appear to be installed")
