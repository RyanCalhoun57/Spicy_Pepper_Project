#Tidying the Data

library(tidyverse) #Loading in the Tidyverse suite
library(RColorBrewer)

#set the working directory
setwd("~/Spicy_Pepper_Project/R_Workflow")

genes_fpkm <- read.csv ("genes_fpkm.csv") #Reading in FPKM Values
protein_data <- read.csv("Spicy_Pepper_cufflinks_information.csv") #Pepper information

genes_fpkm <- genes_fpkm %>%
  rename(c("genes_fpkm_with_protein_charact" = "ï..genes_fpkm_with_protein_charact"))

protein_data <- protein_data %>%
  rename(c("Sample_ID" = "ï..Sample_ID"))


tidy_fpkm <- genes_fpkm %>%
  pivot_longer(cols = 4:51,
               names_to = "Sample_ID",
               values_to = "FPKM") #Shrink dataframe width by creating 'Sample ID' col

final_tidy <- tidy_fpkm %>%
  full_join(protein_data,
             by = "Sample_ID") %>%
  rename(c(Locus = locus,
           Gene_ID = genes_fpkm_with_protein_charact)) #Add pepper information to tidied dataset, rename cols to make working w data easier

#Created a data frame which consists of tissue type, the pepper name, and FPKM values
Tissue_data <- final_tidy %>%
  select(Tissue, FPKM)

#Created a data frame which consists of Pepper species, the pepper name, and FPKM values
Species_data <- final_tidy %>%
  select(Pepper_Species, Pepper_Name, FPKM)

Pepper_data <- final_tidy %>%
#substr(colnames(Sample_ID, start=1, stop=5)) %>%
select(Sample_ID, FPKM)

#Created a data frame which consists of the Library size of the peppers and their sample_ID
Library_data <- protein_data %>%
  select(Sample_ID,Mapped_Reads)

#Created a bar graph of the library size
ggplot(data=Library_data) + 
  geom_col(aes(x=Sample_ID, y=Mapped_Reads), color='black', fill='yellow')+
  labs(x = "Pepper Sample", y = "Number of Mapped Reads", title = "Total Number of Mapped Reads for each Pepper Sample") +
  theme_bw() +
  theme_minimal()

#Creating a matrix with just the pepper samples and FPKM values
Samples_48_FPKM <- genes_fpkm %>%
  select(-"genes_fpkm_with_protein_charact", -"Protein_Function", -"locus")

#Attempted box plot of pepper data with FPKM values
ggplot(data=Pepper_data, aes(x=Sample_ID, y=FPKM)) +
  geom_boxplot()
