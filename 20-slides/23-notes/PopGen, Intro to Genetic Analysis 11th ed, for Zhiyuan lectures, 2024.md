---
tags:
  - popgen
---
See [[2024 JTU Zhiyuan College Pop Gen]] for notes on the course. This file contains my reading notes for the lectures
# 2024-01-28, Genetic Analysis, Ch18
> [!note] 
> Additional references other than the textbook are listed below each section 
## Intro to popgen
_Reference_
- Graham Coop, pop gen notes, 2020
- Charlesworth, B., and D. Charlesworth. “Population Genetics from 1966 to 2016.” _Heredity_ 118, no. 1 (January 2017): 2–9. [https://doi.org/10.1038/hdy.2016.55](https://doi.org/10.1038/hdy.2016.55).

_Notes_

- Biological evolution is the change over time in the **genetic composition of a population**, which changes due to the birth and death of individuals or the migration of individuals in or out of the population.
- the individual events, like birth, death and migration in and out of a few individuals, may seem minor at the level of the population. But the accumulation of these small changes over tens, hundreds, and millions of generations are what drive the amazing diversity of life on earth.
- **Population genetics** is the study of the genetic composition of natural populations and its evolutionary causes and consequences.
	- population genetics emerged from early efforts to reconcile Mendelian genetics with Darwinian thought (W.B. Provine 2001 book).
	- every student of biology gains from understanding the basis of population and quantitative genetics, allowing them to base their studies on a solid bedrock of understanding of the processes that underpin all evolutionary change.
- Pop gen history
    ![[20240128-Charlesworth-2017-review-Fig1.png]]
## 18.1 detecting genetic variation

_Note_
- types of genetic variations: SNPs, indels, microsatellite
	- microsatellite are powerful for population genetic analysis
		1. large number of alleles
		2. high mutation rate
		3. abundant in most genomes
	- techniques: microarray, comparative genome hybridization (for CNV)
- haplotypes
	 - combination of alleles at multiple loci on the same chromosomal homolog![[20240502-IntroGenetAnal-18-4.png]]
		 - How does one draw the network map from the haplotype (alignment)?
		 - Comment on the various elements in the map, e.g., size of circles, edges
	- haplotype network: can be used to reconstruct the evolutionary history of a group of individuals, applied to study humans' history
	> [!example] human Y chromsome among Asian men
	> ![[20240502-IntroGenetAnal-18-5a.png]]
	> - Most men have a rare Y chromosome haplotype (why?)
	> ![[20240502-IntroGenetAnal-18-5b.png]]
	> - it appears that contemporary men with this haplotype are all descendants of Genghis Khan (or his male-lineage relatives)
## 18.2 Measuring genetic variation, Hardy-Weinberg
_Reference_
- Graham Coop, pop gen notes, 2020

_Note_
- **Gene pool and genotype frequencies**
	> [!important] Gene pool
	> sum total of all alleles in the breeding members of a population at a given time.

    - genotype vs allele frequencies
		- genotype frequency: AA, Aa, aa
		- allele frequency: A, a
- Measure of genetic variation
	- Fixed and segregating variations
	  ![[20240502-Coop-table-2.1.png]]
	  - how many fixed vs segregating differences are there?
	- $\pi$: nucleotide diversity
	    normalized and thus doesn't automatically grow with the sample size
	- $K$: number of segregating sites
	    grows with sample size
	- frequency spectrum
- Level of genetic variation
	- Nice figure (Figure 18-15) from M. Lynch and J. S. Conery, Science 2003![[20240204-Intro to Genetic Analysis 11th ed-fig-18-15.png]]
- **Hardy-Weinberg law**
	- assumptions:
		- mating is random with respect to the gene in question; with inbreeding, HWE will over-estimate the frequency of the recessive allele
		- absence of selection
		- absence of population structure
		- good as a null hypothesis
	- Practice:
		- Coop, p20, Q3
		- Fig. 2.6 in Coop book very nice illustration of HWE
	- Violations
		- Assortive mating
		- Isolation by distance (pop structure)
		- Inbreeding
			- if inbreeding is not by choice but simply by chance, the probability of inbreeding inversely scales with population size. Smaller populations will see increasing inbreeding over time.
- Recombination and LD
- Genetic drift and population size
- 