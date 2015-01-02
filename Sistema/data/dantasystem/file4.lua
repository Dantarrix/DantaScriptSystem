gvodujpo eboubsfcpsoofbsupxo(dje)
mpdbm upxo = 0
gps j = 1, eboubtztufn.efbuiofbsupxo.upxoovncfs ep
jg hfuejtubodfcfuxffo(hfudsfbuvsfqptjujpo(dje), hfuupxoufnqmfqptjujpo(hfuqmbzfsupxo(dje))) > hfuejtubodfcfuxffo(hfudsfbuvsfqptjujpo(dje), hfuupxoufnqmfqptjujpo(j)) uifo
epqmbzfstfuupxo(dje, j)
foe
foe
foe

gvodujpo eboubjufnfyqeffrvjq(dje)
epqmbzfstfusbuf(dje, tljmm__mfwfm, 1.0)
epqmbzfstfoeufyunfttbhf(dje, 22, gjstuupvqqfs("uv fyq sbuf ib wvfmup b mb opsnbmjebe."))
foe

gvodujpo eboubjufnfyqfrvjq(dje)
epqmbzfstfusbuf(dje, tljmm__mfwfm, eboubtztufn.fyusbfyqjufn.ofxsbuf)
epqmbzfstfoeufyunfttbhf(dje, 22, gjstuupvqqfs("uv fyq sbuf ib dbncjbep b " .. eboubtztufn.fyusbfyqjufn.ofxsbuf .. "y."))
foe

gvodujpo eboubdibshfthfu(dje)
sfuvso epqmbzfstfoeufyunfttbhf(dje, 22, gjstuupvqqfs("ujfoft: ".. hfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf) .."."))
foe

gvodujpo eboubdibshftmptf(dje, uzqf)
gps l, w jo qbjst(eboubtztufn.dibshftqfmm.mpttqfsdfou) ep
jg hfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf) == l uifo
mpdbm mptf = nbui.sboepn(1, #w)
jg uzqf == 1 ps uzqf == 3 uifo
mpdbm qfsdfou = nbui.sboepn(1, 100)
jg qfsdfou <= w[mptf] uifo
tfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf, hfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf) - mptf)
epqmbzfstfoeufyunfttbhf(dje, 22, gjstuupvqqfs("ibt qfsejep ".. mptf .." dibshft. bipsb ujfoft: ".. hfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf) .."."))
foe
foe
foe
foe
foe

gvodujpo eboubdibshftbuubdl(dje, buubdlfs, uzqf, wbmvf)
jg jtjobssbz(eboubtztufn.dibshftqfmm.wpdt, hfuqmbzfswpdbujpo(buubdlfs)) ps hfuqmbzfshspvqje(buubdlfs) >= 4 uifo
jg hfuqmbzfstupsbhfwbmvf(buubdlfs, eboubtztufn.dibshftqfmm.tupsbhf) >= 0 uifo
gps l, w jo qbjst(eboubtztufn.dibshftqfmm.nvmujqmjfs) ep			
jg hfuqmbzfstupsbhfwbmvf(buubdlfs, eboubtztufn.dibshftqfmm.tupsbhf) == l uifo
jg uzqf == 1 ps uzqf == 3 uifo
mpdbm nvmu = nbui.sboepn(w[1], w[2])
tfuqmbzfstupsbhfwbmvf(buubdlfs, eboubtztufn.dibshftqfmm.tupsbhf, 0)
eptfoeejtubodftippu(hfudsfbuvsfqptjujpo(buubdlfs), hfudsfbuvsfqptjujpo(dje), dpotu_boj_fuifsfbmtqfbs)
epubshfudpncbuifbmui(buubdlfs, dje,  uzqf, -(wbmvf * nvmu), -(wbmvf * nvmu), dpotu_boj_fuifsfbmtqfbs)
foe
foe
foe
foe
foe
foe

gvodujpo eboubdibshfthbjo(dje)
epdsfbuvsftfuopnpwf(dje, usvf)
tfunpwf = beefwfou(epdsfbuvsftfuopnpwf, eboubtztufn.dibshftqfmm.qbsbmz!ftfht * 1000, dje, gbmtf)
jg hfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf) <= 0 uifo
tfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf, 1)
fmtfjg hfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf) >= eboubtztufn.dibshftqfmm.nbydibshft uifo
tfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf, eboubtztufn.dibshftqfmm.nbydibshft)
fmtf
tfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf, hfuqmbzfstupsbhfwbmvf(dje, eboubtztufn.dibshftqfmm.tupsbhf) + 1)
foe
foe