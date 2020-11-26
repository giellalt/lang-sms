#!/usr/bin/perl   

use utf8;

# This is for adding Contlex attributes and their values for Skolt Sami verbs ending in -âd
#                                                                                          
#                                                                                          

undef $/;

$_ = <>;

### Verb type 1.
#V_PÕÕLLÂD 
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(aa|ii|oo|õõ|uu)(tt|ll|jj|rr|nn|nnj|pp|đđ|ŋŋ|mm|vv)(âd\<\/t\>)/$1\ Contlex€\=\"V_PÕÕLLÂD\"$2$3$4$5$6/g;
#V_VIIKKÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(aa|ii|oo|õõ|uu)(ss|kk|šš|čč|cc)(âd\<\/t\>)/$1\ Contlex€\=\"V_VIIKKÂD\"$2$3$4$5$6/g;
#V_VIIKKÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(aa|ii|oo|õõ|uu)(ss|kk|šš|čč|cc)(âd\<\/t\>)/$1\ Contlex€\=\"V_VIIKKÂD\"$2$3$4$5/g;
#V_RIČČÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(a|i|o|õ|u)(ss|kk|šš|čč)(âd\<\/t\>)/$1\ Contlex€\=\"V_RIČČÂD\"$2$3$4$5$6/g;
#V_RÕVVÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(a|i|o|õ|u)(tt|ll|jj|rr|nn|nnj|pp|đđ|ŋŋ|mm|cc|vv)(âd\<\/t\>)/$1\ Contlex€\=\"V_RÕVVÂD\"$2$3$4$5$6/g;
#V_VIǮǮÂD .1
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(a|i|o|õ|u)(ʒʒ|bb|dd|ǯǯ|gg)(âd\<\/t\>)/$1\ Contlex€\=\"V_VIǮǮÂD\"$2$3$4$5$6/g;
#V_VIǮǮÂD .2
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(a|i|o|õ|u)(ʒʒ|bb|dd|ǯǯ|gg)(âd\<\/t\>)/$1\ Contlex€\=\"V_VIǮǮÂD\"$2$3$4$5/g;
#V_RIÂDDÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(ʒʒ|bb|dd|ǯǯ|gg)(âd\<\/t\>)/$1\ Contlex€\=\"V_RIÂDDÂD\"$2$3$4$5$6/g;
#V_RIÕKˈKÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(sˈs|kˈk|šˈš|čˈč|tˈt|lˈl)(âd\<\/t\>)/$1\ Contlex€\=\"V_RIÕKˈKÂD\"$2$3$4$5$6/g;
#V_PIÂSSÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(ss|kk|šš|čč|cc)(âd\<\/t\>)/$1\ Contlex€\=\"V_PIÂSSÂD\"$2$3$4$5$6/g;
#V_ČIÕKKÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(ss|kk|šš|čč|cc)(âd\<\/t\>)/$1\ Contlex€\=\"V_ČIÕKKÂD\"$2$3$4$5$6/g;
#V_HUÕLLÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(pp|tt|rr|ll|ŋŋ|nn|đđ|vv|jj|mm)(âd\<\/t\>)/$1\ Contlex€\=\"V_HUÕLLÂD\"$2$3$4$5$6/g;
#V_AIBBÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(a|i|o|õ|u)(umm|unn|udd|ujj|urr|uŋŋ|ukk|uvv|ull|ugg|inn|imm|icc|ibb|idd|itt|ill|ivv|ikk|iŋŋ|igg)(âd\<\/t\>)/$1\ Contlex€\=\"V_AIBBÂD\"$2$3$4$5$6/g;
#V_AIBBÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(a|i|o|õ|u)(umm|unn|udd|ujj|urr|uŋŋ|ukk|uvv|ull|ugg|inn|imm|icc|ibb|idd|itt|ill|ivv|ikk|iŋŋ|igg)(âd\<\/t\>)/$1\ Contlex€\=\"V_AIBBÂD\"$2$3$4$5/g;
#V_TOBDDÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(a|i|o|õ|u)(ckk|ncc|ŋgg|ngg|rškk|dgg|dmm|mjj|bll|hnn|bǯǯ|btt|pss|pšš|pčč|rkk|rtt|rcc|ltt|lcc|lčč|tkk|skk|stt|hss|htt|ptt|ŋkk|ldd|rdd|rbb|mpp|šmm|štt|škk|šnn|rgg|rnn|rss|ršš|rčč|lbb|lŋŋ|lgg|lkk|lpp|lss|lvv|bdd|lmm|hčč|čkk|rvv|rŋŋ|rjj|rmm)(âd\<\/t\>)/$1\ Contlex€\=\"V_TOBDDÂD\"$2$3$4$5$6/g;
#V_TOBDDÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(a|i|o|õ|u)(ckk|ncc|ŋgg|ngg|rškk|dgg|dmm|mjj|bll|hnn|bǯǯ|btt|pss|pšš|pčč|rkk|rtt|rcc|ltt|lcc|lčč|tkk|skk|stt|hss|htt|ptt|ŋkk|ldd|rdd|rbb|mpp|šmm|štt|škk|šnn|rgg|rnn|rss|ršš|rčč|lbb|lŋŋ|lgg|lkk|lpp|lss|lvv|bdd|lmm|hčč|čkk|rvv|rŋŋ|rjj|rmm)(âd\<\/t\>)/$1\ Contlex€\=\"V_TOBDDÂD\"$2$3$4$5/g;
#V_KUÕSKKÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(ckk|ncc|ŋgg|ngg|rškk|dgg|dmm|mjj|bll|hnn|bǯǯ|btt|pss|pšš|pčč|rkk|rtt|rcc|ltt|lcc|lčč|tkk|skk|stt|hss|htt|ptt|ŋkk|ldd|rdd|rbb|mpp|šmm|štt|škk|šnn|rgg|rnn|rss|ršš|rčč|lbb|lŋŋ|lgg|lkk|lpp|lss|lvv|bdd|lmm|hčč|čkk|rvv|rŋŋ|rjj|rmm)(âd\<\/t\>)/$1\ Contlex€\=\"V_KUÕSKKÂD\"$2$3$4$5$6/g;
#V_KUÕSKKÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(uå|iâ|uõ|iõ)(ckk|ncc|ŋgg|ngg|rškk|dgg|dmm|mjj|bll|hnn|bǯǯ|btt|pss|pšš|pčč|rkk|rtt|rcc|ltt|lcc|lčč|tkk|skk|stt|hss|htt|ptt|ŋkk|ldd|rdd|rbb|mpp|šmm|štt|škk|šnn|rgg|rnn|rss|ršš|rčč|lbb|lŋŋ|lgg|lkk|lpp|lss|lvv|bdd|lmm|hčč|čkk|rvv|rŋŋ|rjj|rmm)(âd\<\/t\>)/$1\ Contlex€\=\"V_KUÕSKKÂD\"$2$3$4$5/g;
#V_ČUÕIGGÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(umm|unn|udd|ujj|urr|uŋŋ|ukk|uvv|ull|ugg|inn|imm|icc|ibb|idd|itt|ill|ivv|ikk|iŋŋ|igg)(âd\<\/t\>)/$1\ Contlex€\=\"V_ČUÕIGGÂD\"$2$3$4$5$6/g;
#V_ČUÕIGGÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(uå|iâ|uõ|iõ)(umm|unn|udd|ujj|urr|uŋŋ|ukk|uvv|ull|ugg|inn|imm|icc|ibb|idd|itt|ill|ivv|ikk|iŋŋ|igg)(âd\<\/t\>)/$1\ Contlex€\=\"V_ČUÕIGGÂD\"$2$3$4$5/g;
#V_LAADDÂD
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(aa|ii|oo|õõ|uu)(l|n|m|rž|ž|žv|r|v|j|dd|bb|zz|ʒʒ|žž|pn|hn|hh|sn|tv|ck|nc|ng|bt|pč|rk|rt|lt|tk|sk|st|pt|ŋk|ld|rd|rb|mp|šm|št|šk|šn|rǥ|rn|rs|lb|lǥ|lk|ls|lv|tk|bd)(âd\<\/t\>)/$1\ Contlex€\=\"V_LAADDÂD\"$2$3$4$5$6/g;
#V_LAADDÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(aa|ii|oo|õõ|uu)(l|n|m|rž|ž|žv|r|v|j|dd|bb|zz|ʒʒ|žž|pn|hn|hh|sn|tv|ck|nc|ng|bt|pč|rk|rt|lt|tk|sk|st|pt|ŋk|ld|rd|rb|mp|šm|št|šk|šn|rǥ|rn|rs|lb|lǥ|lk|ls|lv|tk|bd)(âd\<\/t\>)/$1\ Contlex€\=\"V_LAADDÂD\"$2$3$4$5/g;
#V_VÕÕIDÂD 1.
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(aa|oo|õõ|uu)(in|ic|ib|id|iv|ik)(âd\<\/t\>)/$1\ Contlex€\=\"V_VÕÕIDÂD\"$2$3$4$5$6/g;
#V_VÕÕIDÂD 1.2
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(aa|oo|õõ|uu)(in|ic|ib|id|iv|ik)(âd\<\/t\>)/$1\ Contlex€\=\"V_VÕÕIDÂD\"$2$3$4$5/g;
#V_VÕÕIDÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(aa|ii|oo|õõ)(un|ud|ul|uk|ug)(âd\<\/t\>)/$1\ Contlex€\=\"V_VÕÕIDÂD\"$2$3$4$5$6/g;
#V_VÕÕIDÂD 2.2
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(aa|ii|oo|õõ)(un|ud|ul|uk|ug)(âd\<\/t\>)/$1\ Contlex€\=\"V_VÕÕIDÂD\"$2$3$4$5/g;
#V_ČIISTÂD 1.
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(aa|ii|oo|õõ|uu)(rž|žv|pn|hn|sn|tv|ck|nc|ng|bt|pč|rk|rt|lt|tk|sk|st|pt|ŋk|ld|rd|rb|mp|šm|št|šk|šn|rǥ|rn|rs|lb|lǥ|lk|ls|lv|tk|bd)(âd\<\/t\>)/$1\ Contlex€\=\"V_ČIISTÂD\"$2$3$4$5$6/g;
#V_ČIISTÂD 1.2
s/(\<t\ pos\=\"V\"[^>€]*)(\>)(aa|ii|oo|õõ|uu)(rž|žv|pn|hn|sn|tv|ck|nc|ng|bt|pč|rk|rt|lt|tk|sk|st|pt|ŋk|ld|rd|rb|mp|šm|št|šk|šn|rǥ|rn|rs|lb|lǥ|lk|ls|lv|tk|bd)(âd\<\/t\>)/$1\ Contlex€\=\"V_ČIISTÂD\"$2$3$4$5/g;
#V_PLIÂSNÂD 1.
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(uå|iâ|uõ|iõ)(l|n|m|rž|ž|žv|r|v|j|dd|bb|zz|ʒʒ|žž|pn|hn|hh|sn|tv|ck|nc|ng|bt|pč|rk|rt|lt|tk|sk|st|pt|ŋk|ld|rd|rb|mp|šm|št|šk|šn|rǥ|rn|rs|lb|lǥ|lk|ls|lv|tk|bd)(âd\<\/t\>)/$1\ Contlex€\=\"V_PLIÂSNÂD\"$2$3$4$5$6/g;
#V_SUUDÂD 1.
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(u)(un|ud|ul|uk|ug)(âd\<\/t\>)/$1\ Contlex€\=\"V_SUUDÂD\"$2$3$4$5$6/g;
#V_SUUDÂD 2.
s/(\<t\ pos\=\"V\"[^>€]*)(\>[^<]*)(b|c|č|ʒ|ǯ|d|đ|f|g|ǥ|ǧ|h|j|k|ǩ|l|m|n|ŋ|p|r|s|š|t|v|z|ž)(i)(in|id|il|ik|ig)(âd\<\/t\>)/$1\ Contlex€\=\"V_SUUDÂD\"$2$3$4$5$6/g;



#
s/€//g;

print ;

