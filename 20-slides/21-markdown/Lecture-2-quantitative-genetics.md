---
theme: beige
css: css/custom.css
---
<!-- .slide: data-auto-animate -->
## Inheritance of complex traits
![[20250515-Lecture-2-quantitative-traits-human-height.png|700]]

---
<!-- .slide: data-auto-animate -->
## Inheritance of complex traits
![[20250515-Lecture-2-quantitative-traits-Yao-Min.png|600]][^1]

[^1]: https://artpictures.club/autumn-2023.html

---
<!-- .slide: data-auto-animate -->
## Quantitative Genetics
> [!question] What does it study and what it doesn't?

+ Inheritance of quantitative traits and how they vary in a population

---
<!-- .slide: data-auto-animate -->
## Quantitative Genetics
- Many traits have ==continuous variations==. These are known as ==quantitative traits==.
+ Name some quantitative traits
+ Name examples of Mendelian traits (binary or discontinuous)

note:
+ pea color
+ In human: ability to taste phenylthiocarbamide, albinism, blood type etc.

---
<!-- .slide: data-auto-animate -->
### Is quantitative trait compatible with Mendelian Genetics?
- When Mendelian genetics was rediscovered in the early 1900s, emphasis was placed on one to three loci segregating, creating discrete phenotypic categories. ==seems incompatible with continuously varying traits== (**why?**)

---
<!-- .slide: data-auto-animate -->
### Is quantitative trait compatible with Mendelian Genetics?
> [!quote] In the early 1900s, when Mendel’s laws were rediscovered, controversy arose about whether these laws were applicable to continuous traits. A group known as the _biometricians_ ... saw no evidence that such traits followed Mendel’s laws, ... concluded that Mendelian loci do not control continuous traits. 

+ This made Mendelian genetics initially an obstacle to the acceptance of Darwin's evolutionary theory.
+ ==What do you think?== <!-- element class="fragment" -->

[^1]: Introduction to Genetic Analysis, ed 11, p716

---

> [!quote] Multifactorial Hypothesis
> In the early 1900s, William Bateson and George Yule suggested that continuous traits are governed by a combination of multiple Mendelian loci, each with a small effect on the trait, and environmental factors.

+ ==How would this work?==
+ If a trait is controlled by one locus with two alleles (A/a), how many possible trait values can we obtain?
+ How about two loci? Three? Ten?

--
### Multifactorial Hypothesis: one locus
![[20250515-Lecture-2-Mendelian-one-locus.png]]

--
### Multifactorial Hypothesis: two loci, additive
![[20250515-Lecture-2-Mendelian-two-loci.png]]

--
### Multifactorial Hypothesis: ten loci, additive
![[20250515-Lecture-2-Mendelian-ten-loci.png]]
[^1]: code [here](https://github.com/hezhaobin/2024-SJTU-Popgen/blob/8b701ac1748e5c3a64b9622adb3a891106683881/10-asset/13-analyses/20250515-simulate-multifactorial-hypothesis.R)

--

### Multifactorial Hypothesis
![[20250518-Lecture-2-quant-trait-illustrate.jpg|x500]]

---
### Define the "genetic architecture" of a quantitative trait
+ **Genetic architecture**: description of all of the genetic factors that influence a trait
	+ ==property of a specific population, can vary among populations== (**why?**)
	  
	+ different alleles segregate in different pops, and different populations experience different environments.
+ **Types of traits and inheritance** (below)

note:
- Quantitative traits that are controlled by multiple genes --> "polygenic", often associated with "complex trait/disease"
+ Understanding the inheritance of complex traits is one of the most important challenges facing geneticists in the twenty-first century

--
<!-- .slide: data-auto-animate -->
### Types of traits and inheritance
- **Continuous trait** is one that can take on a potentially infinite number of states over a continuous range, e.g., human height.
  
	+ ==typically have complex inheritance== involving multiple genetic and environmental factors.
+ **Categorical trait** is one where individuals in a population can be sorted into discrete categories, e.g., purple vs white flower or tall vs short stems in Mendel's pea plants.
	+ ==typically controlled by one or two genes==, hence exhibiting simple inheritance

--
<!-- .slide: data-auto-animate -->
### Types of traits and inheritance
- **Threshold trait**: often used in medical genetics, where individuals are classified into "disease" and "non-disease" groups, e.g., diabetes
  
	+ having multiple genetic and environmental factors
	  
	+ individuals who have a certain number of risk factors combined exceed a threshold and develop the disease ("buffering" hypothesis)
+ **Meristic trait**, or "counting trait", can take on a number of discrete values.
 
---

### Statistical description of a quantitative trait

**Mean**: the arithmetic average of a set of data

$\bar{X}=\dfrac{\sum{X_i}}{n}$

**Variance** is a measure of the deviation from the mean

$\sigma_X^2=E[(X-\mu)^2]=E[X^2]-E[X]^2$

$\sigma_X^2=\frac{1}{n}\sum{(X_i-\bar{X})^2}$

$s_X^2=\frac{1}{n-1}\sum{(X_i-\bar{X})^2}$


---

### More on Mean and Variance
- population mean, sample mean, expectation of random variable
+ We have a binomially distributed random variable $X\sim B(n,p)$
  
	+ what is its mean, variance?
+ What's the relationship and difference between sample variance, sample standard deviation (SD) and standard error of the mean (SEM)?

---

### Normal distribution
<split left="1" right="2" gap="1" align="top">
![[20250519-IntroGenetAnal-19-2 1.png|100]]

- $X \sim N(\mu, \sigma^2)$
+ $f(x)=\frac{1}{\sqrt{2\pi\sigma^2}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$
+ Can mean and variance vary independently?
	+ is that generally true of all distributions?
</split>

note: 
- panel a: an example using height data for 660 women from the United States collected by the Centers for Disease Control and Prevention

---
<!-- .slide: data-auto-animate -->
### A simple genetic model for quantitative traits
> [!summary] **What is a (mathematical) model?**
> + simplified representation of a complex phenomenon.
> + can differ in complexity 
> 	+ $volume=f(time)$
> 	+ $volume=f(rate\times time)$
> + more complex = better?

---
<!-- .slide: data-auto-animate -->
### A simple genetic model for quantitative traits
- A simple genetic model for Yao's height
	+ 229 cm, 59 cm taller than an average man in Shanghai
	+ $X=\bar{X}+g+e$
	+ $x=g+e=59 cm$
	+ how to estimate $g$ and $e$?

---
<!-- .slide: data-auto-animate -->
### A simple genetic model for quantitative traits
![[20250520-IntroGenetAnal-table-19-2-raw.png]]

---
### A simple genetic model for quantitative traits
![[20250520-IntroGenetAnal-table-19-2-annotated.png]]

---
![[20250520-IntroGenetAnal-table-19-2-annotated.png]]

- $X=\bar{X}+g+e$, 
+ $62=70-6-2$
+ How to calculate $V_X$, $V_g$ and _$V_e$?

---
### Genetic and Environment Variances
- Let $x=X-\bar{X}=g+e$
+ $V[x]=E[x^2]-E[x]^2=E[(g+e)^2]+0$
+ $V[x]=E[g^2+e^2+2ge]=V_g+V_e+2COV_{ge}$
+ What if genetic and environmental factors are not independent?
+ Introduce **Covariance**

---
## Covariance
<split left="1" right="2">
![[20250520-Lecture-2-quant-genet-covariance.png|x400]][^1]

- $cov(X,Y)=E[(X-E[X])(Y-E[Y])]$
+ $cov(X,Y)=E[XY]-E[X]E[Y]$
+  To estimate from the data
	+ $cov(X,Y)=\frac{1}{n}\sum\limits_{i}(X_i-\bar{X})(Y_i-\bar{Y})$
	+ $cov(X,Y)=\frac{1}{n}\sum\limits_{i}(x_i y_i)$
+ Now, back to $Var(X)$
	+ $Var(X)=Var(g+e)=E[(g+e)^2]$
	+ $Var(X)=E[g^2]+E[e^2]+2E[ge]$
	+ $Var(X)=V_g+V_e+2COV_{g,e}$
</split>

[^1]: By Cmglee - Own work, CC BY-SA 4.0, [link](https://commons.wikimedia.org/w/index.php?curid=90452334)

---
<!-- .slide: data-auto-animate -->
### Correlation between traits
- Statistically, **correlation**, or **dependence**, is any statistical non-independent relationship between two random variables.
	+ although "correlation" may indicate any type of relationship, a _linear relationship_ is often implied.
+ There are many ways to measure the strength of correlation. The most common one is the **Pearson's correlation coefficient**, often written as $\rho$
	+ $\rho_{X,Y}=\dfrac{cov(X,Y)}{\sigma_X \sigma_Y}=\dfrac{E[(X-E[X])(Y-E[Y])]}{\sqrt{V_X V_Y}}$
	+ "normalized covariance", independent of the variance scales
	+ if $g$ and $e$ are correlated, we cannot use $V_X=V_g+V_e$
--
### What can and can't Pearson's correlation coefficient tell you?

![[20250520-Lecture-2-quant-genet-correlation.png]]

[^1]: By DenisBoigelot, original uploader was Imagecreator - Owggggn work, original uploader was Imagecreator, CC0, [link](https://commons.wikimedia.org/w/index.php?curid=15165296)

---
<!-- .slide: data-auto-animate -->
### Broad-sense Heritability
- How much of the variation in a population is due to genetic factors and how much to environmental factors?
+ Define **broad-sense heritability ($H^2$)**: 
	+ $H^2=\dfrac{V_g}{V_X}$
	+ "broad sense" because it encompasses several ways by which genes contribute to variation, including **additive** and **epistatic** effects.
+ How to estimate broad-sense heritability?
---
<!-- .slide: data-auto-animate -->
### Broad-sense Heritability
- In experimental model organisms, one can estimate $H^2$ using **inbred lines**. By rearing many genetically identical individuals from each inbred line in randomly assigned environments, one can tease apart the genetic vs environmental variance.
+ In humans, one can use **twin studies** to estimate broad sense heritability.

---
![[20250520-IntroGenetAnal-table-19-2-raw.png]]

+ **Experiment I**
	+ $V_g=12.0$, $V_X=14.67$ (unit: days^2), what is $H^2$?
+ **Experiment II**
	+ $V_g=12.0$, $V_e=24$ (unit: days^2), what is $H^2$?
+ Same inbred lines, different $H^2$, ==why==?

---
<!-- .slide: data-auto-animate -->
### Measuring heritability in humans using twin studies
- In twin studies, one uses sets of identical twins who were separated shortly after birth and reared apart by unrelated adoptive parents.
+ We have many (n) sets of twins: 
	+ $(X_1'\, X_1''), (X_2'\, X_2'')...(X_n'\, X_n'')$
+ We can express the phenotypic deviations for one set of twins as
	+ $x'=g+e'$ and $x''=g+e''$
---
<!-- .slide: data-auto-animate -->
### Measuring heritability in humans using twin studies
- $cov(x', x'')=E[x'x'']=E[(g+e')(g+e'')]$
+ $cov(x', x'')=E[g^2]+E[ge']+E[ge'']+E[e'e'']$
+ $cov(x', x'')=E[g^2]+0=V_g$
+ $H^2=\frac{V_g}{V_x}=\frac{cov(x',x'')}{V_x}=\frac{cov(x',x'')}{\sqrt{V_{x'}V_{x''}}}=r_{x',x''}$
+ $H^2$ ==is equivalent to the correlation between (monozygotic) twins==.

note:
+ $E[g^2]=V_g$
+ $E[ge']=E[ge'']=0$, (no correlation between genotype and environment)
+ $E[e'e'']=0$ as the twins are randomly assigned to families;
+ Hence, $cov(x', x'')=V_g$

---
<grid drag="50 80" drop="1 1" align="top">
<table>
    <tr>
        <td></td>
        <td>Twin</td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>X&#39;</td>
        <td>X&#39;&#39;</td>
    </tr>
    <tr>
        <td>1</td>
        <td>100</td>
        <td>110</td>
    </tr>
    <tr>
        <td>2</td>
        <td>125</td>
        <td>118</td>
    </tr>
    <tr>
        <td>3</td>
        <td>97</td>
        <td>90</td>
    </tr>
    <tr>
        <td>4</td>
        <td>92</td>
        <td>104</td>
    </tr>
    <tr>
        <td>5</td>
        <td>86</td>
        <td>89</td>
    </tr>
</table>
</grid>

<grid drag="50 10" drop="1 75" align="top">
$H^2=\frac{119.2}{154.3}=0.77$
</grid>

<grid drag="50 100" drop="-1 1">
![[20250521-IntroGenetAnal-table-19-4.png|400]]
</grid>

---
<!-- .slide: data-auto-animate -->
## Narrow-Sense Heritability

> [!question] Why do we need another measure of heritability?
> + In diploid populations, parents pass on alleles or genotypes?
> + What is dominance? epistasis? Are they transmitted from parents to offspring?

+ **Additive Genetic Variance**
	+ the "additive effect" of an allele is defined as its **average effect** when it is paired with random alleles at its own locus and expressed across all possible genetic backgrounds (all possible alleles at other loci) in the population

---
<!-- .slide: data-auto-animate -->
## Narrow-Sense Heritability
- $V_X=V_a+V_d+V_i+V_e$
  
	can get more complex with **G x E** interactions
+ $h^2=\dfrac{V_a}{V_X}$
  
	useful because it predicts how well a trait responds to selection (for breeders, and also in agriculture and conservation) <!-- element class="fragment" -->
	
	Can be estimated using parent-offspring correlation or half-sibs. <!-- element class="fragment" -->
	
	$h^2=\dfrac{V_a}{V_X}=\dfrac{2COV_{P,O}}{V_X}$ <!-- element class="fragment" -->

---

<!-- .slide: data-auto-animate -->
## QTL mapping
![[20260603-IntroGenetAnal-19-12.png]]
[^1]

[^1]: Introduction to Genetic Analysis, ed 11, Fig. 19-12
---
<!-- .slide: data-auto-animate -->
## QTL Mapping
![[20260603-IntroGenetAnal-table-19-6.png]][^1]

[^1]: Introduction to Genetic Analysis, ed 11, Table 19-6

---

<!-- .slide: data-auto-animate -->
## QTL Mapping
<split left="1" right="2">
<div>
![[20260603-IntroGenetAnal-19-13.png]]

Introduction to Genetic Analysis, ed 11, Fig. 19-13
</div>

- $odds=\dfrac{\text{Prob(data|QTL)}}{\text{Prob(data|no QTL})}$
+ $\text{Prob(data|QTL)}=0.1$
+ $\text{Prob(data|no QTL)}=0.001$
+ $odds=0.1/0.001=100$
+ $\log_{10}{odds}=2.0$ -- **"LOD" score**

</split>

---
<!-- .slide: data-auto-animate -->
## QTL Mapping
![[20260603-IntroGenetAnal-19-14.png]] 
[^1]

[^1]: Introduction to Genetic Analysis, ed 11, Fig. 19-14

---
<!-- .slide: data-auto-animate -->

> [!quote] GWAS 
> Genome-wide association studies (GWAS) test hundreds of thousands of genetic variants across many genomes to find those statistically associated with a specific trait or disease. ...

Uffelmann _et al._ 2021 Nat Rev Methods Primers

---
> [!warning] GWAS
> If you have read a news report recently announcing that researchers have identified a susceptibility gene for autism, diabetes, hypertension, or some other disorder, there is an excellent chance that the gene was discovered using the technique

Introduction to Genetic Analysis, ed 11, p749

---
> [!question] How does GWAS relate to and differ from QTL?
> + Both are aimed at discovering genetic basis for traits.
> + QTL (most commonly) tests two parental genotypes (four alleles) while GWAS tests _many_ alleles in a population.
> + QTL involves controlled cross; GWAS relies on historical recombination and LD.
> + One exert much more control in QTL than in GWAS, which can be plagued by population structure, selection, non-genetic factors etc.

---
 ![[20260603-IntroGenetAnal-19-19.png]]
 [^1]

[^1]: Introduction to Genetic Analysis, ed 11, Fig. 19-19