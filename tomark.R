
View(senate)
options("SunlightLabsKey= 6a0998f8ba3c4a8b888ef28b20975174")
options(SunlightLabsKey= "6a0998f8ba3c4a8b888ef28b20975174")
key <- getOption("SunlightLabsKey")
key <- getOption("SunlightLabsKey")
out <- sll_cg_getcommittees(id = "JSPR")
out$response$committee$members[[1]]$legislator[1:5]
?sll_cg_getcommittees
??sll_cg_getcommittees
sll_cw_phrases("drone","B001261", key="6a0998f8ba3c4a8b888ef28b20975174")
dronetimeseries<- sll_cw_timeseries("drone", key="6a0998f8ba3c4a8b888ef28b20975174")
head(dronetimeseries)
?sll_cw_phrases
dronetimeseries<- sll_cw_timeseries("drone", key="6a0998f8ba3c4a8b888ef28b20975174")
sll_cw_phrases("legislature", senate$id[i], key = "6a0998f8ba3c4a8b888ef28b20975174")
i
i = 1
senate$id[1]
sll_cw_phrases("legislature", senate$id[i], key = "6a0998f8ba3c4a8b888ef28b20975174")
sll_cw_phrases("legislator", senate$id[i], key = "6a0998f8ba3c4a8b888ef28b20975174")
sll_cw_phrases("legislator", senate$id[2], key = "6a0998f8ba3c4a8b888ef28b20975174")
sll_cw_phrases("legislator", as.character(senate$id[2]), key = "6a0998f8ba3c4a8b888ef28b20975174")
senate = read.csv("http://compute-cuj.org/data2/day1/nyt_senate.csv",as.is=TRUE)
sll_cw_phrases("legislator", senate$id[2], key = "6a0998f8ba3c4a8b888ef28b20975174")
tmp = sll_cw_phrases("legislator", senate$id[2], key = "6a0998f8ba3c4a8b888ef28b20975174")
head(tmp)
tmp = sll_cw_phrases("legislator", senate$id[2], key = "6a0998f8ba3c4a8b888ef28b20975174",n=2)
head(tmp)
View(senate)
View(senate)
tmp = sll_cw_phrases("legislator", senate$id[i], key = "6a0998f8ba3c4a8b888ef28b20975174")
tmp
senate$last_name[i]
i
senate$last_name[i]
tmp$ngram[1]
(paste(senate$last_name[i], tmp$ngram[1]))
for(i in 1:nrow(senate)){
tmp = sll_cw_phrases("legislator", senate$id[i], key = "6a0998f8ba3c4a8b888ef28b20975174")
print(paste(senate$last_name[i], tmp$ngram[1]))
}
tops = data.frame()
for(i in 1:nrow(senate)){
data = sll_cw_phrases("legislator", senate$id[i], key = "6a0998f8ba3c4a8b888ef28b20975174")
newdf = data.frame(first_name=senate$first_name[i],last_name=senate$last_name[i], word=tmp$ngram[1])
tops = rbind(tops,newdf)
}
tops
sll_cw_entity_phrases("legislator", phrase="drone", key="6a0998f8ba3c4a8b888ef28b20975174")
tmp = sll_cw_entity_phrases("legislator", phrase="drone", key="6a0998f8ba3c4a8b888ef28b20975174")
tmp
(tmp$legislator)
match(tmp$legislator,senate$id)
tmp = sll_cw_entity_phrases("legislator", phrase="drone", key="6a0998f8ba3c4a8b888ef28b20975174")
match(tmp$legislator,senate$id)
senate[78,]
house = read.csv("http://compute-cuj.org/data2/day1/nyt_house.csv",as.is=T)
congress = rbind(house,senate)
dim(house)
dim(senate)
View(house)
match(tmp$legislator,senate$id)
match(tmp$legislator,house$id)
head(tmp)
tmp$last_name = NA
tmp$first_name = NA
head(tmp)
?match
tmp = sll_cw_entity_phrases("legislator", phrase="drone", key="6a0998f8ba3c4a8b888ef28b20975174")
?merge
merge(tmp,senate,by.x="legislator",by.y="id")
merge(tmp,senate[,c("last_name","first_name","id")],by.x="legislator",by.y="id")
merge(tmp,senate[,c("last_name","first_name","id")],by.x="legislator",by.y="id",all.x=TRUE)
congnames = rbind(senate[,c("id","first_name","last_name")],house[,c("id","first_name","last_name")])
View(congnames)
merge(tmp,congnames,by.x="legislator",by.y="id",all.x=TRUE)
dat = merge(tmp,congnames,by.x="legislator",by.y="id",all.x=TRUE)
dat = dat[order(dat$count),]
head(dat)
dat = dat[order(dat$count,decreasing=TRUE),]
head(dat)
dronetimeseries<- sll_cw_timeseries("drone", bioguide_id=dat$legislator[1],key="6a0998f8ba3c4a8b888ef28b20975174")
dronetimeseries
dronetimeseries<- sll_cw_timeseries("drone", bioguide_id=dat$legislator[2],key="6a0998f8ba3c4a8b888ef28b20975174")
dronetimeseries
dronetimeseries<- sll_cw_timeseries("drone", bioguide_id=dat$legislator[3],key="6a0998f8ba3c4a8b888ef28b20975174")
dronetimeseries
dronetimeseries<- sll_cw_timeseries("drone", bioguide_id=dat$legislator[3],key="6a0998f8ba3c4a8b888ef28b20975174")
dronetimeseries = data.frame()
for(i in 1:5){}
for(i in 1:5){
data <- sll_cw_timeseries("drone", bioguide_id=dat$legislator[i],key="6a0998f8ba3c4a8b888ef28b20975174")
newdf <- data.frame(id=dat$legislator[i],day=data$day,count=data$count)
dronetimeseries = rbind(dronetimeseries,newdf)
}
View(dronetimeseries)
table(dronetimeseries$id)
library(lattice)
xyplot(count~day|id,data=dronetimeseries)
xyplot(count~day|id,data=dronetimeseries,type="h")
congnames = rbind(senate[,c("id","first_name","last_name","party")],house[,c("id","first_name","last_name","party")])
dat = merge(tmp,congnames,by.x="legislator",by.y="id",all.x=TRUE)
dat
dat = dat[order(dat$count,decreasing=TRUE),]
head(dat)
options()
?sll_cw_text
sll_cw_text("drone",bioguide_id="K000336")
text = sll_cw_text("drone",bioguide_id="K000336")
names(text)
dat = dat[order(dat$count,decreasing=TRUE),]
head(dat)
names(text)
text$speaker_first
text$speaker_last
text$speaking
text$speaking[1]
text$speaking[1]
text$speaking[2]
text$speaking = as.character(text$speaking)
text$speaking[2]
dronetimeseries = data.frame()
for(i in 1:nrow(dat)){
data <- sll_cw_timeseries("drone", bioguide_id=dat$legislator[i],key="6a0998f8ba3c4a8b888ef28b20975174")
newdf <- data.frame(id=dat$legislator[i],day=data$day,count=data$count)
dronetimeseries = rbind(dronetimeseries,newdf)
}
xyplot(count~day|id,data=dronetimeseries,type="h")
xyplot(count~day|id,data=dronetimeseries,type="h")
dotchart(id~day,data=dronetimeseries)
dotchart(day~id,data=dronetimeseries)
?dotchart
dotchart(day,id,data=dronetimeseries)
dotchart(dronetimeseries$day,dronetimeseries$id)
VADeaths
?dotplot
dotplot(day~id,data=dronetimeseries)
dotplot(id~day,data=dronetimeseries)
table(dronetimeseries$day)
sort(table(dronetimeseries$day))
dronetimeseries[order(dronetimeseries$day),]
aggregate(count,day,data=dronetimeseries)
aggregate(dronetimeseries$count,dronetimeseries$day)
aggregate(dronetimeseries$count,dronetimeseries$day,sum)
aggregate(count~day,sum)
aggregate(count~day,sum,data=dronetimeseries)
dronetimeseries[order(dronetimeseries$day),]
text = sll_cw_text("drone",bioguide_id="G000121")
text$speaking
text = sll_cw_text("drone",bioguide_id="C000705")
text$speaking
text = sll_cw_text("drone",bioguide_id="N000171")
text$speaking
text = sll_cw_text("drone",bioguide_id="N000171")
as.character(text$speaking)
write(text$speaking,"test.txt")
b = text$speaking
fix(b)
rm(b)
View(text)
dataN000171 <- sll_cw_timeseries("drone", bioguide_id=N000171,key="6a0998f8ba3c4a8b888ef28b20975174")
