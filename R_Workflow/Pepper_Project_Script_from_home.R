#Install packages
library(tidyverse)
library(edgeR)
library(matrixStats)
library(cowplot)

if (!requireNamespace("BiocManager"))
  install.packages("BiocManager")
BiocManager::install(c("limma", "edgeR", "Glimma", "org.Mm.eg.db", "gplots", "RColorBrewer", "NMF", "BiasedUrn"))



#read file into R, did this one way by using read_csv to create a Raw_Pepper_data
#file and did it the other way by clicking on the file and importing the data
genes_fpkm <- read_csv ("genes_fpkm.csv")
head(genes_fpkm)

#Head and print can be used to view the files you have just created
print(genes_fpkm)

#Formatting data so it does not contain non numeric values except for pepper samples 
Raw_Pepper_Data_Matrix <- (genes_fpkm[-c(1:3)])
head(Raw_Pepper_Data_Matrix)                                 

#list the column names
colnames(Raw_Pepper_Data_Matrix)

#clean up the column names
colnames(Raw_Pepper_Data_Matrix) <- substr(colnames(Raw_Pepper_Data_Matrix),start=1,stop=19)
view(Raw_Pepper_Data_Matrix)
colnames(Raw_Pepper_Data_Matrix)

#Sums and means for numeric data
colSums(Raw_Pepper_Data_Matrix)

#Make a DGElist for EdgeR. creates an object from a table of counts, group indicator for each column, library size, and table of feature
Raw_Pepper_Data_List <- DGEList(Raw_Pepper_Data_Matrix)
head(Raw_Pepper_Data_List)

names(Raw_Pepper_Data_List)

Raw_Pepper_Data_List$counts
Raw_Pepper_Data_List$samples

#read in spicy pepper information containing locus info, gene id, protein
library(readr)
Spicy_Pepper_cufflinks_information <- read_csv("Spicy_Pepper_cufflinks_information.csv")

#removing a row to make the data match
Cufflinks_information_removed_row <- Spicy_Pepper_cufflinks_information[-c(49),]

view(Cufflinks_information_removed_row)

group <- paste(Cufflinks_information_removed_row$Sample_ID,
               Cufflinks_information_removed_row$Pepper_Species, 
               Cufflinks_information_removed_row$Pepper_Name, 
               Cufflinks_information_removed_row$Tissue,
               Cufflinks_information_removed_row$Scoville, sep = ".")

view(group)

Raw_Pepper_Data_List$samples$group <- group
head(Raw_Pepper_Data_List)
Raw_Pepper_Data_List$samples

#the goal of the above steps was to add annotation to the data

library(readr)
Spicy_Pepper_cufflinks_information <- read_csv("Gene_Information.csv")

# Raw_Pepper_Data_List$counts
# Raw_Pepper_Data_List$samples
# 
# gene_group <- paste(Gene_Information$Gene_ID,
#                     Gene_Information$Protein_Function,
#                     Gene_Information$Locus,sep=".")
# view(gene_group)
# 
# Raw_Pepper_Data_List$counts
# 
# Raw_Pepper_Data_List$counts$gene_group
# head(Raw_Pepper_Data_List)
#view(Raw_Pepper_Data_List)

#wanted to add the other gene annotation but unfortunately ran into issues
#where it kept messing up the matrix

head(Raw_Pepper_Data_List)

#List how many values are above zero for FPKM
thresh <- Raw_Pepper_Data_Matrix > 0
head(thresh)

table(rowSums(thresh))

keep <- rowSums(thresh) >= 0.1
summary(keep)

Raw_Pepper_Data_Matrix_Filtered <- Raw_Pepper_Data_Matrix[keep, keep.lib.sizes=FALSE]
head(Raw_Pepper_Data_Matrix_Filtered)

#Barplot of library sizes compared between pepper samples

Raw_Pepper_Data_List$samples$lib.size

barplot(Raw_Pepper_Data_List$samples$lib.size,names=colnames(Raw_Pepper_Data_List),las=2, ann=FALSE, cex.names=0.75)
mtext(side = 1, text = "Samples", line = 4)
mtext(side = 2, text = "Library size", line = 3)
title("Barplot of Library Sizes")

#it is noticeable that we have some rather large libraries for some samples compared to others

logcountsfiltered <- log(Raw_Pepper_Data_Matrix_Filtered, 2)
view(logcountsfiltered)

boxplot(logcountsfiltered, xlab="", ylab="Log2 FPKM", las=2)

#log2 transform the data and view it
logcounts <- log(Raw_Pepper_Data_Matrix, 2)
view(logcounts)

#Box plot of our log2 transformed data
boxplot(logcounts, xlab="", ylab="Log2 FPKM",las=2)

#Multidimensional analysis of our pepper samples data
plotMDS(Raw_Pepper_Data_Matrix)

#Multidimensional analysis of our pepper samples log2 data
plotMDS(logcounts)
plotMDS(logcountsfiltered)

# group <- factor(paste(Cufflinks_information_removed_row$Sample_ID,
#                       Cufflinks_information_removed_row$Pepper_Species,
#                       Cufflinks_information_removed_row$Pepper_Name,
#                       Cufflinks_information_removed_row$Tissue,
#                       Cufflinks_information_removed_row$Scoville, sep="."))
# Cufflinks_information_removed_row$samples$group <- group
# 
# levels(Cufflinks_information_removed_row$Pepper_Species)
# col.cell <- c("green","pink")[Cufflinks_information_removed_row$Pepper_Species]
# data.frame(Cufflinks_information_removed_row$Pepper_Species,col.cell)
# 
# plotMDS(logcounts, col=col.cell)
# 
# par(mfrow=c(1,2))
# 
# levels(Cufflinks_information_removed_row$Sample_ID)
# levels(Cufflinks_information_removed_row$Pepper_Species)
# levels(Cufflinks_information_removed_row$Pepper_Name)
# levels(Cufflinks_information_removed_row$Tissue)
# levels(Cufflinks_information_removed_row$Scoville)


#Want to find the top 500 highly expressed genes
var_genes <- apply(logcountsfiltered, 1, var)
head(var_genes)

select_variation <- names(sort(var_genes,decreasing = TRUE))[1:500]
head(select_variation)


# heatmap.2(Raw_Pepper_Data_Matrix_Filtered,
#           Rowv="",
#           Colv="",
#           RowSideColors=module.color,
#           )
# heatmaply(Raw_Pepper_Data_Matrix_Filtered)
# 
# 
# #Tidy data to make some ggplots
# raw_pepper_data <- read.csv("genes.fpkm_tracking_ods_format.csv")
# head(raw_pepper_data)
# 
# raw_pepper_data_mat <- (raw_pepper_data[-c(1:4)])
# head(raw_pepper_data_mat)
# 
# tidy_pepper_data <- pivot_longer(raw_pepper_data_mat,
#                                  cols = HabP1_R1_001:WaxS2.LCL3440_L3_R2_001,
#                                  names_to = "samples",
#                                  values_to = "FPKM")
# 
# myraw_pepper_data_abund <- raw_pepper_data_mat$abundance
# myraw_pepper_data_count <- raw_pepper_data_mat$counts
# colSums(myraw_pepper_data_abund)
# colSums(myraw_pepper_data_count)
# 
# tidy_pepper_data <- pivot_longer(raw_pepper_data,
#                                  cols = HabP1_R1_001:WaxS2.LCL3440_L3_R2_001,
#                                  names_to = "samples",
#                                  values_to = "FPKM")
# head(tidy_pepper_data)
# 
# ggplot(tidy_pepper_data) +
#   aes(x=samples, y=FPKM, fill=samples) +
#   geom_violin(trim = FALSE, show.legend = TRUE) +
#   stat_summary(fun = "median",
#                geom = "point",
#                shape = 95,
#                size = 10,
#                color = "black",
#                show.legend = FALSE)
# #labs(y=”log2 FPKM”, x = “sample”, title=”Log2 Fragments Per Kilobase of transcript per Million mapped reads (FPKM)” caption=past0(“produced on “, Sys.time())) + theme_bw()
# 
# tidy_pepper_data %>%
#   filter(samples == c("HabP1_R1_001", "HabP1_R2_001")) %>%
#   View()
# 
# pepper_data <- read_csv("genes_fpkm_with_protein_characteristics.csv")
# head(pepper_data)
# 
# organized_pepper_data <- pivot_longer(pepper_data,
#                                       cols = HabP1_R1:WaxS2_R2,
#                                       names_to = "Pepper_Samples",
#                                       values_to = "Log2_FPKM")
# head(organized_pepper_data)
# 
# 
# log2_transformed_data <- rapply(organized_pepper_data, f=log2, classes = c ("numeric", "integer"), how = "replace")
# 
# 
# head(log2_transformed_data)
# 
# dim(raw_pepper_data)
# dim(log2_transformed_data)
# counts <- DGEList(log2_transformed_data)
# 
# library(edgeR)
# 
# ggplot(log2_transformed_data) +
#   aes(x=Pepper_Samples, y=Log2_FPKM, fill=Pepper_Samples) +
#   geom_violin(trim = FALSE, show.legend = TRUE) +
#   stat_summary(fun = "median",
#                geom = "point",
#                shape = 95,
#                size = 10,
#                color = "black",
#                show.legend = FALSE)
# 
# ggplot(log2_transformed_data) +
#   aes(x = Pepper_Samples, y=Log2_FPKM) +
#   geom_point(shape=16, size=2) +
#   geom_smooth(method=lm) +
#   geom_hex(show.legend=FALSE)
# labs(y = "Pepper Samples", x = "Log2 FPKM",
#      title = "Pepper Gene Expression (FPKM)")
# theme_classic() +
#   theme_dark() +
#   theme_bw()
# abline(h=median(log2_transformed_data),col="blue")
# 
# boxplot(log2_transformed_data, xlab="", ylab="Log2 FPKM", las=2)
# 
# 
# 
# Hi Nick was here xoxo
