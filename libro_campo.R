# Libro de campo: lechuga
# Autora: Karol Mirely Jiménez Saavedra
# Diseño factorial 2 x 2 en DBCA
# Factor A: variedad (V1 y V2)
# Factor B: compost (sin compost y con compost)
# Bloques: 3
# Total: 12 unidades experimentales

library(inti)
# Definir los dos factores
factores <- list(
  variedad = c("V1", "V2"),
  compost = c("Sin_compost", "Con_compost")
)

# Generar el diseño factorial en 3 bloques
diseno <- design_repblock(
  nfactors = 2,
  factors = factores,
  type = "rcbd",
  rep = 3,
  seed = 123
)

# Obtener y visualizar el libro de campo
libro <- diseno$fieldbook
View(libro)

# Espacios para registrar datos de campo
libro$peso_parcela_g <- NA_real_
libro$observaciones <- ""

# Exportar el libro de campo
write.csv(
  libro,
  file = "libro_campo_lechuga.csv",
  row.names = FALSE,
  na = ""
)

View(libro)