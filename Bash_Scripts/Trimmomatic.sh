#bash Trimmomatic.sh

#example of a trimmomatic line of code that can be edited that includes the illumina clipping of adapters section
#java jar trimmomatic-0.39.jar PE -threads 4 read1.fastq.gz read2.fastq.gz read1_paired.fastq.gz read1_unpaired.fastq.gz read2_paired.fastq.gz read2_unpaired.fastq.gz ILLUMINACLIP:adapters.fasta:2:30:10

#ILLUMINACLIP:adapters.fasta:2:30:10
#https://thesequencingcenter.com/knowledge-base/trimming-illumina-adapter-sequences/   <- website where the line of code was obtained to clip adapters

#https://chipster.csc.fi/manual/trimmomatic.html <- what each line of code means in trimmomatic

#What i need is to find out what adapters my RNA sequencing used, it says Illumina Universal Adapters but i need the specific sequence and obtain the fasta file for illumina clip to read and cut that sequence.
#The adapter sequence(s) is/are contained in a FASTA formatted file.  The ILLUMINACLIP parameter specifies the name of this file so in the above example, the filed named would be "adapters.fasta" while in our situation it would most likely be named something like Illumina_Universal_Adapters.fasta or something along those lines.  This parameter also requires three additional fields: seedMismatches, palindromeClipThreshold, simpleClipThreshold.  See the manual for more information about how to set these three fields.


#Adapter clipping (ILLUMINACLIP)
#Trim leading bases by quality (LEADING)
#Trim trailing bases by quality (TRAILING)
#Number of bases to keep from the start (CROP)
#Number of bases to remove from the start (ILLUMINACLIP:UniversalAdapters.fa:2:30:10 HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36)
#Sliding window trimming (SLIDINGWINDOW)
#Adaptive quality trimming (MAXINFO)
#Minimum average quality of reads to keep (AVGQUAL)
#Minimum length of reads to keep (MINLEN)

#Parameters
#Adapter set (none, TruSeq2-SE.fa, TruSeq3-SE.fa, TruSeq2-PE.fa, TruSeq3-PE.fa, UniversalAdapters.fa, TruSeq3-PE-2.fa, NexteraPE-PE.fa) [none]
#Adapter clipping parameters (String) []
#Quality scale used in the fastq file (phred33, phred64) [phred33]
#Minumum quality to keep a leading base (Integer) []
#Minumum quality to keep a trailing base (Integer) []
#Number of bases to keep from the start (Integer) []
#Number of bases to remove from the start (Integer) []
#Sliding window trimming parameters (String) []
#Adaptive quality trimming parameters (String) []
#Minimum average quality of reads to keep (Integer) []
#Minimum length of reads to keep (Integer) []
#Write a log file (yes, no) [yes]
#Details
#Only the trimming steps with user specified parameters are performed. The steps with empty parameters are skipped. The steps are performed in following order:

set -e

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
