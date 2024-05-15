
> [!abstract] 
> Understanding the genetic structure of human populations is of fundamental interest to medical, forensic and anthropological sciences. Advances in high-throughput genotyping technology have markedly improved our understanding of global patterns of human genetic variation and suggest the potential to use large samples to uncover variation among closely spaced populations. Here we characterize genetic variation in a sample of 3,000 European individuals genotyped at over half a million variable DNA sites in the human genome. Despite low average levels of genetic differentiation among Europeans, we find a close correspondence between genetic and geographic distances; indeed, ==a geographical map of Europe arises naturally as an efficient two-dimensional summary of genetic variation in Europeans==. The results emphasize that ==when mapping the genetic basis of a disease phenotype, spurious associations can arise if genetic structure is not properly accounted for==. In addition, the results are relevant to the prospects of genetic ancestry testing; ==an individual's DNA can be used to infer their geographic origin with surprising accuracy-often to within a few hundred kilometres.==

[^1]: Novembre, John, Toby Johnson, Katarzyna Bryc, Zoltán Kutalik, Adam R. Boyko, Adam Auton, Amit Indap, et al. 2008. “Genes Mirror Geography within Europe.” _Nature_ 456 (7218): 98–101. [https://doi.org/10.1038/nature07331](https://doi.org/10.1038/nature07331).

---
> [!question] How are the geographical location of individuals determined?

---
> [!quote] After removing SNPs with low-quality scores, we applied various stringency criteria to avoid sampling individuals from outside of Europe, to create more even sample sizes across Europe, to exclude individuals with grandparental ancestry from more than one location, and to avoid potential complications of SNPs in high linkage disequilibrium (see Methods and Supplementary Table 3).


---
> [!quote] it is not clear to what extent populations within continental regions exist as discrete genetic clusters versus as a genetic continuum,

- can you draw two "toy" haplotype networks to describe the two hypotheses?

---
> [!question]
> 1. What is the signal from the genotype (e.g., fixed difference between groups, or epigenetic information) that allows the authors to recovery the geographical map?
> 2) What's the dimension of that information? What did the authors do in order to construct a 2D map?

note: 
- the raw data is a genotype matrix at ~500,000 sites for 3000 individuals, i.e., 3000x500000 matrix.
- each individual can be viewed as a dot in the 500,000 dimensional space.
- finding the eigenvectors and eigenvalues of this matrix allows one to identify combinations of those sites that maximally explain the genetic variation across individuals.
- (Euclidean) distance between individuals in the genotype space describe their genetic distance, which corresponds to their (current) geographical distance

---
note: 
> [!question]
> Conversely, why would people's geographical location provide "an efficient two-dimensional summary" of genetic variation in Europeans?

---
> [!quote]
> The overall geographic pattern in Fig. 1a fits the theoretical expectation for models in which genetic similarity decays with distance in a two-dimensional habitat, as opposed to expectations for models involving discrete well-differentiated populations. Indeed, in these data genetic correlation between pairs of individuals tends to decay with distance (Fig. 1c). For spatially structured data, theory predicts the top two principal components (PCs 1 and 2) to be correlated with perpendicular geographic axes9, which is what we observe (r2 5 0.71 for PC1 versus latitude; r2 5 0.72 for PC2 versus longitude; after rotation, r2 5 0.77 for ‘north–south’ in PC-space versus latitude, and r2 5 0.78 for ‘east–west’ in PC-space versus longitude). In contrast, when there are K discrete populations sampled, one expects discrete clusters to be separated out along K 2 1 of the top PCs8. In our analysis, neither the first two PCs, nor subsequent PCs, separate clusters as one would expect for a set of discrete, welldifferentiated populations (see ref. 8 for examples).

---
![[20240515-Novembre-2008-sfig4.png]]
Supplementary figure 4

---
> [!question] Homework (optional)
> Has such methods been applied to Asian countries, including China? If you can find such literature, please share in the WeChat group. Hint: look for papers that cited the paper we just read.


---
> [!question] Bonus discussion question:
> What is a gene?

