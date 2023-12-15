# Supponiamo di creare un dataframe 'd'
# Per fare un file excel
write.csv(d, "nome.csv", row.names=FALSE)
# Per fare un file di lettura
write.table(d, "nome.dat", row.names=FALSE)
