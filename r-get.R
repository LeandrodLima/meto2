library(Rfacebook) # usado para extrair dados do facebook
library(tidyverse) # pq nao da pra viver sem
library(ggExtra)
library(magrittr) # <3
library(lubridate)
library(stringr) # essencial para trabalhar com textos
library(tidytext) # um dos melhores pacotes para text mining
library(lexiconPT)
df_comments <- read.csv("reclamacoes-avaliadas-20180703.csv", header = TRUE, fileEncoding = "UTF-8")
glimpse(df_comments)
#df_comments <- lapply(tabela_reclamacao[["reclamacao"]],as.table.default)

#df_comments <- a[
#########lexiconPT##########
data("oplexicon_v3.0")
data("sentiLex_lem_PT02")

op30 <- oplexicon_v3.0
sent <- sentiLex_lem_PT02

glimpse(op30)


glimpse(sent)

# criar ID unica para cada comentario
df_comments %<>% mutate(comment_id = row_number())
# usar funçao do tidytext para criar uma linha para cada palavra de um comentario
df_comments_unnested <- df_comments %>% unnest_tokens(term, reclamacao)

df_comments_unnested %>%
  select(comment_id, term) %>%
  head(20)




#pega do arquivo e cria a table
##teste <- read.csv("reclamacoes-avaliadas-20180703.csv")
tabela_reclamacao <- read.csv("reclamacoes-avaliadas-20180703.csv", header = TRUE, fileEncoding = "UTF-8")
#salva uma table de reclamacao
aux <- 1:length(tabela_reclamacao[["reclamacao"]])
a <- lapply(tabela_reclamacao[["reclamacao"]], as.array)
df_comments_unnested %<>% filter(between(comment_sentiment_op, -10, 10))
for (i in aux) {
  d <- a[[i]]
  f = gsub("[\r\n]", "", a[[i]])
}


a <- lapply(fruit[["reclamacao"]])
length(tabela_reclamacao[["reclamacao"]])


#aqui

fruit<- read.csv("20171217-reclamacoes-raw.csv", header = TRUE, fileEncoding = "UTF-8")
a <- lapply(fruit[["reclamacao"]], as.array)

f = gsub("[\r\n]", "", a[[318]])
f

