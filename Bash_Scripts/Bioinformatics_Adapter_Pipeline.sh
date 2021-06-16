#Bioinformatics Pipeline to go from my trimmed fastq file where the adapters have been trimmed all the way to cufflinks output:

set -e

#looks like i still will have to get rid of the illumina adapters as it does not approve my fastqc report when i do trim them. The adapter content is still red for the output. So i may have to specify the illumina sequence to cut it out and then i should be able to run the bowtie and the rest after i think the fastqc file looks good.

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

#Trimmomatic software took the fastq files and trimmed them to get an output of .fq files
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Next I shall run the Bowtie software on the results of the fastqc files (CheP1-LCL3435_L3_R2_001_trimmed.fq)


#WaxS2-LCL3440_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS2-LCL3440_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS2-LCL3440_L3_R2_001_cutadapters.sam

#WaxS2-LCL3440_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS2-LCL3440_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS2-LCL3440_L3_R1_001_cutadapters.sam

#WaxS1-LCL3438_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS1-LCL3438_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS1-LCL3438_L3_R2_001_cutadapters.sam

#WaxS1-LCL3438_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS1-LCL3438_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxS1-LCL3438_L3_R1_001_cutadapters.sam

#WaxP2-LCL3441_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP2-LCL3441_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP2-LCL3441_L3_R2_001_cutadapters.sam

#WaxP2-LCL3441_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP2-LCL3441_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP2-LCL3441_L3_R1_001_cutadapters.sam

#WaxP1_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP1_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP1_R2_001_cutadapters.sam

#WaxP1_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP1_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/WaxP1_R1_001_cutadapters.sam



#SerS2-LCL3446_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerS2-LCL3446_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerS2-LCL3446_L3_R2_001_cutadapters.sam

#SerS2-LCL3446_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerS2-LCL3446_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerS2-LCL3446_L3_R1_001_cutadapters.sam

#SerS1-LCL3444_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerS1-LCL3444_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerS1-LCL3444_L3_R2_001_cutadapters.sam

#SerS1-LCL3444_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerS1-LCL3444_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerS1-LCL3444_L3_R1_001_cutadapters.sam

#SerP2-LCL3447_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerP2-LCL3447_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerP2-LCL3447_L3_R2_001_cutadapters.sam

#SerP2-LCL3447_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerP2-LCL3447_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerP2-LCL3447_L3_R1_001_cutadapters.sam

#SerP1_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerP1_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerP1_R2_001_cutadapters.sam

#SerP1_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/SerP1_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/SerP1_R1_001_cutadapters.sam



#LoHS3-LCL3432_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS3-LCL3432_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS3-LCL3432_L3_R2_001_cutadapters.sam

#LoHS3-LCL3432_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS3-LCL3432_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS3-LCL3432_L3_R1_001_cutadapters.sam

#LoHS1-LCL3430_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS1-LCL3430_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS1-LCL3430_L3_R2_001_cutadapters.sam

#LoHS1-LCL3430_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS1-LCL3430_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHS1-LCL3430_L3_R1_001_cutadapters.sam

#LoHP3-LCL3433_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP3-LCL3433_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP3-LCL3433_L3_R2_001_cutadapters.sam

#LoHP3-LCL3433_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP3-LCL3433_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP3-LCL3433_L3_R1_001_cutadapters.sam

#LoHP2-LCL3431_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP2-LCL3431_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP2-LCL3431_L3_R2_001_cutadapters.sam

#LoHP2-LCL3431_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP2-LCL3431_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/LoHP2-LCL3431_L3_R1_001_cutadapters.sam



#JalS1-LCL3442_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/JalS1-LCL3442_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/JalS1-LCL3442_L3_R2_001_cutadapters.sam

#JalS1-LCL3442_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/JalS1-LCL3442_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/JalS1-LCL3442_L3_R1_001_cutadapters.sam

#JalP1_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/JalP1_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/JalP1_R2_001_cutadapters.sam

#JalP1_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/JalP1_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/JalP1_R1_001_cutadapters.sam



#HabS2-LCL3450_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabS2-LCL3450_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabS2-LCL3450_L3_R2_001_cutadapters.sam

#HabS2-LCL3450_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabS2-LCL3450_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabS2-LCL3450_L3_R1_001_cutadapters.sam

#HabS1-LCL3448_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabS1-LCL3448_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabS1-LCL3448_L3_R2_001_cutadapters.sam

#HabS1-LCL3448_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabS1-LCL3448_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabS1-LCL3448_L3_R1_001_cutadapters.sam

#HabP2-LCL3451_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabP2-LCL3451_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabP2-LCL3451_L3_R2_001_cutadapters.sam

#HabP2-LCL3451_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabP2-LCL3451_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabP2-LCL3451_L3_R1_001_cutadapters.sam

#HabP1_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabP1_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabP1_R2_001_cutadapters.sam

#HabP1_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/HabP1_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/HabP1_R1_001_cutadapters.sam



#GhoS1-LCL3452_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/GhoS1-LCL3452_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/GhoS1-LCL3452_L3_R2_001_cutadapters.sam

#GhoS1-LCL3452_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/GhoS1-LCL3452_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/GhoS1-LCL3452_L3_R1_001_cutadapters.sam

#GhoP1-LCL3453_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/GhoP1-LCL3453_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/GhoP1-LCL3453_L3_R2_001_cutadapters.sam

#GhoP1-LCL3453_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/GhoP1-LCL3453_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/GhoP1-LCL3453_L3_R1_001_cutadapters.sam



#CheS2-LCL3436_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheS2-LCL3436_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheS2-LCL3436_L3_R2_001_cutadapters.sam

#CheS2-LCL3436_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheS2-LCL3436_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheS2-LCL3436_L3_R1_001_cutadapters.sam

#CheS1-LCL3434_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheS1-LCL3434_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheS1-LCL3434_L3_R2_001_cutadapters.sam

#CheS1-LCL3434_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheS1-LCL3434_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheS1-LCL3434_L3_R1_001_cutadapters.sam

#CheP2-LCL3437_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheP2-LCL3437_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheP2-LCL3437_L3_R2_001_cutadapters.sam

#CheP2-LCL3437_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheP2-LCL3437_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheP2-LCL3437_L3_R1_001_cutadapters.sam

#CheP1-LCL3435_L3_R2
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheP1-LCL3435_L3_R2_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheP1-LCL3435_L3_R2_001_cutadapters.sam

#CheP1-LCL3435_L3_R1
/home/general/Programs/bowtie2-2.4.1-linux-x86_64/bowtie2 --trim3 30 -p 4 -x /home/general/Programs/bowtie2-2.4.1-linux-x86_64/indexes/Pepper_1.55/Pepper_1.55_Genome -U /media/general/Data_Drive_1/Carone_Peppers_2020/CheP1-LCL3435_L3_R1_001_trimmed.fq -S /media/general/Data_Drive_1/Carone_Peppers_2020/CheP1-LCL3435_L3_R1_001_cutadapters.sam

gzip *trimmed.fq

#This software will run bowtie and trim the data in the process which will give me a sam ouptut.
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Next will be to convert the sam to bam files

#WaxS2-LCL3440_L3_R2
samtools view -S -b WaxS2-LCL3440_L3_R2_001_cutadapters.sam > WaxS2-LCL3440_L3_R2_001_cutadapters.bam
gzip WaxS2-LCL3440_L3_R2_001_cutadapters.sam

#WaxS2-LCL3440_L3_R1
samtools view -S -b WaxS2-LCL3440_L3_R1_001_cutadapters.sam > WaxS2-LCL3440_L3_R1_001_cutadapters.bam
gzip WaxS2-LCL3440_L3_R1_001_cutadapters.sam

#WaxS1-LCL3438_L3_R2
samtools view -S -b WaxS1-LCL3438_L3_R2_001_cutadapters.sam > WaxS1-LCL3438_L3_R2_001_cutadapters.bam
gzip WaxS1-LCL3438_L3_R2_001_cutadapters.sam

#WaxS1-LCL3438_L3_R1
samtools view -S -b WaxS1-LCL3438_L3_R1_001_cutadapters.sam > WaxS1-LCL3438_L3_R1_001_cutadapters.bam
gzip WaxS1-LCL3438_L3_R1_001_cutadapters.sam

#WaxP2-LCL3441_L3_R2
samtools view -S -b WaxP2-LCL3441_L3_R2_001_cutadapters.sam > WaxP2-LCL3441_L3_R2_001_cutadapters.bam
gzip WaxP2-LCL3441_L3_R2_001_cutadapters.sam

#WaxP2-LCL3441_L3_R1
samtools view -S -b WaxP2-LCL3441_L3_R1_001_cutadapters.sam > WaxP2-LCL3441_L3_R1_001_cutadapters.bam
gzip WaxP2-LCL3441_L3_R1_001_cutadapters.sam

#WaxP1_R2
samtools view -S -b WaxP1_R2_001_cutadapters.sam > WaxP1_R2_001_cutadapters.bam
gzip WaxP1_R2_001_cutadapters.sam

#WaxP1_R1
samtools view -S -b WaxP1_R1_001_cutadapters.sam > WaxP1_R1_001_cutadapters.bam
gzip WaxP1_R1_001_cutadapters.sam



#SerS2-LCL3446_L3_R2
samtools view -S -b SerS2-LCL3446_L3_R2_001_cutadapters.sam > SerS2-LCL3446_L3_R2_001_cutadapters.bam
gzip SerS2-LCL3446_L3_R2_001_cutadapters.sam

#SerS2-LCL3446_L3_R1
samtools view -S -b SerS2-LCL3446_L3_R1_001_cutadapters.sam > SerS2-LCL3446_L3_R1_001_cutadapters.bam
gzip SerS2-LCL3446_L3_R1_001_cutadapters.sam

#SerS1-LCL3444_L3_R2
samtools view -S -b SerS1-LCL3444_L3_R2_001_cutadapters.sam > SerS1-LCL3444_L3_R2_001_cutadapters.bam
gzip SerS1-LCL3444_L3_R2_001_cutadapters.sam

#SerS1-LCL3444_L3_R1
samtools view -S -b SerS1-LCL3444_L3_R1_001_cutadapters.sam > SerS1-LCL3444_L3_R1_001_cutadapters.bam
gzip SerS1-LCL3444_L3_R1_001_cutadapters.sam

#SerP2-LCL3447_L3_R2
samtools view -S -b SerP2-LCL3447_L3_R2_001_cutadapters.sam > SerP2-LCL3447_L3_R2_001_cutadapters.bam
gzip SerP2-LCL3447_L3_R2_001_cutadapters.sam

#SerP2-LCL3447_L3_R1
samtools view -S -b SerP2-LCL3447_L3_R1_001_cutadapters.sam > SerP2-LCL3447_L3_R1_001_cutadapters.bam
gzip SerP2-LCL3447_L3_R1_001_cutadapters.sam

#SerP1_R2
samtools view -S -b SerP1_R2_001_cutadapters.sam > SerP1_R2_001_cutadapters.bam
gzip SerP1_R2_001_cutadapters.sam

#SerP1_R1
samtools view -S -b SerP1_R1_001_cutadapters.sam > SerP1_R1_001_cutadapters.bam
gzip SerP1_R1_001_cutadapters.sam


#LoHS3-LCL3432_L3_R2
samtools view -S -b LoHS3-LCL3432_L3_R2_001_cutadapters.sam > LoHS3-LCL3432_L3_R2_001_cutadapters.bam
gzip LoHS3-LCL3432_L3_R2_001_cutadapters.sam

#LoHS3-LCL3432_L3_R1
samtools view -S -b LoHS3-LCL3432_L3_R1_001_cutadapters.sam > LoHS3-LCL3432_L3_R1_001_cutadapters.bam
gzip LoHS3-LCL3432_L3_R1_001_cutadapters.sam

#LoHS1-LCL3430_L3_R2
samtools view -S -b LoHS1-LCL3430_L3_R2_001_cutadapters.sam > LoHS1-LCL3430_L3_R2_001_cutadapters.bam
gzip LoHS1-LCL3430_L3_R2_001_cutadapters.sam

#LoHS1-LCL3430_L3_R1
samtools view -S -b LoHS1-LCL3430_L3_R1_001_cutadapters.sam > LoHS1-LCL3430_L3_R1_001_cutadapters.bam
gzip LoHS1-LCL3430_L3_R1_001_cutadapters.sam

#LoHP3-LCL3433_L3_R2
samtools view -S -b LoHP3-LCL3433_L3_R2_001_cutadapters.sam > LoHP3-LCL3433_L3_R2_001_cutadapters.bam
gzip LoHP3-LCL3433_L3_R2_001_cutadapters.sam

#LoHP3-LCL3433_L3_R1
samtools view -S -b LoHP3-LCL3433_L3_R1_001_cutadapters.sam > LoHP3-LCL3433_L3_R1_001_cutadapters.bam
gzip LoHP3-LCL3433_L3_R1_001_cutadapters.sam

#LoHP2-LCL3431_L3_R2
samtools view -S -b LoHP2-LCL3431_L3_R2_001_cutadapters.sam > LoHP2-LCL3431_L3_R2_001_cutadapters.bam
gzip LoHP2-LCL3431_L3_R2_001_cutadapters.sam

#LoHP2-LCL3431_L3_R1
samtools view -S -b LoHP2-LCL3431_L3_R1_001_cutadapters.sam > LoHP2-LCL3431_L3_R1_001_cutadapters.bam
gzip LoHP2-LCL3431_L3_R1_001_cutadapters.sam



#JalS1-LCL3442_L3_R2
samtools view -S -b JalS1-LCL3442_L3_R2_001_cutadapters.sam > JalS1-LCL3442_L3_R2_001_cutadapters.bam
gzip JalS1-LCL3442_L3_R2_001_cutadapters.sam

#JalS1-LCL3442_L3_R1
samtools view -S -b JalS1-LCL3442_L3_R1_001_cutadapters.sam > JalS1-LCL3442_L3_R1_001_cutadapters.bam
gzip JalS1-LCL3442_L3_R1_001_cutadapters.sam

#JalP1_R2
samtools view -S -b JalP1_R2_001_cutadapters.sam > JalP1_R2_001_cutadapters.bam
gzip JalP1_R2_001_cutadapters.sam

#JalP1_R1
samtools view -S -b JalP1_R1_001_cutadapters.sam > JalP1_R1_001_cutadapters.bam
gzip JalP1_R1_001_cutadapters.sam



#HabS2-LCL3450_L3_R2
samtools view -S -b HabS2-LCL3450_L3_R2_001_cutadapters.sam > HabS2-LCL3450_L3_R2_001_cutadapters.bam
gzip HabS2-LCL3450_L3_R2_001_cutadapters.sam

#HabS2-LCL3450_L3_R1
samtools view -S -b HabS2-LCL3450_L3_R1_001_cutadapters.sam > HabS2-LCL3450_L3_R1_001_cutadapters.bam
gzip HabS2-LCL3450_L3_R1_001_cutadapters.sam

#HabS1-LCL3448_L3_R2
samtools view -S -b HabS1-LCL3448_L3_R2_001_cutadapters.sam > HabS1-LCL3448_L3_R2_001_cutadapters.bam
gzip HabS1-LCL3448_L3_R2_001_cutadapters.sam

#HabS1-LCL3448_L3_R1
samtools view -S -b HabS1-LCL3448_L3_R1_001_cutadapters.sam > HabS1-LCL3448_L3_R1_001_cutadapters.bam
gzip HabS1-LCL3448_L3_R1_001_cutadapters.sam

#HabP2-LCL3451_L3_R2
samtools view -S -b HabP2-LCL3451_L3_R2_001_cutadapters.sam > HabP2-LCL3451_L3_R2_001_cutadapters.bam
gzip HabP2-LCL3451_L3_R2_001_cutadapters.sam

#HabP2-LCL3451_L3_R1
samtools view -S -b HabP2-LCL3451_L3_R1_001_cutadapters.sam > HabP2-LCL3451_L3_R1_001_cutadapters.bam
gzip HabP2-LCL3451_L3_R1_001_cutadapters.sam

#HabP1_R2
samtools view -S -b HabP1_R2_001_cutadapters.sam > HabP1_R2_001_cutadapters.bam
gzip HabP1_R2_001_cutadapters.sam

#HabP1_R1
samtools view -S -b HabP1_R1_001_cutadapters.sam > HabP1_R1_001_cutadapters.bam
gzip HabP1_R1_001_cutadapters.sam



#GhoS1-LCL3452_L3_R2
samtools view -S -b GhoS1-LCL3452_L3_R2_001_cutadapters.sam > GhoS1-LCL3452_L3_R2_001_cutadapters.bam
gzip GhoS1-LCL3452_L3_R2_001_cutadapters.sam

#GhoS1-LCL3452_L3_R1
samtools view -S -b GhoS1-LCL3452_L3_R1_001_cutadapters.sam > GhoS1-LCL3452_L3_R1_001_cutadapters.bam
gzip GhoS1-LCL3452_L3_R1_001_cutadapters.sam

#GhoP1-LCL3453_L3_R2
samtools view -S -b GhoP1-LCL3453_L3_R2_001_cutadapters.sam > GhoP1-LCL3453_L3_R2_001_cutadapters.bam
gzip GhoP1-LCL3453_L3_R2_001_cutadapters.sam

#GhoP1-LCL3453_L3_R1
samtools view -S -b GhoP1-LCL3453_L3_R1_001_cutadapters.sam > GhoP1-LCL3453_L3_R1_001_cutadapters.bam
gzip GhoP1-LCL3453_L3_R1_001_cutadapters.sam



#CheS2-LCL3436_L3_R2
samtools view -S -b CheS2-LCL3436_L3_R2_001_cutadapters.sam > CheS2-LCL3436_L3_R2_001_cutadapters.bam
gzip CheS2-LCL3436_L3_R2_001_cutadapters.sam

#CheS2-LCL3436_L3_R1
samtools view -S -b CheS2-LCL3436_L3_R1_001_cutadapters.sam > CheS2-LCL3436_L3_R1_001_cutadapters.bam
gzip CheS2-LCL3436_L3_R1_001_cutadapters.sam

#CheS1-LCL3434_L3_R2
samtools view -S -b CheS1-LCL3434_L3_R2_001_cutadapters.sam > CheS1-LCL3434_L3_R2_001_cutadapters.bam
gzip CheS1-LCL3434_L3_R2_001_cutadapters.sam

#CheS1-LCL3434_L3_R1
samtools view -S -b CheS1-LCL3434_L3_R1_001_cutadapters.sam > CheS1-LCL3434_L3_R1_001_cutadapters.bam
gzip CheS1-LCL3434_L3_R1_001_cutadapters.sam

#CheP2-LCL3437_L3_R2
samtools view -S -b CheP2-LCL3437_L3_R2_001_cutadapters.sam > CheP2-LCL3437_L3_R2_001_cutadapters.bam
gzip CheP2-LCL3437_L3_R2_001_cutadapters.sam

#CheP2-LCL3437_L3_R1
samtools view -S -b CheP2-LCL3437_L3_R1_001_cutadapters.sam > CheP2-LCL3437_L3_R1_001_cutadapters.bam
gzip CheP2-LCL3437_L3_R1_001_cutadapters.sam

#CheP1-LCL3435_L3_R2
samtools view -S -b CheP1-LCL3435_L3_R2_001_cutadapters.sam > CheP1-LCL3435_L3_R2_001_cutadapters.bam
gzip CheP1-LCL3435_L3_R2_001_cutadapters.sam

#CheP1-LCL3435_L3_R1
samtools view -S -b CheP1-LCL3435_L3_R1_001_cutadapters.sam > CheP1-LCL3435_L3_R1_001_cutadapters.bam
gzip CheP1-LCL3435_L3_R1_001_cutadapters.sam


#Software will make new bam files and will zip up old sam files
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Need to sort the bam files now
#sorting bam files

/home/general/Programs/samtools-1.10/samtools sort HabP1_R1_001_cutadapters.bam -o HabP1_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort HabP1_R2_001_cutadapters.bam -o HabP1_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort JalP1_R1_001_cutadapters.bam -o JalP1_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort JalP1_R2_001_cutadapters.bam -o JalP1_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort SerP1_R1_001_cutadapters.bam -o SerP1_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort SerP1_R2_001_cutadapters.bam -o SerP1_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort WaxP1_R1_001_cutadapters.bam -o WaxP1_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort WaxP1_R2_001_cutadapters.bam -o WaxP1_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort CheP1-LCL3435_L3_R1_001_cutadapters.bam -o CheP1-LCL3435_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort CheP1-LCL3435_L3_R2_001_cutadapters.bam -o CheP1-LCL3435_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort CheP2-LCL3437_L3_R1_001_cutadapters.bam -o CheP2-LCL3437_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort CheP2-LCL3437_L3_R2_001_cutadapters.bam -o CheP2-LCL3437_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort CheS1-LCL3434_L3_R1_001_cutadapters.bam -o CheS1-LCL3434_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort CheS1-LCL3434_L3_R2_001_cutadapters.bam -o CheS1-LCL3434_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort CheS2-LCL3436_L3_R1_001_cutadapters.bam -o CheS2-LCL3436_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort CheS2-LCL3436_L3_R2_001_cutadapters.bam -o CheS2-LCL3436_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort GhoP1-LCL3453_L3_R1_001_cutadapters.bam -o GhoP1-LCL3453_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort GhoP1-LCL3453_L3_R2_001_cutadapters.bam -o GhoP1-LCL3453_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort GhoS1-LCL3452_L3_R1_001_cutadapters.bam -o GhoS1-LCL3452_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort GhoS1-LCL3452_L3_R2_001_cutadapters.bam -o GhoS1-LCL3452_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort HabP2-LCL3451_L3_R1_001_cutadapters.bam -o HabP2-LCL3451_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort HabP2-LCL3451_L3_R2_001_cutadapters.bam -o HabP2-LCL3451_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort HabS1-LCL3448_L3_R1_001_cutadapters.bam -o HabS1-LCL3448_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort HabS1-LCL3448_L3_R2_001_cutadapters.bam -o HabS1-LCL3448_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort HabS2-LCL3450_L3_R1_001_cutadapters.bam -o HabS2-LCL3450_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort HabS2-LCL3450_L3_R2_001_cutadapters.bam -o HabS2-LCL3450_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort JalS1-LCL3442_L3_R1_001_cutadapters.bam -o JalS1-LCL3442_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort JalS1-LCL3442_L3_R2_001_cutadapters.bam -o JalS1-LCL3442_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort LoHP2-LCL3431_L3_R1_001_cutadapters.bam -o LoHP2-LCL3431_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort LoHP2-LCL3431_L3_R2_001_cutadapters.bam -o LoHP2-LCL3431_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort LoHP3-LCL3433_L3_R1_001_cutadapters.bam -o LoHP3-LCL3433_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort LoHP3-LCL3433_L3_R2_001_cutadapters.bam -o LoHP3-LCL3433_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort LoHS1-LCL3430_L3_R1_001_cutadapters.bam -o LoHS1-LCL3430_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort LoHS1-LCL3430_L3_R2_001_cutadapters.bam -o LoHS1-LCL3430_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort LoHS3-LCL3432_L3_R1_001_cutadapters.bam -o LoHS3-LCL3432_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort LoHS3-LCL3432_L3_R2_001_cutadapters.bam -o LoHS3-LCL3432_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort SerP2-LCL3447_L3_R1_001_cutadapters.bam -o SerP2-LCL3447_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort SerP2-LCL3447_L3_R2_001_cutadapters.bam -o SerP2-LCL3447_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort SerS1-LCL3444_L3_R1_001_cutadapters.bam -o SerS1-LCL3444_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort SerS1-LCL3444_L3_R2_001_cutadapters.bam -o SerS1-LCL3444_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort SerS2-LCL3446_L3_R1_001_cutadapters.bam -o SerS2-LCL3446_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort SerS2-LCL3446_L3_R2_001_cutadapters.bam -o SerS2-LCL3446_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort WaxP2-LCL3441_L3_R1_001_cutadapters.bam -o WaxP2-LCL3441_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort WaxP2-LCL3441_L3_R2_001_cutadapters.bam -o WaxP2-LCL3441_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort WaxS1-LCL3438_L3_R1_001_cutadapters.bam -o WaxS1-LCL3438_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort WaxS1-LCL3438_L3_R2_001_cutadapters.bam -o WaxS1-LCL3438_L3_R2_001.sorted_cutadapters.bam

/home/general/Programs/samtools-1.10/samtools sort WaxS2-LCL3440_L3_R1_001_cutadapters.bam -o WaxS2-LCL3440_L3_R1_001.sorted_cutadapters.bam
/home/general/Programs/samtools-1.10/samtools sort WaxS2-LCL3440_L3_R2_001_cutadapters.bam -o WaxS2-LCL3440_L3_R2_001.sorted_cutadapters.bam


#Sorts the bam files
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Running cufflinks

#making directory for output
mkdir cuffdiff_out_cutadapters

#Have to drop the gff file or gtf file into the location of wherever you are running cufflinks first from so I placed it into the Carone_Pepper_2020 folder

#running cuffdiff for all samples against pepper annotation file
#location of gff file -> /media/general/Data_Drive_1/DCaroneHSATII2020/H_sapiens_hg19_indexes/Pepper.v.1.55.chr.annotated_new.gff

/home/general/Programs/cufflinks-2.2.1.Linux_x86_64/cuffdiff -o cuffdiff_out_cutadapters -p 4 Pepper.v.1.55.chr.annotated_new.gff HabP1_R1_001.sorted_cutadapters.bam HabP1_R2_001.sorted_cutadapters.bam JalP1_R1_001.sorted_cutadapters.bam JalP1_R2_001.sorted_cutadapters.bam SerP1_R1_001.sorted_cutadapters.bam SerP1_R2_001.sorted_cutadapters.bam WaxP1_R1_001.sorted_cutadapters.bam WaxP1_R2_001.sorted_cutadapters.bam CheP1-LCL3435_L3_R1_001.sorted_cutadapters.bam CheP1-LCL3435_L3_R2_001.sorted_cutadapters.bam CheP2-LCL3437_L3_R1_001.sorted_cutadapters.bam CheP2-LCL3437_L3_R2_001.sorted_cutadapters.bam CheS1-LCL3434_L3_R1_001.sorted_cutadapters.bam CheS1-LCL3434_L3_R2_001.sorted_cutadapters.bam CheS2-LCL3436_L3_R1_001.sorted_cutadapters.bam CheS2-LCL3436_L3_R2_001.sorted_cutadapters.bam GhoP1-LCL3453_L3_R1_001.sorted_cutadapters.bam GhoP1-LCL3453_L3_R2_001.sorted_cutadapters.bam GhoS1-LCL3452_L3_R1_001.sorted_cutadapters.bam GhoS1-LCL3452_L3_R2_001.sorted_cutadapters.bam HabP2-LCL3451_L3_R1_001.sorted_cutadapters.bam HabP2-LCL3451_L3_R2_001.sorted_cutadapters.bam HabS1-LCL3448_L3_R1_001.sorted_cutadapters.bam HabS1-LCL3448_L3_R2_001.sorted_cutadapters.bam HabS2-LCL3450_L3_R1_001.sorted_cutadapters.bam HabS2-LCL3450_L3_R2_001.sorted_cutadapters.bam JalS1-LCL3442_L3_R1_001.sorted_cutadapters.bam JalS1-LCL3442_L3_R2_001.sorted_cutadapters.bam LoHP2-LCL3431_L3_R1_001.sorted_cutadapters.bam LoHP2-LCL3431_L3_R2_001.sorted_cutadapters.bam LoHP3-LCL3433_L3_R1_001.sorted_cutadapters.bam LoHP3-LCL3433_L3_R2_001.sorted_cutadapters.bam LoHS1-LCL3430_L3_R1_001.sorted_cutadapters.bam LoHS1-LCL3430_L3_R2_001.sorted_cutadapters.bam LoHS3-LCL3432_L3_R1_001.sorted_cutadapters.bam LoHS3-LCL3432_L3_R2_001.sorted_cutadapters.bam SerP2-LCL3447_L3_R1_001.sorted_cutadapters.bam SerP2-LCL3447_L3_R2_001.sorted_cutadapters.bam SerS1-LCL3444_L3_R1_001.sorted_cutadapters.bam SerS1-LCL3444_L3_R2_001.sorted_cutadapters.bam SerS2-LCL3446_L3_R1_001.sorted_cutadapters.bam SerS2-LCL3446_L3_R2_001.sorted_cutadapters.bam WaxP2-LCL3441_L3_R1_001.sorted_cutadapters.bam WaxP2-LCL3441_L3_R2_001.sorted_cutadapters.bam WaxS1-LCL3438_L3_R1_001.sorted_cutadapters.bam WaxS1-LCL3438_L3_R2_001.sorted_cutadapters.bam WaxS2-LCL3440_L3_R1_001.sorted_cutadapters.bam WaxS2-LCL3440_L3_R2_001.sorted_cutadapters.bam

