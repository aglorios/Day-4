senate<- nyt_senate
install.packages(devtools)
library(devtools)
install_github("govdat","cocteau")
library(govdat)
library(help=govdat)
for(i in 1:nrow(senate)){
	tmp = sll_cw_phrases("legistlator", senate$id[i], key = "6a0998f8ba3c4a8b888ef28b20975174")
	print(paste(senate$last_name[i], tmp$ngram[1]))
}
sll_cw_phrases("legislator","B001261", key="6a0998f8ba3c4a8b888ef28b20975174")
head(sll_cw_phrases("legislator", "B001261", n=3, key="6a0998f8ba3c4a8b888ef28b20975174"))