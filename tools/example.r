library(tidyverse)
neko <- c(
    "吾輩は猫である。名前はまだ無い。",
    "どこで生まれたか頓と見當がつかぬ。何ても暗薄いじめじめした所でニャーゝ泣いて居た事丈は記憶して居る。吾輩はこゝで始めて人間といふものを見た。然もあとで聞くとそれは書生といふ人間で一番獰惡な種族であつたさうだ。此書生といふのは時々我々を捕へて煮て食ふといふ話である。然し其當時は何といふ考もなかつたから別段恐しいとも思はなかつた。但彼の掌に載せられてスーと持ち上げられた時何だかフハフハした感じが有つた許りである。掌の上で少し落ち付いて書生の顏を見たが所謂人間といふものゝ見始であらう。此の時妙なものだと思つた感じが今でも殘つて居る。第一毛を以て裝飾されべき筈の顏がつるゝして丸で藥罐だ。其後猫にも大分逢つたがこんな片輪には一度も出會はした事がない。加之顏の眞中が餘りに突起して居る。そうして其穴の中から時々ぷうゝと烟を吹く。どうも咽せぽくて實に弱つた。是が人間の飮む烟草といふものである事は漸く此頃知つた。",
    "此書生の掌の裏でしばらくはよい心持に坐つて居つたが、暫くすると非常な速力で運轉し始めた。書生が動くのか自分丈が動くのか分らないが無暗に眼が廻る。胸が惡くなる。到底助からないと思つて居ると、どさりと音がして眼から火が出た。夫迄は記憶して居るがあとは何の事やらいくら考へ出さうとしても分らない。",
    "ふと氣が付いて見ると書生は居ない。澤山居つた兄弟が一疋も見えぬ。肝心の母親さへ姿を隱して仕舞つた。其上今迄の所とは違つて無暗に明るい。眼を明いて居られぬ位だ。果てな何でも容子が可笑いと、のそゝ這ひ出して見ると非常に痛い。吾輩は藁の上から急に笹原の中へ棄てられたのである。"
  ) %>%
  tibble::tibble(text=.)

res <- 
  neko %>%
  mutate(cols=rep(1:2, each=2)) %>%
  mecab_all(text_col="text", bin_dir="D:/pf/MeCab/bin", fileEncoding="CP932") %>%
  print(n=nrow(.))

data(out_cols)
out_cols

out_cols <- c("表層形", "品詞", "品詞細分類1", "品詞細分類2", "品詞細分類3", "活用型", "活用形", "原形", "読み", "発音")


usethis::use_data(out_cols)

## Mecabの列名
  # utf-8のエスケープ文字
out_cols <- c("\u8868\u5c64\u5f62", "\u54c1\u8a5e", "\u54c1\u8a5e\u7d30\u5206\u985e1", 
    "\u54c1\u8a5e\u7d30\u5206\u985e2", "\u54c1\u8a5e\u7d30\u5206\u985e3", "\u6d3b\u7528\u578b", 
    "\u6d3b\u7528\u5f62", "\u539f\u5f62", "\u8aad\u307f", "\u767a\u97f3")

## 文字コード関連
rm(list=ls(all=TRUE)); gc(); gc()
neko_utf8 <- "吾輩は猫である。名前はまだ無い。"
neko_utf8
neko_utf8 <- iconv(neko_utf8, from="cp932", to="utf-8")
neko_utf8
usethis::use_data(neko_utf8, overwrite = TRUE)

rm(list=ls(all=TRUE)); gc(); gc()
options(encoding="UTF-8")
neko_utf8 <- "吾輩は猫である。名前はまだ無い。"
usethis::use_data(neko_utf8, overwrite = TRUE)


rm(list=ls(all=TRUE)); gc(); gc()
options(encoding="cp932")
neko_sjis <- "吾輩は猫である。名前はまだ無い。"
usethis::use_data(neko_sjis, overwrite = TRUE)



usethis::use_data(neko_utf8, overwrite = TRUE)



options(encoding="UTF-8")
neko_utf8

options(encoding="cp932")
neko_sjis

neko
iconv(neko_utf8, from="utf-8", to="cp932")
iconv(neko_sjis, from="cp932", to="utf-8")

data(neko_sjis)
data(neko_utf8)

neko_sjis
neko_utf8

options(encoding="cp932")

iconv(neko_utf8, from="utf-8", to="cp932")
iconv(neko_sjis, from="cp932", to="utf-8")

iconv(neko_sjis, from="utf-8", to="cp932")
iconv(neko_utf8, from="cp932", to="utf-8")



## 


readLines("d:/pf/mecab/bin/output.txt",  encoding="CP932") %>%
  tibble::tibble() %>%
  magrittr::set_colnames("tmp")
  tidyr::separate(tmp, sep="\t|,", into=letters[1:10], fill="right", extra="drop") %>%
  magrittr::set_colnames(out_cols)

## 
rm(list=ls(all=TRUE)); gc(); gc()
devtools::install_github("matutosi/moranajp", upgrade = c("never"), force = TRUE)
library(tidyverse)
library(moranajp)
data(neko_utf8)
data(neko_sjis)

neko_utf8
neko_sjis



neko
mecab
mecab_all



