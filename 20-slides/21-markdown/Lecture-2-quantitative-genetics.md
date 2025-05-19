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
## Quantitative Genetics
- Many traits have ==continuous variations==. These are known as ==quantitative traits==.
+ Example:
	+ plant height, days to maturity, seed yield, drought tolerance
+ Some examples of Mendelian traits (binary or discontinuous)
	+ pea color
	+ In human: ability to taste phenylthiocarbamide, albinism, blood type etc.

---
<!-- .slide: data-auto-animate -->
### Is quantitative trait compatible with Mendelian Genetics?
- When Mendelian genetics was rediscovered in the early 1900s, emphasis was placed on one to three loci segregating, creating discrete phenotypic categories. ==seems incompatible with continuously varying traits==

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

--
### Multifactorial Hypothesis: one locus
![[20250515-Lecture-2-Mendelian-one-locus.png]]

--
### Multifactorial Hypothesis: two loci, additive
![[20250515-Lecture-2-Mendelian-two-loci.png]]

--
### Multifactorial Hypothesis: ten loci, additive
![[20250515-Lecture-2-Mendelian-ten-loci.png]]
[^1]: code [here]()

--

### Multifactorial Hypothesis
![[20250518-Lecture-2-quant-trait-illustrate.jpg|x500]]

---
### Define the "genetic architecture" of a quantitative trait
- Quantitative traits that are controlled by multiple genes --> "polygenic", often associated with "complex trait/disease"
+ Understanding the inheritance of complex traits is one of the most important challenges facing geneticists in the twenty-first century
+ **Genetic architecture**: description of all of the genetic factors that influence a trait
	+ ==property of a specific population, can vary among populations==
	+ different alleles segregate in different pops, and different pops experience different environments.

---
<!-- .slide: data-auto-animate -->
### Types of traits and inheritance
- **Continuous trait** is one that can take on a potentially infinite number of states over a continuous range, e.g., human height.
	+ ==typically have complex inheritance== involving multiple genetic and environmental factors.
+ **Categorical trait** is one where individuals in a population can be sorted into discrete categories, e.g., purple vs white flower or tall vs short stems in Mendel's pea plants.
	+ ==typically controlled by one or two genes==, hence exhibiting simple inheritance

---
<!-- .slide: data-auto-animate -->
### Types of traits and inheritance
- **Threshold trait**: often used in medical genetics, where individuals are classified into "disease" and "non-disease" groups, e.g., diabetes
	+ having multiple genetic and environmental factors
	+ individuals who have a certain number of risk factors combined exceed a threshold and develop the disease ("buffering" hypothesis)
+ **Meristic trait**, or "counting trait", can take on a number of discrete values.
 
---

### Statistical description of a quantitative trait

**Mean**: the arithmetic average of a set of data

$\bar{X}=\frac{\sum{X_i}}{n}$

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
+ $f(x)=\frac{1}{\sqrt{2\pi\sigma^2}}e^{\frac{(x-\mu)^2}{2\sigma^2}}$
+ Can mean and variance vary independently?
	+ is that generally true of all distributions?
</split>

note: 
- panel a: an example using height data for 660 women from the United States collected by the Centers for Disease Control and Prevention

---

### A simple genetic model for quantitative traits
- What is a (mathematical) model?
	+ simplified representation of a complex phenomenon.
	+ can differ in complexity 
		+ $volume=f(time)$
		+ $volume=f(rate\times time)$
	+ more complex = better?
+ A simple genetic model for Yao's height
	+ 229 cm, 59 cm taller than an average man in Shanghai
	+ $X=\bar{X}+g+e$
	+ $x=g+e=59 cm$
	+ how to estimate $g$ and $e$?