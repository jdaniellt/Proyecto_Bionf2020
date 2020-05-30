# Proyecto_Bionf2020

### This README contains a Bashscript to analyze raw sequences (ddRADseq) in ipyrad (Eaton and Overcast, 2010), and subsequently evaluate the processed data using the "Cumulative variance explained by major principal components" metric explained and implemented in McCartney-Melstad, Gidis and Bradley-Shaffer (2019), aiming to help to choose the optimal clustering threshold.

#### Content

The **bin** directory contains a **BashScript** to generate a raw sequence analysis in ipyrad and to evaluate the "Cumulative variance explained by major principal components" considering six different clustering thresholds (0.88, 0.90, 0.92, 0.94, 0.96 and 0.98).It also contains an **Rscript** to plot the accumulated variance of the first 5 Principal Components in each of the grouping thresholds analyzed. Finally, it contains an **html report** with the generated Rscript plot.

The **meta** directory is a metadata file that contains the catalog number for all samples analyzed and the collection site for each.


