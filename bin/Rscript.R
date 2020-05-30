### Author: Josè Daniel Lara-Tufiño
### Date: 29/05/20
### Rscript for plot the cumulative variance in the first 5 PCs
#### This scrip must be saved in bin directory

#### Load the output (fichero.txt) of the analysis of "Cumulative variance explained by first N PCs". The fichero.txt file is generated with the bin/BashScript
reads<-read.delim("../data/fichero.txt")
head(reads) # See table structure

#### Rename the values in the x axis
pg <- reads # Copy data into new data frame
levels(pg$Clustering.threshold)[levels(pg$Clustering.threshold)=="Variance explained by first 5 PCs for /home/daniel/clustOpt/0.88.vcf:"] <- "0.88"
levels(pg$Clustering.threshold)[levels(pg$Clustering.threshold)=="Variance explained by first 5 PCs for /home/daniel/clustOpt/0.90.vcf:"] <- "0.90"
levels(pg$Clustering.threshold)[levels(pg$Clustering.threshold)=="Variance explained by first 5 PCs for /home/daniel/clustOpt/0.92.vcf:"] <- "0.92"
levels(pg$Clustering.threshold)[levels(pg$Clustering.threshold)=="Variance explained by first 5 PCs for /home/daniel/clustOpt/0.94.vcf:"] <- "0.94"
levels(pg$Clustering.threshold)[levels(pg$Clustering.threshold)=="Variance explained by first 5 PCs for /home/daniel/clustOpt/0.96.vcf:"] <- "0.96"
levels(pg$Clustering.threshold)[levels(pg$Clustering.threshold)=="Variance explained by first 5 PCs for /home/daniel/clustOpt/0.98.vcf:"] <- "0.98"
names(pg)[names(pg)=="Clustering.threshold"]  <- "Clustering.threshold"

head(pg) # View changes in the new table.

#### Make plot:

names(pg)
library(ggplot2)
xy_plot<-ggplot(pg, aes(x=Clustering.threshold, y=Cumulative.variance)) + geom_point(shape=19) + theme_bw()

xy_plot

#### Modify plot style 
scatter.plot<- xy_plot + theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 10)) # Text axis: size and position.

scatter.plot + theme(panel.grid.minor=element_blank(),
           panel.grid.major=element_blank()) # Modiffy panel grid

#### Add title
scatter.plot + ggtitle("Cumulative variance explained by major principal components for each clustering thresholds") + theme(plot.title = element_text(lineheight=.8, face="bold"))

