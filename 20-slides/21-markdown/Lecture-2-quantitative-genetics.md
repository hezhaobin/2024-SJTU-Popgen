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
[^1]: code [here](https://github.com/hezhaobin/2024-SJTU-Popgen/blob/8b701ac1748e5c3a64b9622adb3a891106683881/10-asset/13-analyses/20250515-simulate-multifactorial-hypothesis.R)

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
+ $f(x)=\frac{1}{\sqrt{2\pi\sigma^2}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$
+ Can mean and variance vary independently?
	+ is that generally true of all distributions?
</split>

note: 
- panel a: an example using height data for 660 women from the United States collected by the Centers for Disease Control and Prevention

---
<!-- .slide: data-auto-animate -->
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

---
<!-- .slide: data-auto-animate -->
### A simple genetic model for quantitative traits
![[20250520-IntroGenetAnal-table-19-2-raw.png]]

---
### A simple genetic model for quantitative traits
![[20250520-IntroGenetAnal-table-19-2-annotated.png]]
---
![[20250520-IntroGenetAnal-table-19-2-annotated.png]]

- $X=\bar{X}+g+e$
+ $62=70-6-2$

---
### Genetic and Environment Variances
- $Var(X+Y) = Var(X)+Var(Y)$, when is this true?
+ $Var(X)=Var(\bar{X}+g+e)=0+V_g+V_e$
+ What if genetic and environmental factors are not independent?
+ Introduct **Covariance**

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
	+ $Var(X)=V_g+V_e+COV_{g,e}$
</split>

[^1]: By Cmglee - Own work, CC BY-SA 4.0, [link](https://commons.wikimedia.org/w/index.php?curid=90452334)

---
<!-- .slide: data-auto-animate -->
### Correlation between traits
- Statistically, **correlation**, or **dependence**, is any statistical non-independent relationship between two random variables.
	+ although "correlation" may indicate any type of relationship, a _linear relationship_ is often implied.
+ There are many ways to measure the strength of correlation. The most common one is the **Pearson's correlation coefficient**, often written as $\rho$
	+ $\rho_{X,Y}=\frac{cov(X,Y)}{\sigma_X \sigma_Y}=\frac{cov(X,Y)}{\sqrt{V_X V_Y}}=\frac{E[X-\mu_X]E[Y-\mu_Y]}{\sqrt{V_X V_Y}}$
	+ "normalized covariance", independent of the variance scales
	+ if $g$ and $e$ are correlated, we cannot use $V_X=V_g+V_e$
--
### What can and can't Pearson's correlation coefficient tell you?

![[20250520-Lecture-2-quant-genet-correlation.png]]

[^1]: By DenisBoigelot, original uploader was Imagecreator - Own work, original uploader was Imagecreator, CC0, [link](https://commons.wikimedia.org/w/index.php?curid=15165296)

---
<!-- .slide: data-auto-animate -->
### Broad-sense Heritability
- How much of the variation in a population is due to genetic factors and how much to environmental factors?
+ Define **broad-sense heritability ($H^2$)**: 
	+ $H^2=\frac{V_g}{V_X}$
	+ "broad sense" because it encompasses several ways by which genes contribute to variation, including **additive** and **epistatic** effects.
+ How to estimate broad-sense heritability?
---
<!-- .slide: data-auto-animate -->
### Broad-sense Heritability
- In experimental model organisms, one can estimate $H^2$ using **inbred lines**. By rearing many genetically identical individuals from each inbred line in randomly assigned environments, one can tease apart the genetic vs environmental variance.
+ In humans, one can use **twin studies** to estimate broad sense heritability.
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
	+ $E[g^2]=V_g$
	+ $E[ge']=E[ge'']=0$, (no correlation between genotype and environment)
	+ $E[e'e'']=0$ as the twins are randomly assigned to families;
	+ Hence, $cov(x', x'')=V_g$
+ $H^2=\frac{V_g}{V_X}=\frac{cov(x',x'')}{V_X}=\frac{cov(x',x'')}{\sqrt{V_{X'}V_{X''}}}=r_{X',X''}$
	+ $H^2$==is equivalent to the correlation between (monozygotic) twins==.
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
![[20250521-IntroGenetAnal-table-19-4.png|350]]
</grid>
