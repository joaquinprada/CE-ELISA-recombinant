# CE-ELISA-recombinant
Dataset of an ELISA test using recombinant B8/2 subunit (IgG rAg8/2) for Echinococcus granulosus sensu lato


Description of the Files:

-----
DataFig2.csv contains the IgG Optical Density data of the following:

  Negative (Serum) Panel: Sera collected from healthy Merino lambs aged under 3 months, belonging to the non-endemic area of Puerto Madryn (Chubut Province, Argentina) (n=79).
  
  Positive (Serum) Panel: Adult sheep from the Chubut Province, each experimentally infected per os with 2,000 E. granulosus s.l. eggs in May 2013, necropsied two years later in       2015. Live cysts (from 2 to 249) larger than 10 mm were detected in all animals, demonstrating E. granulosus s.l. infection (n=36).
  
  Other Parasites (Cross-Reactive Sera): Sera from sheep naturally infected with Taenia hydatigena, Thysanosoma actinioides and Fasciola hepatica were collected from Río Negro         Province (n=20).
  
  (Laboratory) Positive control: control positive read in each plate.
  
  (Laboratory) Negative control: control negative read in each plate.
  
  (Laboratory) Control without Ag: control no antigen read in each plate.
 
-----
DataFig3.csv contains the IgG Optical Density data on the Humoral Response Kinetics experiment.

In this experiment, six-month old female sheep (n=5) were each experimentally infected per os with 2,000 E. granulosus s.l. eggs. Sera were collected by obtaining blood samples every 7 to 15 days for 49 weeks for investigation of the temporal kinetics of IgG antibody response to the rAg8/2 antigen measured as optical density (OD) at 405nm.

Headings in the file are as follows:

  Week: Experimental week number post infection.
  
  Date: Date where the sample was taken.
  
  Sheep 117, 130, 131, 133, 134: IgG Optical Density for each of those five animals during the experiment.
   
-----  
Fig2 is the ilustration (boxplot) generated from DataFig2.csv
Figure Caption: Box plots of IgG Optical Density (OD)405nm from sheep sera: lambs under 3 months of age from a CE-free area (Negative Serum Panel, n=79), adults experimentally infected with positive necropsy (Positive Serum Panel, n=36), and animals with other infections (Cross-reactive Sera, n=20). The solid black horizontal line within the boxes is the median; the lower and upper borders are, respectively, the 1st (Q1) and 3rd (Q3) quartiles; the vertical bars indicate the ‘minimum’ and ‘maximum’ values, calculated as Q1–1.5 × IQR (interquartile range) and Q1+1.5 × IQR, respectively. The open circles represent the outliers. Laboratory (positive, negative and no-antigen) controls are also presented to the right of the vertical dotted line.

-----
Fig3 is the ilustration (plot) generated from DataFig3.csv
Figure Caption: Average Optical Density (OD)405nm of antibody levels against rAg8/2 in serum samples from sheep experimentally infected with 2,000 E. granulosus s.l. eggs (n=5) plotted against time post infection (in weeks) over 49 weeks. The error bars are the standard errors of the means (SEM).

-----
ScriptFigures.R contains the code to generate the figures.

