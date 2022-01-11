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
render('source/workshop_setup/preworkshop_checklist.md', output_dir='html/workshop_setup/')
render('source/workshop_setup/setup_instructions.md', output_dir='html/workshop_setup/')
render('source/workshop_setup/setup_instructions_advanced.md', output_dir='html/workshop_setup/')
render_site('source/index.md')

render_site('source/Module00_Introduction.md')

render_site('source/Module01_Warming_Up.md')
render_site('source/Module02_QC.md')
render_site('source/Module02optional_Cutadapt_MoreQC.md')
render_site('source/Module03_Reference_Genomes.md')
render_site('source/Module04_Alignment.md')
render_site('source/Module05_MultiQC_and_Count_Matrix.md')
render_site('source/Module05optional_Additional_Details.md')

render_site('source/Module06_DEAnalysisSetup.Rmd')
render_site('source/Module07_DESeq2Init.Rmd')
render_site('source/Module08_DESeq2DE.Rmd')
render_site('source/Module09_SampleQCViz.Rmd')
render_site('source/Module10_DEComparisons.Rmd')
render_site('source/Module11_DEVisualizations.Rmd')
render_site('source/Module11X_BonusContent.Rmd')

render_site('source/Module99_Wrap_up.md')

#clean_site(preview=TRUE)

