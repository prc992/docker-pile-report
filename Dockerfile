FROM --platform=linux/amd64 bioconductor/bioconductor_docker:devel
RUN apt-get update
RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("rtracklayer","Gviz","org.Hs.eg.db",ask = F))'
