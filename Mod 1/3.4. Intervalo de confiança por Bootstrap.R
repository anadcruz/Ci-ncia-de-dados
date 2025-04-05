
#DISTRIBUIÇÃO DAS MÉDIAS DO PREÇO D CAFÉ:

for(i in 1000){
    reamostra <- sample(dados$Preco_Cafe,size = 20,replace = T)
    medias[i]<-mean(reamostra)
}
#vai repetir 1000 vezes com uma amostra de tamanho 20 elementos, com reposição ( replace = T(true))
#calcula a media e guarda em medias[i]

# dEPOIS de fzr a distribuião das médias, vou ordenar do menor para o maior, e dps pegar os percentir:

#intervalo de 95% de confiança:
>quantile(medias,probs = c(0.025,0.975))