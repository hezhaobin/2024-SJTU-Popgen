# title: generate figures to illustrate the multi-factorial hypothesis for quantitative traits
# author: Bin He, with help from DeepSeek
# date: 2025-05-14

# load libraries and set theme
library(tidyverse)
theme_set(theme_minimal(base_size = 16))
img_prefix = "../../10-asset/11-attachment/20250515-Lecture-2-"

# 1. One locus
# Simulate single locus (A/a) with incomplete dominance
genotypes <- tibble(
  genotype = c("AA", "Aa", "aa"),
  phenotype = c(2, 1, 0),  # Phenotypic values (e.g., flower color intensity)
  freq = c(0.25, 0.5, 0.25)  # Hardy-Weinberg frequencies
)

# Plot
ggplot(genotypes, aes(x = phenotype, y = freq, fill = genotype)) +
  geom_col(width = 0.6) +
  labs(title = "Single Locus (Co-dominance)",
       x = "Number of 'High' Alleles (0-2)", y = "Frequency") +
  scale_x_continuous(breaks = c(0, 1, 2)) +
  scale_fill_brewer(palette = "Set2")

ggsave(paste0(img_prefix, "Mendelian-one-locus.png"), width = 8, height = 4)

# Two-loci
# Simulate two additive loci (A/a + B/b)
genotypes <- expand.grid(
  Male = c("AB", "Ab", "aB", "ab"),
  Female = c("AB", "Ab", "aB", "ab")
)
phenotypes <- sapply(genotypes, \(x) str_count(x, "[A-Z]")) |>
  as_tibble() |>
  mutate(total = Male + Female) # Additive effect
pheno_freq <- as.data.frame(table(phenotypes$total))
colnames(pheno_freq) <- c("phenotype", "frequency")
pheno_freq$frequency <- pheno_freq$frequency / sum(pheno_freq$frequency)  # Normalize

# Plot
ggplot(pheno_freq, aes(x = as.numeric(phenotype), y = frequency)) +
  geom_col(width = 0.6) +
  labs(title = "Two Additive Loci (Co-dominance)",
       x = "Number of 'High' Alleles (0-4)", y = "Frequency") +
  scale_x_continuous(breaks = 0:4)

ggsave(paste0(img_prefix, "Mendelian-two-loci.png"), width = 8, height = 4)

# Simulate 10 loci + environmental noise
set.seed(123)
n_loci <- 10
n_individuals <- 10000
phenotype <- rowSums(
  matrix(sample(c(0, 1), n_individuals * n_loci * 2, replace = TRUE),
         # * 2 because each locus has two alleles, with equal prob to be 0/1
         ncol = n_loci*2)
)

# Plot
tmp <- hist(phenotype, breaks = seq(0, 20, 1), plot = F)
histogram = with(tmp, tibble(x = mids, y = counts, density))
ggplot(histogram, aes(x, density)) +
  geom_col(
    fill = "gray80", color = "gray10", width = 1
  ) +
  labs(title = "Polygenic Trait (10 Additive Loci, Co-dominant)",
       x = "Number of 'High' Alleles (0-20)", y = "Frequency")

ggsave(paste0(img_prefix, "Mendelian-ten-loci.png"), width = 8, height = 4)
