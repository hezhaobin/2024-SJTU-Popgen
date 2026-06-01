## 2026-05-28, time to fixation for neutral allele
- 4N generations
- students wanted to know why
- refs
	- Coop Population and Quantitative Genetics
	- John Wakeley book [chapter 3](https://people.eecs.berkeley.edu/~jordan/sail/readings/wakeley-chapter3.pdf)
	- Trevor Bedford short course on coalescence [slides](https://bedford.io/projects/sismid/sequences/coalescent.html#/)
	- My own derivation on paper
- key idea:
	- $P(T_2=t)=p(1-p)^{t-1}$
	- $\mathbb{E}[T_2]=2N$, because $T_2$ is geometrically distributed with $p=\frac{1}{2N}$
	- when generalizing to $T_i$ for a sample of i alleles in a population of size N (diploids), one needs to make the assumption that $i \ll N$. Under this assumption, we can safely ignore multi-mergers (a single coalescence of three or more alleles, or more than one coalescence events in a single generation).
	- Under the above assumptions, we can roughly think of the probability of a pair of alleles coalescing in a generation as $\binom{i}{2}\frac{1}{2N}$, where the first term comes from having so many pairs of alleles, each of which can independently coalesce (but still at a very small probability so that multi-mergers can be ignored)
	- $\mathbb{E}[T_i]=2N/\binom{i}{2}$, and $T_i's$ are i.i.d.
	- $\mathbb{E}[T_{MRCA}^{(n)}]=\mathbb{E}[\sum\limits_{i=2}^{n}T_i]=\sum\limits_{i=2}^{n}\mathbb{E}[T_i]=\sum\limits_{i=2}^{n}2N/\binom{i}{2}$
	- After some rearrangement, one can show that the above becomes $\mathbb{E}[T_{MRCA}^{(n)}]=4N(1-\frac{1}{n})$
	- Now is the a bit handwaving part: we let n approach 2N to get the time to fixation. Clearly, when n is no longer much smaller than N, we can not ignore the multi-merger events. That is, coalescence would happen more quickly closer to present. But these terms make very little contribution to the total anyways, and the answer is in the end a very good approximation.
## 2026-05-27, week 1 discussion, Novembre 2008
- 李勉冲
	- PCA, 
- 李冠廷
	- 生物应用
- 龙鹏宇
	- 数据的获取与预处理
	- what if we don't exclude individuals whose grand-parents are not in the same region? apply PCA to Cambridge, UK? to Shanghai?
- 陈梓奕
	- recover European map
	- does this result mean human populations are genetically distinct, forming "genetically" unique groups?
- 沈思辰
	- fine-scale
- 张宇涵
	- spatial assignment
- 李枫华
	- challenge of population stratification go GWAS
- 李雨函
	- is there a cost of doing relatedness correction?
- 林灏宇
	- 
## 2026-05-24, narrow-sense heritability
> [!quote] Intro to Genetic Analysis, p731
   Even when there is genetic variation in a population as measured by broad-sense heritability, it may not be transmissible to the next generation in a ==predictable== way. ...
>  
> Whereas additive variation is ==predictably== transmitted from parent to offspring, dominance variation is not.

- the keyword is "predictably"
- 
## 2026-05-22, reviewing last year material
- I didn't take notes on how my teaching went last year. I prepared materials for the Q-gen chapter, but I don't think I manage to deliver them.
- Trying to take some notes this year for future reference.