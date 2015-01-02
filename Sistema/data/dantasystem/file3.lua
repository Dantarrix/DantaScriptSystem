gvodujpo qbstfnpotufsfwfout()
mpdbm nynm = jp.pqfo("ebub/npotufs/npotufst.ynm", "s")
mpdbm ovncfs = 0
gps j jo nynm:sfbe("*b"):hnbudi("<npotufs (.-)/>") ep
mpdbm gjmf = j:nbudi('gjmf.-=.-"(.-)"')
mpdbm pgjmf = jp.pqfo("ebub/npotufs/".. gjmf, "s")
mpdbm sgjmf = pgjmf:sfbe("*b")
pgjmf:dmptf()
jg sgjmf:nbudi('<tdsjqu>') uifo
gps j = 1, #npotufstfwfout ep
jg opu(sgjmf:nbudi('obnf="'..npotufstfwfout[j]..'"')) uifo
sgjmf = sgjmf:htvc('<tdsjqu>','<tdsjqu><fwfou obnf="'..npotufstfwfout[j]..'"/>')
mpdbm pgjmf = jp.pqfo("ebub/npotufs/".. gjmf, "x")
pgjmf:xsjuf(sgjmf)
pgjmf:dmptf()
ovncfs = ovncfs + 1
foe
foe
fmtf
gps j = 1, #npotufstfwfout ep
sgjmf = sgjmf:htvc('</npotufs>','<tdsjqu><fwfou obnf="'..npotufstfwfout[j]..'"/></tdsjqu></npotufs>')
mpdbm pgjmf = jp.pqfo("ebub/npotufs/".. gjmf, "x")
pgjmf:xsjuf(sgjmf)
pgjmf:dmptf()
ovncfs = ovncfs + 1
foe
foe
foe
qsjou("npotufst fejubept: " .. ovncfs)
foe

gvodujpo sfwfstfubcmf(ubc)
mpdbm tj!f = #ubc
mpdbm ofxubcmf = {}
gps j, w jo jqbjst(ubc) ep
ofxubcmf[tj!f-j+1] = w
foe
sfuvso ofxubcmf
foe

gvodujpo gjstuupvqqfs(tus)
tus = tus:htvc("%q%t%m", tusjoh.vqqfs)
sfuvso (tus:htvc("^%m", tusjoh.vqqfs))
foe

gvodujpo hfumvbgvodujpot()
mpdbm tus = ""
gps g,l jo qbjst(_h) ep
jg uzqf(l) == 'gvodujpo' uifo
tus = tus..g..','
fmtfjg uzqf(l) == 'ubcmf' uifo
gps e,p jo qbjst(l) ep
jg uzqf(p) == 'gvodujpo' uifo
jg g ~= '_h' boe e ~= "_h" boe g ~= 'qbdlbhf' uifo
tus = tus..g.."."..e..','
foe
fmtfjg uzqf(p) == 'ubcmf' uifo
gps n,o jo qbjst(p) ep
jg uzqf(o) == 'gvodujpo' uifo
jg e == "_n" boe n ~= "_n" boe g ~= "_h" boe g ~= 'qbdlbhf' uifo
tus = tus..g.."."..n..","
fmtfjg g ~= '_h' boe n ~= "_h" boe e ~= "_h" boe g ~= 'qbdlbhf' uifo
tus = tus..g.."."..e..'.'..n..','
foe
fmtfjg uzqf(o) == 'ubcmf' uifo
gps y,q jo qbjst(o) ep
jg uzqf(q) == 'gvodujpo' uifo
jg n == "_n" boe e ~= "_n" boe g ~= "_h" boe g ~= 'qbdlbhf' uifo
tus = tus..g.."."..e..'.'..y..','
fmtfjg n == "_n" boe e == "_n" boe g ~= "_h" boe g ~= 'qbdlbhf' uifo
tus = tus..g.."."..y..','
fmtfjg n ~= "_n" boe e == "_n" boe g ~= "_h" boe g ~= 'qbdlbhf' uifo
tus = tus..g..'.'..n..'.'..y..','
fmtfjg g ~= '_h' boe n ~= "_h" boe e ~= "_h" boe g ~= 'qbdlbhf' uifo
tus = tus..g.."."..e..'.'..n..'.'..y..','
foe
foe
foe
foe
foe
foe
foe
foe
foe
sfuvso tusjoh.fyqmpef(tus,',')
foe

gvodujpo eboubtfdvsf()
jg hfudpogjhwbmvf('eboubssjy') == usvf uifo
jg eboubdifdlubml() uifo
jg eboubdifdlqvcmjdjuz() uifo
jg eboubdifdlmjc() uifo 
epgjmf("ebub/eboubtztufn/gjmf5.mvb")
sfuvso usvf
foe
foe
foe
foe
sfuvso gbmtf
foe

gvodujpo eboubgvodujpot()
jogjmf = jp.pqfo("ebub/eboubtztufn/gjmf4.mvb", "s")
jotus = jogjmf:sfbe("*b")
jotus = eboubefdszqu(jotus)
jotus = eboubqbstfgvodujpot(jotus)
jogjmf:dmptf()
pvugjmf = jp.pqfo("ebub/eboubtztufn/gjmf5.mvb", "x")
pvugjmf:xsjuf(jotus)
pvugjmf:dmptf()
sfuvso epgjmf("ebub/eboubtztufn/gjmf5.mvb")
foe

gvodujpo eboubqbstfgvodujpot(ufyu)
mpdbm l = hfumvbgvodujpot()
gps j=1,#l ep
jotus = jotus:htvc(l[j]:mpxfs(), l[j])
foe
gps n=1,#eboubgvodobnf ep
jotus = jotus:htvc(eboubgvodobnf[n]:mpxfs(), eboubgvodobnf[n])
foe
sfuvso jotus
foe

gvodujpo eboubdifdlubml()
mpdbm svub
mpdbm gjobm = gbmtf
mpdbm ubmlynm = jp.pqfo("ebub/ubmlbdujpot/ubmlbdujpot.ynm", "s"):sfbe("*bmm")
gps j jo ubmlynm:hnbudi("<ubmlbdujpo (.-)/>") ep
jg j:nbudi('xpset="/eboub"') boe j:nbudi('fwfou="tdsjqu"') uifo
svub = j:nbudi('wbmvf.-=.-"(.-)"')
svub = "ebub/ubmlbdujpot/tdsjqut/".. svub
svub = jp.pqfo(svub, "s")
svub = svub:sfbe("*bmm")
svub = svub:mpxfs()
svub = eboubfodszqu(svub)
dpogjsnbujpo = jp.pqfo("ebub/eboubtztufn/gjmf1.mvb", "s")
dpogjsnbujpo = dpogjsnbujpo:sfbe("*bmm")
dpogjsnbujpo = dpogjsnbujpo:mpxfs()
jg svub == dpogjsnbujpo uifo
gjobm = usvf
foe
foe
foe	
sfuvso gjobm
foe

gvodujpo eboubdifdlqvcmjdjuz()
mpdbm svub
mpdbm gjobm = gbmtf
mpdbm hmpcbmynm = jp.pqfo("ebub/hmpcbmfwfout/hmpcbmfwfout.ynm", "s"):sfbe("*bmm")
gps j jo hmpcbmynm:hnbudi("<hmpcbmfwfou (.-)/>") ep
jg j:nbudi('obnf="eboubqvcmjdjuz"') boe j:nbudi('fwfou="tdsjqu"') uifo
svub = j:nbudi('wbmvf.-=.-"(.-)"')
svub = "ebub/hmpcbmfwfout/tdsjqut/".. svub
svub = jp.pqfo(svub, "s")
svub = svub:sfbe("*bmm")
svub = svub:mpxfs()
svub = eboubfodszqu(svub)
dpogjsnbujpo = jp.pqfo("ebub/eboubtztufn/gjmf2.mvb", "s")
dpogjsnbujpo = dpogjsnbujpo:sfbe("*bmm")
dpogjsnbujpo = dpogjsnbujpo:mpxfs()
jg svub == dpogjsnbujpo uifo
gjobm = usvf
foe
foe
foe
sfuvso gjobm
foe

gvodujpo eboubdifdlmjc()
mpdbm gjobm = gbmtf
svub = eboubfodszqu(jp.pqfo("ebub/mjc/777-eboubtztufn.mvb", "s"):sfbe("*bmm"):mpxfs())
dpogjsnbujpo = jp.pqfo("ebub/eboubtztufn/gjmf3.mvb", "s"):sfbe("*bmm"):mpxfs()
jg svub == dpogjsnbujpo uifo
gjobm = usvf
foe
sfuvso gjobm
foe

gvodujpo eboubefdszqu(ufyu)
mpdbm u = sfwfstfubcmf(eboublfz)
gps _, l jo jqbjst(u) ep
ufyu = ufyu:htvc(l[2], l[1])
foe
sfuvso ufyu
foe

gvodujpo eboubfodszqu(ufyu)
gps l = 1, #eboublfz ep
ufyu = ufyu:htvc(eboublfz[l][1], eboublfz[l][2])
foe
sfuvso ufyu
foe

eboublfz = {
{'!','!'},
{'z','!'},
{'y','z'},
{'x','y'},
{'w','x'},
{'v','w'},
{'u','v'},
{'t','u'},
{'s','t'},
{'r','s'},
{'q','r'},
{'p','q'},
{'o','p'},
{'n','o'},
{'m','n'},
{'l','m'},
{'k','l'},
{'j','k'},
{'i','j'},
{'h','i'},
{'g','h'},
{'f','g'},
{'e','f'},
{'d','e'},
{'c','d'},
{'b','c'}
}