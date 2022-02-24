# if (!requireNamespace("BiocManager", quietly = TRUE))
#    install.packages("BiocManager")
# BiocManager::install(c("biomaRt","DESeq2"), update=FALSE, ask=FALSE)
#
# missing <- setdiff(c("tidyr", "ggplot2", "pheatmap", "ggrepel", "formattable", "RColorBrewer", "matrixStats", "dplyr", "biomaRt", "DESeq2"), rownames(installed.packages()))
# if (!length(missing)) { cat("Ready for Computational Foundations workshop\n")} else {cat("PROBLEM: could not install:", missing, "\n")
# install.packages("pheatmap")
# install.packages("ggrepel")
# install.packages("formattable")
# install.packages("tidyr")
# install.packages("RColorBrewer")
# install.packages("matrixStats")
# install.packages("dplyr")
# }




library(rmarkdown)

render('source/workshop_setup/preregistration_info.md', output_dir='html/workshop_setup/')
render('source/workshop_setup/preworkshop_checklist.md', output_dir='html/workshop_setup/')
render('source/workshop_setup/setup_instructions.md', output_dir='html/workshop_setup/')
render('source/workshop_setup/setup_instructions_advanced.md', output_dir='html/workshop_setup/')
render_site('source/index.md')

render_site('source/Module00_Introduction.md')

render_site('source/bash-01-introduction.md')
render_site('source/bash-02-the-filesystem.md')
render_site('source/bash-03-working-with-files.md')
render_site('source/bash-04-redirection.md')
render_site('source/bash-05-writing-scripts.md')
render_site('source/bash-06-organization.md')

render_site('source/r-01-introduction.Rmd')
render_site('source/r-02-r-basics.Rmd')
render_site('source/r-03-basics-factors-dataframes.Rmd')
render_site('source/r-04-bioconductor.Rmd')
render_site('source/r-05-dplyr.Rmd')
render_site('source/r-06-data-visualization.Rmd')
render_site('source/r-07-r-help.Rmd')

render_site('source/Module99_Wrap_up.md')

#clean_site(preview=TRUE)
