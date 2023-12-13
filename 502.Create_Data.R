# Supponiamo di creare un dataframe 'd'
# Per fare un file excel
write.csv(d, "test.csv", row.names=FALSE)
# Per fare un file di lettura
write.table(d, "test.dat", row.names=FALSE)
