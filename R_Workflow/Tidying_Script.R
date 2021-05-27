#Tidying the Data

library(tidyverse) #Loading in the Tidyverse suite

genes_fpkm <- read.csv ("genes_fpkm.csv") #Reading in FPKM Values
protein_data <- read.csv("Spicy_Pepper_cufflinks_information.csv") #Pepper information

tidy_fpkm <- genes_fpkm %>%
  pivot_longer(cols = 4:51,
               names_to = "Sample_ID",
               values_to = "FPKM") #Shrink dataframe width by creating 'Sample ID' col

final_tidy <- tidy_fpkm %>%
  full_join(Spicy_Pepper_cufflinks_information,
             by = "Sample_ID") %>%
  rename(c(Locus = locus,
           Gene_ID = genes_fpkm_with_protein_charact)) #Add pepper information to tidied dataset, rename cols to make working w data easier

#Created a data frame which consists of tissue type, the pepper name, and FPKM values
Tissue_data <- final_tidy %>%
  select(Tissue, Pepper_Name, FPKM)

#Created a data frame which consists of Pepper species, the pepper name, and FPKM values
Species_data <- final_tidy %>%
  select(Pepper_Species, Pepper_Name, FPKM)


Pepper_data <- final_tidy %>%
    substr(colnames(Sample_ID, start=1, stop=5)) %>%
    select(Sample_ID, FPKM)
  




