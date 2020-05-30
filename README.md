# Proyecto_Bionf2020

### This README contains a Bashscript to analyze raw sequences (ddRADseq) in ipyrad (Eaton and Overcast, 2010), and subsequently evaluate the processed data using the "Cumulative variance explained by major principal components" metric explained and implemented in McCartney-Melstad, Gidis and Bradley-Shaffer (2019), aiming to help to choose the optimal clustering threshold.

#### Content

The **bin** directory contains a **BashScript** to generate a raw sequence analysis in ipyrad and to evaluate the "Cumulative variance explained by major principal components" considering six different clustering thresholds (0.88, 0.90, 0.92, 0.94, 0.96 and 0.98).It also contains an **Rscript** to plot the accumulated variance of the first 5 Principal Components in each of the grouping thresholds analyzed. Finally, it contains an **html report** with the generated Rscript plot.

The **data** directory contains a **.txt** file with the results of the analysis generated with the BashScript.

The **meta** directory is a metadata file that contains the catalog number for all samples analyzed and the collection site for each. The samples evaluated correspond to the lizard species *Gerrhonotus infernalis*, which is widely distributed (from central Texas to Hidalgo and northern Veracruz, Mexico). Studies with mitochondrial and nuclear genes have found a marked population structure within the species, and different morphologically different groups have also been found, which is why the existence of cryptic species hidden under the current taxonomy has been raised.

**The summary and discussion of this project can be found at the following link: https://github.com/jdaniellt/Proyecto_Bionf2020/blob/master/RESUMEN%20Y%20DISCUSION.md**

