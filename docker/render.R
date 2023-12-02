print("Rendering LearnR Rmd-files")

df<-read.table("render.txt")
sapply(df$V1, function(x){rmarkdown::render(x)})
