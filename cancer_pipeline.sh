#!/bin/bash

echo "Cancer Genomics Analysis Pipeline"

echo "Step 1: Gene mutation counts"

tail -n +2 ../data/tumor_mutations.txt | cut -d " " -f2 | sort | uniq -c > ../results/gene_counts.txt

echo "Step 2: Mutation types"

tail -n +2 ../data/tumor_mutations.txt | cut -d " " -f4 | sort | uniq -c > ../results/mutation_types.txt

echo "Step 3: Mutation spectrum"

tail -n +2 ../data/tumor_mutations.txt | cut -d " " -f5 | sort | uniq -c > ../results/mutation_spectrum.txt

echo "Step 4: Chromosome distribution"

tail -n +2 ../data/tumor_mutations.txt | cut -d " " -f3 | sort | uniq -c > ../results/chromosome_distribution.txt

echo "Analysis completed"
