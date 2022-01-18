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

# The following stanza is problematic in that
# a) it generates html in the same folder as the md files
# b) the generated index.html refers to these same files from inside html folder
# Together it means there are two copies of these files one at
# /workshop_setup and another inside /html. We really need them to be inside
# /html to keep things simple, but since learners have the link to
# /workshow_setup/preworkshop_checklist I can't gracefully fix this now. Should
# be simple to fix after the workshop.
# cgates 11/9/2021
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
render_site('source/r-02-r-basics.Rmd') # 01/18/2022 does not work
render_site('source/r-03-basics-factors-dataframes.Rmd') # 01/18/2022 does not work
render_site('source/r-04-bioconductor-vcfr.Rmd')
render_site('source/r-05-dplyr.Rmd')
render_site('source/r-06-data-visualization.Rmd')
render_site('source/r-07-r-help.Rmd')

render_site('source/Module99_Wrap_up.md')

#clean_site(preview=TRUE)
