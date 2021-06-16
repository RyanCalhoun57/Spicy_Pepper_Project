#To Obtain the FastQC HTML files for each set of the experiment:

set -e

#First i will obtain the files needed for the cut adapters section of the experiment
#I need the fastq.gz files present in the working directory

#WaxS2-LCL3440_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 WaxS2-LCL3440_L3_R1_001.fastq.gz WaxS2-LCL3440_L3_R2_001.fastq.gz WaxS2-LCL3440_L3_R1_001_trimmed.fq WaxS2-LCL3440_L3_R1_001_unpair_trimmed.fq WaxS2-LCL3440_L3_R2_001_trimmed.fq WaxS2-LCL3440_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#WaxS1-LCL3438_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 WaxS1-LCL3438_L3_R1_001.fastq.gz WaxS1-LCL3438_L3_R2_001.fastq.gz WaxS1-LCL3438_L3_R1_001_trimmed.fq WaxS1-LCL3438_L3_R1_001_unpair_trimmed.fq WaxS1-LCL3438_L3_R2_001_trimmed.fq WaxS1-LCL3438_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#WaxP2-LCL3441_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 WaxP2-LCL3441_L3_R1_001.fastq.gz WaxP2-LCL3441_L3_R2_001.fastq.gz WaxP2-LCL3441_L3_R1_001_trimmed.fq WaxP2-LCL3441_L3_R1_001_unpair_trimmed.fq WaxP2-LCL3441_L3_R2_001_trimmed.fq WaxP2-LCL3441_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#WaxP1_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 WaxP1_R1_001.fastq.gz WaxP1_R2_001.fastq.gz WaxP1_R1_001_trimmed.fq WaxP1_R1_001_unpair_trimmed.fq WaxP1_R2_001_trimmed.fq WaxP1_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36



#SerS2-LCL3446_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 SerS2-LCL3446_L3_R1_001.fastq.gz SerS2-LCL3446_L3_R2_001.fastq.gz SerS2-LCL3446_L3_R1_001_trimmed.fq SerS2-LCL3446_L3_R1_001_unpair_trimmed.fq SerS2-LCL3446_L3_R2_001_trimmed.fq SerS2-LCL3446_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#SerS1-LCL3444_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 SerS1-LCL3444_L3_R1_001.fastq.gz SerS1-LCL3444_L3_R2_001.fastq.gz SerS1-LCL3444_L3_R1_001_trimmed.fq SerS1-LCL3444_L3_R1_001_unpair_trimmed.fq SerS1-LCL3444_L3_R2_001_trimmed.fq SerS1-LCL3444_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#SerP2-LCL3447_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 SerP2-LCL3447_L3_R1_001.fastq.gz SerP2-LCL3447_L3_R2_001.fastq.gz SerP2-LCL3447_L3_R1_001_trimmed.fq SerP2-LCL3447_L3_R1_001_unpair_trimmed.fq SerP2-LCL3447_L3_R2_001_trimmed.fq SerP2-LCL3447_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#SerP1_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 SerP1_R1_001.fastq.gz SerP1_R2_001.fastq.gz SerP1_R1_001_trimmed.fq SerP1_R1_001_unpair_trimmed.fq SerP1_R2_001_trimmed.fq SerP1_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36



#LoHS3-LCL3432_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 LoHS3-LCL3432_L3_R1_001.fastq.gz LoHS3-LCL3432_L3_R2_001.fastq.gz LoHS3-LCL3432_L3_R1_001_trimmed.fq LoHS3-LCL3432_L3_R1_001_unpair_trimmed.fq LoHS3-LCL3432_L3_R2_001_trimmed.fq LoHS3-LCL3432_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#LoHS1-LCL3430_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 LoHS1-LCL3430_L3_R1_001.fastq.gz LoHS1-LCL3430_L3_R2_001.fastq.gz LoHS1-LCL3430_L3_R1_001_trimmed.fq LoHS1-LCL3430_L3_R1_001_unpair_trimmed.fq LoHS1-LCL3430_L3_R2_001_trimmed.fq LoHS1-LCL3430_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#LoHP3-LCL3433_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 LoHP3-LCL3433_L3_R1_001.fastq.gz LoHP3-LCL3433_L3_R2_001.fastq.gz LoHP3-LCL3433_L3_R1_001_trimmed.fq LoHP3-LCL3433_L3_R1_001_unpair_trimmed.fq LoHP3-LCL3433_L3_R2_001_trimmed.fq LoHP3-LCL3433_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#LoHP2-LCL3431_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 LoHP2-LCL3431_L3_R1_001.fastq.gz LoHP2-LCL3431_L3_R2_001.fastq.gz LoHP2-LCL3431_L3_R1_001_trimmed.fq LoHP2-LCL3431_L3_R1_001_unpair_trimmed.fq LoHP2-LCL3431_L3_R2_001_trimmed.fq LoHP2-LCL3431_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36



#JalS1-LCL3442_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 JalS1-LCL3442_L3_R1_001.fastq.gz JalS1-LCL3442_L3_R2_001.fastq.gz JalS1-LCL3442_L3_R1_001_trimmed.fq JalS1-LCL3442_L3_R1_001_unpair_trimmed.fq JalS1-LCL3442_L3_R2_001_trimmed.fq JalS1-LCL3442_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#JalP1_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 JalP1_R1_001.fastq.gz JalP1_R2_001.fastq.gz JalP1_R1_001_trimmed.fq JalP1_R1_001_unpair_trimmed.fq JalP1_R2_001_trimmed.fq JalP1_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36



#HabS2-LCL3450_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 HabS2-LCL3450_L3_R1_001.fastq.gz HabS2-LCL3450_L3_R2_001.fastq.gz HabS2-LCL3450_L3_R1_001_trimmed.fq HabS2-LCL3450_L3_R1_001_unpair_trimmed.fq HabS2-LCL3450_L3_R2_001_trimmed.fq HabS2-LCL3450_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#HabS1-LCL3448_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 HabS1-LCL3448_L3_R1_001.fastq.gz HabS1-LCL3448_L3_R2_001.fastq.gz HabS1-LCL3448_L3_R1_001_trimmed.fq HabS1-LCL3448_L3_R1_001_unpair_trimmed.fq HabS1-LCL3448_L3_R2_001_trimmed.fq HabS1-LCL3448_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#HabP2-LCL3451_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 HabP2-LCL3451_L3_R1_001.fastq.gz HabP2-LCL3451_L3_R2_001.fastq.gz HabP2-LCL3451_L3_R1_001_trimmed.fq HabP2-LCL3451_L3_R1_001_unpair_trimmed.fq HabP2-LCL3451_L3_R2_001_trimmed.fq HabP2-LCL3451_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#HabP1_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 HabP1_R1_001.fastq.gz HabP1_R2_001.fastq.gz HabP1_R1_001_trimmed.fq HabP1_R1_001_unpair_trimmed.fq HabP1_R2_001_trimmed.fq HabP1_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36



#GhoS1-LCL3452_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 GhoS1-LCL3452_L3_R1_001.fastq.gz GhoS1-LCL3452_L3_R2_001.fastq.gz GhoS1-LCL3452_L3_R1_001_trimmed.fq GhoS1-LCL3452_L3_R1_001_unpair_trimmed.fq GhoS1-LCL3452_L3_R2_001_trimmed.fq GhoS1-LCL3452_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#GhoP1-LCL3453_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 GhoP1-LCL3453_L3_R1_001.fastq.gz GhoP1-LCL3453_L3_R2_001.fastq.gz GhoP1-LCL3453_L3_R1_001_trimmed.fq GhoP1-LCL3453_L3_R1_001_unpair_trimmed.fq GhoP1-LCL3453_L3_R2_001_trimmed.fq GhoP1-LCL3453_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36



#CheS2-LCL3436_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 CheS2-LCL3436_L3_R1_001.fastq.gz CheS2-LCL3436_L3_R2_001.fastq.gz CheS2-LCL3436_L3_R1_001_trimmed.fq CheS2-LCL3436_L3_R1_001_unpair_trimmed.fq CheS2-LCL3436_L3_R2_001_trimmed.fq CheS2-LCL3436_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#CheS1-LCL3434_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 CheS1-LCL3434_L3_R1_001.fastq.gz CheS1-LCL3434_L3_R2_001.fastq.gz CheS1-LCL3434_L3_R1_001_trimmed.fq CheS1-LCL3434_L3_R1_001_unpair_trimmed.fq CheS1-LCL3434_L3_R2_001_trimmed.fq CheS1-LCL3434_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#CheP2-LCL3437_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 CheP2-LCL3437_L3_R1_001.fastq.gz CheP2-LCL3437_L3_R2_001.fastq.gz CheP2-LCL3437_L3_R1_001_trimmed.fq CheP2-LCL3437_L3_R1_001_unpair_trimmed.fq CheP2-LCL3437_L3_R2_001_trimmed.fq CheP2-LCL3437_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

#CheP1-LCL3435_L3_R
java -jar /home/general/Programs/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 CheP1-LCL3435_L3_R1_001.fastq.gz CheP1-LCL3435_L3_R2_001.fastq.gz CheP1-LCL3435_L3_R1_001_trimmed.fq CheP1-LCL3435_L3_R1_001_unpair_trimmed.fq CheP1-LCL3435_L3_R2_001_trimmed.fq CheP1-LCL3435_L3_R2_unpair_trimmed.fq ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

/home/general/Programs/FastQC/fastqc /media/general/Data_Drive_1/Carone_Peppers_2020/ *.fq

gzip *.fq

#This will generate the fastqc reports for the trimmed fq files so i can then use multiQC on them

#In order to get the regular version where the adapters are not cut, i need to run the FastQC program. I can run them as a wildcard if i have the fastq files unzipped such as in the example below

gzip -d *.fastq.gz

/home/general/Programs/FastQC/fastqc /media/general/Data_Drive_1/Carone_Peppers_2020/ *.fastq

gzip *.fastq


/home/general/Programs/FastQC/fastqc /media/general/Data_Drive_1/Carone_Peppers_2020/ *.fq

