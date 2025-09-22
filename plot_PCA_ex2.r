datasetA="datasetPCA_filt.proj.eigenvectors"

resA = read.table(datasetA, col.names=c("Sample", "PC1", "PC2", "PC3", "PC4", "PC5", "PC6", "PC7", "PC8", "PC9", "PC10", "Pop"))

popGroups=read.table("ind_pop_PCA_ex2.tab", col.names=c("Sample", "Population","Color","Point"))

mergedA = merge(resA, popGroups, by="Sample")

pdf("PCA_projected.pdf")

plot(mergedA$PC1, mergedA$PC2, col=mergedA$Color, pch=mergedA$Point)

dev.off()

datasetA="datasetPCA_filt.regular.eigenvectors"

resA = read.table(datasetA, col.names=c("Sample", "PC1", "PC2", "PC3", "PC4", "PC5", "PC6", "PC7", "PC8", "PC9", "PC10", "Pop"))

popGroups=read.table("ind_pop_PCA_ex2.tab", col.names=c("Sample", "Population","Color","Point"))

mergedA = merge(resA, popGroups, by="Sample")

pdf("PCA_regular.pdf")

plot(mergedA$PC1, mergedA$PC2, col=mergedA$Color, pch=mergedA$Point)

dev.off()