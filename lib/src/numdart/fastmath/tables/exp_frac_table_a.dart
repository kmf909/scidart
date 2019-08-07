/// Exponential over the range of 0 - 1 in increments of `2^-10`
///     exp(x/1024) =  expFracTableA[x] + expFracTableB[x].
///     1024 = 2^10
const EXP_FRAC_TABLE_A = <double>[
  1.0,
  1.0009770393371582,
  1.0019550323486328,
  1.0029339790344238,
  1.0039138793945312,
  1.004894733428955,
  1.0058765411376953,
  1.006859302520752,
  1.007843017578125,
  1.0088276863098145,
  1.0098135471343994,
  1.0108001232147217,
  1.0117876529693604,
  1.0127761363983154,
  1.013765811920166,
  1.014756202697754,
  1.0157477855682373,
  1.016740083694458,
  1.0177335739135742,
  1.0187277793884277,
  1.0197231769561768,
  1.0207195281982422,
  1.021716833114624,
  1.0227150917053223,
  1.023714303970337,
  1.024714469909668,
  1.0257158279418945,
  1.0267179012298584,
  1.0277209281921387,
  1.0287251472473145,
  1.0297303199768066,
  1.0307364463806152,
  1.0317435264587402,
  1.0327515602111816,
  1.0337605476379395,
  1.0347704887390137,
  1.0357816219329834,
  1.0367934703826904,
  1.037806510925293,
  1.038820505142212,
  1.0398354530334473,
  1.040851354598999,
  1.0418684482574463,
  1.0428862571716309,
  1.043905258178711,
  1.0449252128601074,
  1.0459461212158203,
  1.0469679832458496,
  1.0479910373687744,
  1.0490150451660156,
  1.0500397682189941,
  1.0510656833648682,
  1.0520927906036377,
  1.0531206130981445,
  1.0541496276855469,
  1.0551795959472656,
  1.0562105178833008,
  1.0572423934936523,
  1.0582754611968994,
  1.059309482574463,
  1.0603444576263428,
  1.061380386352539,
  1.0624175071716309,
  1.06345534324646,
  1.0644943714141846,
  1.0655345916748047,
  1.066575527191162,
  1.067617654800415,
  1.0686607360839844,
  1.0697050094604492,
  1.0707499980926514,
  1.071796178817749,
  1.072843313217163,
  1.0738916397094727,
  1.0749409198760986,
  1.075991153717041,
  1.0770423412322998,
  1.078094720840454,
  1.0791480541229248,
  1.080202341079712,
  1.0812578201293945,
  1.0823142528533936,
  1.083371639251709,
  1.08443021774292,
  1.0854897499084473,
  1.086550235748291,
  1.0876119136810303,
  1.088674545288086,
  1.089738130569458,
  1.0908029079437256,
  1.0918686389923096,
  1.092935562133789,
  1.094003438949585,
  1.0950722694396973,
  1.096142053604126,
  1.0972130298614502,
  1.09828519821167,
  1.099358320236206,
  1.1004323959350586,
  1.1015074253082275,
  1.102583646774292,
  1.103661060333252,
  1.1047391891479492,
  1.105818748474121,
  1.1068990230560303,
  1.107980489730835,
  1.1090631484985352,
  1.1101467609405518,
  1.1112313270568848,
  1.1123170852661133,
  1.1134037971496582,
  1.1144917011260986,
  1.1155805587768555,
  1.1166706085205078,
  1.1177616119384766,
  1.1188538074493408,
  1.1199469566345215,
  1.1210410594940186,
  1.1221363544464111,
  1.1232328414916992,
  1.1243302822113037,
  1.1254286766052246,
  1.126528263092041,
  1.127629041671753,
  1.1287307739257812,
  1.129833459854126,
  1.1309373378753662,
  1.132042407989502,
  1.133148431777954,
  1.1342556476593018,
  1.1353638172149658,
  1.1364731788635254,
  1.1375834941864014,
  1.1386950016021729,
  1.1398074626922607,
  1.1409211158752441,
  1.142035961151123,
  1.1431517601013184,
  1.14426851272583,
  1.1453864574432373,
  1.14650559425354,
  1.1476259231567383,
  1.148747205734253,
  1.149869441986084,
  1.1509928703308105,
  1.1521174907684326,
  1.153243064880371,
  1.154369831085205,
  1.1554977893829346,
  1.1566267013549805,
  1.1577568054199219,
  1.1588881015777588,
  1.160020351409912,
  1.161153793334961,
  1.1622881889343262,
  1.163423776626587,
  1.1645605564117432,
  1.1656982898712158,
  1.166837215423584,
  1.1679773330688477,
  1.1691184043884277,
  1.1702606678009033,
  1.1714041233062744,
  1.172548532485962,
  1.173694133758545,
  1.1748409271240234,
  1.1759889125823975,
  1.177137851715088,
  1.1782879829406738,
  1.1794393062591553,
  1.1805915832519531,
  1.1817450523376465,
  1.1828997135162354,
  1.1840553283691406,
  1.1852121353149414,
  1.1863701343536377,
  1.1875293254852295,
  1.1886897087097168,
  1.1898510456085205,
  1.1910135746002197,
  1.1921772956848145,
  1.1933419704437256,
  1.1945080757141113,
  1.1956751346588135,
  1.1968433856964111,
  1.1980125904083252,
  1.1991832256317139,
  1.200354814529419,
  1.2015275955200195,
  1.2027015686035156,
  1.2038767337799072,
  1.2050528526306152,
  1.2062301635742188,
  1.2074086666107178,
  1.2085883617401123,
  1.2097692489624023,
  1.210951328277588,
  1.2121343612670898,
  1.2133188247680664,
  1.2145042419433594,
  1.2156908512115479,
  1.2168786525726318,
  1.2180676460266113,
  1.2192575931549072,
  1.2204489707946777,
  1.2216413021087646,
  1.222834825515747,
  1.224029779434204,
  1.2252256870269775,
  1.2264227867126465,
  1.227621078491211,
  1.2288203239440918,
  1.2300209999084473,
  1.2312228679656982,
  1.2324256896972656,
  1.2336299419403076,
  1.234835147857666,
  1.23604154586792,
  1.2372493743896484,
  1.2384581565856934,
  1.2396681308746338,
  1.2408792972564697,
  1.2420918941497803,
  1.2433054447174072,
  1.2445201873779297,
  1.2457361221313477,
  1.2469532489776611,
  1.2481715679168701,
  1.2493910789489746,
  1.2506117820739746,
  1.2518336772918701,
  1.2530567646026611,
  1.2542810440063477,
  1.2555065155029297,
  1.2567331790924072,
  1.2579610347747803,
  1.2591900825500488,
  1.260420322418213,
  1.2616519927978516,
  1.2628846168518066,
  1.2641184329986572,
  1.2653534412384033,
  1.266589879989624,
  1.2678272724151611,
  1.2690660953521729,
  1.27030611038208,
  1.2715470790863037,
  1.272789478302002,
  1.2740330696105957,
  1.275277853012085,
  1.2765238285064697,
  1.27777099609375,
  1.2790195941925049,
  1.2802691459655762,
  1.281519889831543,
  1.2827720642089844,
  1.2840254306793213,
  1.2852799892425537,
  1.2865357398986816,
  1.287792682647705,
  1.2890510559082031,
  1.2903103828430176,
  1.2915711402893066,
  1.2928330898284912,
  1.2940962314605713,
  1.2953605651855469,
  1.296626091003418,
  1.2978930473327637,
  1.2991611957550049,
  1.3004305362701416,
  1.3017010688781738,
  1.3029727935791016,
  1.304245948791504,
  1.3055200576782227,
  1.3067958354949951,
  1.308072566986084,
  1.3093504905700684,
  1.3106298446655273,
  1.3119103908538818,
  1.3131921291351318,
  1.3144752979278564,
  1.3157594203948975,
  1.317044973373413,
  1.3183319568634033,
  1.31961989402771,
  1.3209092617034912,
  1.322199821472168,
  1.3234915733337402,
  1.324784755706787,
  1.3260791301727295,
  1.3273746967315674,
  1.3286716938018799,
  1.329969882965088,
  1.3312692642211914,
  1.3325698375701904,
  1.333871841430664,
  1.3351752758026123,
  1.336479663848877,
  1.3377854824066162,
  1.339092493057251,
  1.3404009342193604,
  1.3417105674743652,
  1.3430213928222656,
  1.3443336486816406,
  1.3456470966339111,
  1.3469617366790771,
  1.3482778072357178,
  1.349595069885254,
  1.3509137630462646,
  1.352233648300171,
  1.3535549640655518,
  1.3548774719238281,
  1.356201171875,
  1.3575263023376465,
  1.3588526248931885,
  1.360180139541626,
  1.361509084701538,
  1.3628394603729248,
  1.364171028137207,
  1.3655037879943848,
  1.366837978363037,
  1.368173360824585,
  1.3695101737976074,
  1.3708481788635254,
  1.372187614440918,
  1.373528242111206,
  1.3748703002929688,
  1.376213550567627,
  1.3775582313537598,
  1.378904104232788,
  1.380251407623291,
  1.3815999031066895,
  1.3829498291015625,
  1.384300947189331,
  1.3856534957885742,
  1.387007236480713,
  1.3883624076843262,
  1.389719009399414,
  1.3910768032073975,
  1.3924360275268555,
  1.393796443939209,
  1.395158290863037,
  1.3965213298797607,
  1.397885799407959,
  1.3992514610290527,
  1.4006187915802002,
  1.401987075805664,
  1.4033570289611816,
  1.4047281742095947,
  1.4061005115509033,
  1.4074742794036865,
  1.4088494777679443,
  1.4102261066436768,
  1.4116039276123047,
  1.4129831790924072,
  1.4143636226654053,
  1.415745496749878,
  1.4171288013458252,
  1.418513298034668,
  1.4198992252349854,
  1.4212865829467773,
  1.4226751327514648,
  1.424065351486206,
  1.4254565238952637,
  1.426849365234375,
  1.4282433986663818,
  1.4296388626098633,
  1.4310357570648193,
  1.432433843612671,
  1.433833360671997,
  1.4352343082427979,
  1.4366366863250732,
  1.4380402565002441,
  1.4394452571868896,
  1.4408516883850098,
  1.4422595500946045,
  1.4436686038970947,
  1.4450790882110596,
  1.446491003036499,
  1.447904348373413,
  1.4493188858032227,
  1.450735092163086,
  1.4521524906158447,
  1.4535713195800781,
  1.454991340637207,
  1.4564130306243896,
  1.4578359127044678,
  1.4592602252960205,
  1.460686206817627,
  1.4621131420135498,
  1.4635417461395264,
  1.4649717807769775,
  1.4664030075073242,
  1.4678359031677246,
  1.4692699909210205,
  1.470705509185791,
  1.4721424579620361,
  1.4735808372497559,
  1.475020408630371,
  1.47646164894104,
  1.4779040813446045,
  1.4793481826782227,
  1.4807934761047363,
  1.4822404384613037,
  1.4836885929107666,
  1.485138177871704,
  1.4865891933441162,
  1.488041639328003,
  1.4894955158233643,
  1.4909508228302002,
  1.4924075603485107,
  1.493865728378296,
  1.4953253269195557,
  1.49678635597229,
  1.49824857711792,
  1.4997124671936035,
  1.5011777877807617,
  1.5026445388793945,
  1.504112720489502,
  1.505582332611084,
  1.5070531368255615,
  1.5085256099700928,
  1.5099995136260986,
  1.511474847793579,
  1.5129516124725342,
  1.5144298076629639,
  1.5159096717834473,
  1.5173907279968262,
  1.5188732147216797,
  1.5203571319580078,
  1.5218427181243896,
  1.523329496383667,
  1.524817943572998,
  1.5263078212738037,
  1.5277988910675049,
  1.5292916297912598,
  1.5307857990264893,
  1.5322813987731934,
  1.5337786674499512,
  1.5352771282196045,
  1.5367772579193115,
  1.538278579711914,
  1.5397815704345703,
  1.5412859916687012,
  1.5427920818328857,
  1.5442993640899658,
  1.5458080768585205,
  1.547318458557129,
  1.548830270767212,
  1.5503435134887695,
  1.5518584251403809,
  1.5533745288848877,
  1.5548923015594482,
  1.5564115047454834,
  1.5579321384429932,
  1.5594542026519775,
  1.5609779357910156,
  1.5625030994415283,
  1.5640296936035156,
  1.5655577182769775,
  1.5670874118804932,
  1.5686185359954834,
  1.5701510906219482,
  1.5716853141784668,
  1.5732207298278809,
  1.5747578144073486,
  1.5762965679168701,
  1.577836513519287,
  1.5793781280517578,
  1.5809214115142822,
  1.5824658870697021,
  1.5840120315551758,
  1.5855598449707031,
  1.587108850479126,
  1.5886595249176025,
  1.5902118682861328,
  1.5917654037475586,
  1.593320608139038,
  1.5948774814605713,
  1.596435785293579,
  1.5979955196380615,
  1.5995566844940186,
  1.6011195182800293,
  1.6026840209960938,
  1.6042497158050537,
  1.6058173179626465,
  1.6073861122131348,
  1.6089565753936768,
  1.6105287075042725,
  1.6121022701263428,
  1.6136772632598877,
  1.6152539253234863,
  1.6168320178985596,
  1.6184117794036865,
  1.619992971420288,
  1.6215758323669434,
  1.6231601238250732,
  1.6247460842132568,
  1.626333475112915,
  1.627922534942627,
  1.6295130252838135,
  1.6311051845550537,
  1.6326987743377686,
  1.634294033050537,
  1.6358907222747803,
  1.6374890804290771,
  1.6390891075134277,
  1.640690565109253,
  1.6422934532165527,
  1.6438980102539062,
  1.6455042362213135,
  1.6471118927001953,
  1.6487212181091309,
  1.6503322124481201,
  1.651944637298584,
  1.6535584926605225,
  1.6551742553710938,
  1.6567914485931396,
  1.6584100723266602,
  1.6600303649902344,
  1.6616523265838623,
  1.663275957107544,
  1.6649010181427002,
  1.666527509689331,
  1.6681559085845947,
  1.669785737991333,
  1.671417236328125,
  1.6730501651763916,
  1.674684762954712,
  1.676321029663086,
  1.6779589653015137,
  1.679598331451416,
  1.681239366531372,
  1.6828820705413818,
  1.6845262050628662,
  1.6861720085144043,
  1.687819480895996,
  1.6894686222076416,
  1.6911191940307617,
  1.6927716732025146,
  1.6944255828857422,
  1.6960809230804443,
  1.6977381706237793,
  1.6993968486785889,
  1.7010571956634521,
  1.7027192115783691,
  1.7043828964233398,
  1.7060482501983643,
  1.7077150344848633,
  1.709383487701416,
  1.7110536098480225,
  1.7127254009246826,
  1.7143988609313965,
  1.716073989868164,
  1.7177505493164062,
  1.7194287776947021,
  1.7211089134216309,
  1.7227904796600342,
  1.7244737148284912,
  1.726158618927002,
  1.7278449535369873,
  1.7295331954956055,
  1.7312231063842773,
  1.7329144477844238,
  1.7346076965332031,
  1.736302375793457,
  1.7379989624023438,
  1.739696979522705,
  1.7413966655731201,
  1.7430980205535889,
  1.7448012828826904,
  1.7465059757232666,
  1.7482123374938965,
  1.74992036819458,
  1.7516300678253174,
  1.7533416748046875,
  1.7550547122955322,
  1.7567694187164307,
  1.7584857940673828,
  1.7602040767669678,
  1.7619237899780273,
  1.7636451721191406,
  1.7653684616088867,
  1.7670931816101074,
  1.768819808959961,
  1.770547866821289,
  1.77227783203125,
  1.7740094661712646,
  1.775742769241333,
  1.777477741241455,
  1.7792143821716309,
  1.7809526920318604,
  1.7826926708221436,
  1.7844345569610596,
  1.7861778736114502,
  1.7879230976104736,
  1.7896699905395508,
  1.7914185523986816,
  1.7931687831878662,
  1.7949209213256836,
  1.7966744899749756,
  1.7984299659729004,
  1.800187110900879,
  1.8019459247589111,
  1.8037066459655762,
  1.8054687976837158,
  1.8072328567504883,
  1.8089985847473145,
  1.8107659816741943,
  1.812535285949707,
  1.8143062591552734,
  1.8160789012908936,
  1.8178532123565674,
  1.819629430770874,
  1.8214070796966553,
  1.8231868743896484,
  1.8249680995941162,
  1.8267512321472168,
  1.828536033630371,
  1.830322504043579,
  1.83211088180542,
  1.8339009284973145,
  1.8356926441192627,
  1.8374862670898438,
  1.8392815589904785,
  1.841078519821167,
  1.8428773880004883,
  1.8446779251098633,
  1.846480131149292,
  1.8482842445373535,
  1.8500902652740479,
  1.8518977165222168,
  1.8537070751190186,
  1.8555183410644531,
  1.8573312759399414,
  1.8591458797454834,
  1.8609623908996582,
  1.8627805709838867,
  1.864600658416748,
  1.866422414779663,
  1.8682458400726318,
  1.8700714111328125,
  1.8718984127044678,
  1.8737273216247559,
  1.8755581378936768,
  1.8773906230926514,
  1.8792247772216797,
  1.8810608386993408,
  1.8828988075256348,
  1.8847384452819824,
  1.886579990386963,
  1.888423204421997,
  1.890268325805664,
  1.8921151161193848,
  1.8939638137817383,
  1.8958141803741455,
  1.8976664543151855,
  1.8995206356048584,
  1.901376485824585,
  1.9032342433929443,
  1.9050939083099365,
  1.9069552421569824,
  1.908818244934082,
  1.9106833934783936,
  1.9125502109527588,
  1.9144186973571777,
  1.9162893295288086,
  1.9181616306304932,
  1.9200356006622314,
  1.9219114780426025,
  1.9237892627716064,
  1.9256689548492432,
  1.9275505542755127,
  1.929433822631836,
  1.931318759918213,
  1.9332058429718018,
  1.9350945949554443,
  1.9369852542877197,
  1.938877820968628,
  1.940772294998169,
  1.9426684379577637,
  1.9445664882659912,
  1.9464664459228516,
  1.9483680725097656,
  1.9502718448638916,
  1.9521772861480713,
  1.9540846347808838,
  1.955993890762329,
  1.9579050540924072,
  1.959817886352539,
  1.9617326259613037,
  1.9636495113372803,
  1.9655680656433105,
  1.9674885272979736,
  1.9694106578826904,
  1.9713349342346191,
  1.9732608795166016,
  1.975188970565796,
  1.977118730545044,
  1.9790503978729248,
  1.9809842109680176,
  1.982919692993164,
  1.9848570823669434,
  1.9867963790893555,
  1.9887375831604004,
  1.990680456161499,
  1.9926254749298096,
  1.994572401046753,
  1.996521234512329,
  1.998471736907959,
  2.000424385070801,
  2.0023789405822754,
  2.004335403442383,
  2.006293773651123,
  2.008254051208496,
  2.010216236114502,
  2.0121798515319824,
  2.014145851135254,
  2.016113758087158,
  2.0180835723876953,
  2.0200552940368652,
  2.022029399871826,
  2.0240049362182617,
  2.02598237991333,
  2.0279617309570312,
  2.0299429893493652,
  2.0319266319274902,
  2.03391170501709,
  2.0358991622924805,
  2.0378880500793457,
  2.039879322052002,
  2.041872501373291,
  2.0438671112060547,
  2.0458641052246094,
  2.047863006591797,
  2.049863815307617,
  2.0518670082092285,
  2.0538716316223145,
  2.055878162384033,
  2.057887077331543,
  2.0598974227905273,
  2.0619101524353027,
  2.063924789428711,
  2.065941333770752,
  2.067959785461426,
  2.0699801445007324,
  2.07200288772583,
  2.0740270614624023,
  2.0760536193847656,
  2.0780820846557617,
  2.0801124572753906,
  2.0821447372436523,
  2.084178924560547,
  2.0862154960632324,
  2.0882534980773926,
  2.0902938842773438,
  2.0923361778259277,
  2.0943803787231445,
  2.0964269638061523,
  2.0984749794006348,
  2.100525379180908,
  2.1025776863098145,
  2.1046319007873535,
  2.1066884994506836,
  2.1087465286254883,
  2.110806941986084,
  2.1128692626953125,
  2.114933490753174,
  2.117000102996826,
  2.1190686225891113,
  2.1211390495300293,
  2.12321138381958,
  2.1252856254577637,
  2.1273622512817383,
  2.1294407844543457,
  2.131521224975586,
  2.133604049682617,
  2.135688304901123,
  2.13777494430542,
  2.139863967895508,
  2.1419544219970703,
  2.144047260284424,
  2.14614200592041,
  2.1482391357421875,
  2.1503376960754395,
  2.1524391174316406,
  2.1545419692993164,
  2.156647205352783,
  2.1587538719177246,
  2.1608633995056152,
  2.1629743576049805,
  2.1650876998901367,
  2.167203426361084,
  2.169320583343506,
  2.1714401245117188,
  2.1735615730285645,
  2.175685405731201,
  2.1778111457824707,
  2.179938793182373,
  2.1820688247680664,
  2.1842007637023926,
  2.1863350868225098,
  2.1884708404541016,
  2.1906094551086426,
  2.192749500274658,
  2.194891929626465,
  2.1970362663269043,
  2.1991829872131348,
  2.201331615447998,
  2.2034826278686523,
  2.2056355476379395,
  2.2077903747558594,
  2.2099475860595703,
  2.212106704711914,
  2.214268207550049,
  2.2164316177368164,
  2.218596935272217,
  2.220764636993408,
  2.2229342460632324,
  2.2251062393188477,
  2.2272801399230957,
  2.2294564247131348,
  2.2316346168518066,
  2.2338151931762695,
  2.2359976768493652,
  2.2381820678710938,
  2.2403693199157715,
  2.242558002471924,
  2.244749069213867,
  2.2469425201416016,
  2.2491378784179688,
  2.2513351440429688,
  2.2535347938537598,
  2.2557363510131836,
  2.2579402923583984,
  2.2601466178894043,
  2.262354850769043,
  2.2645654678344727,
  2.266777992248535,
  2.2689924240112305,
  2.271209716796875,
  2.273428440093994,
  2.2756495475769043,
  2.2778730392456055,
  2.2800989151000977,
  2.2823266983032227,
  2.2845563888549805,
  2.2867884635925293,
  2.289022922515869,
  2.291259288787842,
  2.2934980392456055,
  2.295738697052002,
  2.2979817390441895,
  2.300227165222168,
  2.3024744987487793,
  2.3047242164611816,
  2.306975841522217,
  2.309229850769043,
  2.31148624420166,
  2.31374454498291,
  2.316005229949951,
  2.318267822265625,
  2.32053279876709,
  2.3228001594543457,
  2.3250694274902344,
  2.3273415565490723,
  2.3296151161193848,
  2.3318915367126465,
  2.334169864654541,
  2.3364500999450684,
  2.338733196258545,
  2.3410181999206543,
  2.3433055877685547,
  2.345594882965088,
  2.347886562347412,
  2.3501806259155273,
  2.3524770736694336,
  2.3547754287719727,
  2.3570761680603027,
  2.3593788146972656,
  2.3616843223571777,
  2.3639917373657227,
  2.3663015365600586,
  2.3686132431030273,
  2.370927333831787,
  2.373243808746338,
  2.3755626678466797,
  2.3778839111328125,
  2.380207061767578,
  2.3825325965881348,
  2.3848605155944824,
  2.387190818786621,
  2.3895230293273926,
  2.391857624053955,
  2.3941946029663086,
  2.396533966064453,
  2.3988752365112305,
  2.401218891143799,
  2.4035654067993164,
  2.4059133529663086,
  2.40826416015625,
  2.4106173515319824,
  2.4129724502563477,
  2.415329933166504,
  2.417689800262451,
  2.4200520515441895,
  2.4224166870117188,
  2.424783229827881,
  2.427152633666992,
  2.4295239448547363,
  2.4318976402282715,
  2.4342737197875977,
  2.436652183532715,
  2.439032554626465,
  2.441415786743164,
  2.4438014030456543,
  2.4461889266967773,
  2.4485788345336914,
  2.4509711265563965,
  2.4533658027648926,
  2.4557628631591797,
  2.458162307739258,
  2.460564136505127,
  2.462968349456787,
  2.46537446975708,
  2.4677834510803223,
  2.4701943397521973,
  2.4726080894470215,
  2.4750237464904785,
  2.4774417877197266,
  2.479862689971924,
  2.482285499572754,
  2.484710693359375,
  2.487138271331787,
  2.4895682334899902,
  2.4920010566711426,
  2.4944357872009277,
  2.496872901916504,
  2.499312400817871,
  2.5017542839050293,
  2.5041985511779785,
  2.5066452026367188,
  2.50909423828125,
  2.5115456581115723,
  2.5139999389648438,
  2.516456127166748,
  2.5189146995544434,
  2.5213756561279297,
  2.5238394737243652,
  2.5263051986694336,
  2.528773307800293,
  2.5312442779541016,
  2.533717155456543,
  2.5361928939819336,
  2.538670539855957,
  2.5411510467529297,
  2.5436339378356934,
  2.546119213104248,
  2.5486068725585938,
  2.5510969161987305,
  2.553589344024658,
  2.556084632873535,
  2.558581829071045,
  2.5610814094543457,
  2.5635838508605957,
  2.5660886764526367,
  2.5685958862304688,
  2.571105480194092,
  2.573617458343506,
  2.576131820678711,
  2.5786490440368652,
  2.5811686515808105,
  2.5836901664733887,
  2.586214542388916,
  2.5887417793273926,
  2.591270923614502,
  2.5938024520874023,
  2.596336841583252,
  2.5988736152648926,
  2.601412773132324,
  2.603954315185547,
  2.6064987182617188,
  2.6090455055236816,
  2.6115946769714355,
  2.6141462326049805,
  2.6167001724243164,
  2.6192569732666016,
  2.6218161582946777,
  2.624377727508545,
  2.626941680908203,
  2.6295084953308105,
  2.632077217102051,
  2.6346492767333984,
  2.637223243713379,
  2.6398000717163086,
  2.6423792839050293,
  2.644960880279541,
  2.6475448608398438,
  2.6501317024230957,
  2.6527209281921387,
  2.655313014984131,
  2.657907009124756,
  2.6605043411254883,
  2.6631035804748535,
  2.665705680847168,
  2.6683101654052734,
  2.67091703414917,
  2.6735267639160156,
  2.6761388778686523,
  2.67875337600708,
  2.681370735168457,
  2.683990478515625,
  2.686613082885742,
  2.689237594604492,
  2.6918654441833496,
  2.69449520111084,
  2.6971278190612793,
  2.699763298034668,
  2.7024011611938477,
  2.7050414085388184,
  2.70768404006958,
  2.710329532623291,
  2.712977886199951,
  2.7156286239624023,
  2.7182817459106445,
];