#Tidying the Data

library(tidyverse) #Loading in the Tidyverse suite

genes_fpkm <- read_csv ("genes_fpkm.csv") #Reading in FPKM Values
protein_data <- read.csv("Spicy_Pepper_cufflinks_information.csv") #Protein data

tidy_fpkm <- genes_fpkm %>%
  pivot_longer(cols = 4:51,
               names_to = "Sample_ID",
               values_to = "FPKM") #Shrink dataframe width by creating 'Sample ID' col

final_tidy <- tidy_fpkm %>%
  full_join(protein_data,
             by = "Sample_ID") %>%
  rename(c(Locus = locus,
           Gene_ID = genes_fpkm_with_protein_charact)) #Add pepper information to tidied dataset, rename cols to make working w data easier