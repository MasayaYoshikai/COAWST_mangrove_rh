function cmap = cm_ice(varargin)

% CM_ICE: 256 color palette from CMOCEAN
%
% cmap = cm_ice(M)
%
% ICE colormap by Kristen Thyng.
%
%
% On Input:
%
%    M        Number of colors (integer, OPTIONAL)
%
% On Ouput:
%
%    cmap     Mx3 colormap matrix
%
% Usage:
%
%    colormap(cm_ice)
%    colormap(flipud(cm_ice))
%
% https://github.com/matplotlib/cmocean/tree/master/cmocean/rgb
%
% Thyng, K.M., C.A. Greene, R.D. Hetland, H.M. Zimmerle, and S.F DiMarco, 2016:
%   True colord of oceanography: Guidelines for effective and accurate colormap
%   selection, Oceanography, 29(3), 9-13, http://dx.doi.org/10.5670/oceanog.2016.66 
% 

% svn $Id: cm_ice.m 895 2018-02-11 23:15:37Z arango $

% Initialize.

switch numel(varargin)
  case 0
    M = 256;
  case 1
    M = varargin{1};
end

% Set 256 colormap.

cmap = [[1.531167435543729846e-02, 2.252059388699531942e-02, 7.272873735907764425e-02],
        [1.800549591959003243e-02, 2.544551608389769570e-02, 7.841879116825511975e-02],
        [2.090133006203173313e-02, 2.852652245071044673e-02, 8.407771577420969367e-02],
        [2.399818650587986005e-02, 3.176264327218273481e-02, 8.970750416351327972e-02],
        [2.729775749004114890e-02, 3.514909496851363613e-02, 9.532647230499821656e-02],
        [3.080428146052393429e-02, 3.867708164670261017e-02, 1.009662673440025749e-01],
        [3.450984373415445089e-02, 4.229955636714784889e-02, 1.065828165743578915e-01],
        [3.841359784116892689e-02, 4.587404239998996852e-02, 1.121776340643418912e-01],
        [4.245789616397358662e-02, 4.939963679832150983e-02, 1.177960773094180458e-01],
        [4.645777532344794875e-02, 5.288489849108807955e-02, 1.234176036286754041e-01],
        [5.041621762087678676e-02, 5.633788824565918313e-02, 1.290216830927681801e-01],
        [5.433779516873311205e-02, 5.975737503280462853e-02, 1.346239246672657763e-01],
        [5.823000255128838593e-02, 6.313585840823013329e-02, 1.402651739202840087e-01],
        [6.208647351275981691e-02, 6.648865889594307577e-02, 1.458921724026617794e-01],
        [6.590890827576056932e-02, 6.981759532833076154e-02, 1.515056185497818952e-01],
        [6.970669712558172360e-02, 7.310909804078333241e-02, 1.571701055775910905e-01],
        [7.347360805650121618e-02, 7.637815581467355397e-02, 1.628308265129313204e-01],
        [7.720982185882321880e-02, 7.962820406611839652e-02, 1.684800394051645944e-01],
        [8.092190572547824923e-02, 8.284856571837034833e-02, 1.741697304708636207e-01],
        [8.460722520622676601e-02, 8.604719820880801784e-02, 1.798725773914293391e-01],
        [8.826407983557263415e-02, 8.923087230589588081e-02, 1.855652548242135713e-01],
        [9.189748856643911723e-02, 9.238991627825218766e-02, 1.912953251540190358e-01],
        [9.550605637353798416e-02, 9.552936548231369396e-02, 1.970466344723810770e-01],
        [9.908760199831237458e-02, 9.865735598928837558e-02, 2.027885080271309981e-01],
        [1.026464276979975609e-01, 1.017632832609889626e-01, 2.085729006866037794e-01],
        [1.061807481293115807e-01, 1.048533987828409453e-01, 2.143771619600378098e-01],
        [1.096889023760894977e-01, 1.079351702016392300e-01, 2.201721871249775475e-01],
        [1.131748168296289048e-01, 1.109951338044804781e-01, 2.260236443434878173e-01],
        [1.166355654717963208e-01, 1.140448383112346031e-01, 2.318836318580280165e-01],
        [1.200706770784045196e-01, 1.170883693387409774e-01, 2.377372345137335197e-01],
        [1.234831126917021182e-01, 1.201095785266100835e-01, 2.436640854600494177e-01],
        [1.268694769189046001e-01, 1.231271973707054601e-01, 2.495809234356071160e-01],
        [1.302307935855599175e-01, 1.261348273230401829e-01, 2.555217697948003464e-01],
        [1.335669536543798996e-01, 1.291293381943951213e-01, 2.615060473838256017e-01],
        [1.368768735891793542e-01, 1.321228390190112012e-01, 2.674792268238664894e-01],
        [1.401607222303006828e-01, 1.351007751267265800e-01, 2.735164638309879881e-01],
        [1.434177197831119077e-01, 1.380764808543884503e-01, 2.795564348972031099e-01],
        [1.466474902267766722e-01, 1.410468359199091026e-01, 2.856183790033576808e-01],
        [1.498489657362017669e-01, 1.440082826282148287e-01, 2.917246687573430419e-01],
        [1.530229361070791771e-01, 1.469729643095797900e-01, 2.978170527656492372e-01],
        [1.561658891044421793e-01, 1.499237839873007738e-01, 3.039884751881400948e-01],
        [1.592803696822101267e-01, 1.528796824181726244e-01, 3.101441051875748478e-01],
        [1.623627513097627983e-01, 1.558287612260276789e-01, 3.163512211275710251e-01],
        [1.654142439360292427e-01, 1.587796212856360245e-01, 3.225680108254420086e-01],
        [1.684327965090609003e-01, 1.617293084063355368e-01, 3.288148930781844004e-01],
        [1.714174532656698446e-01, 1.646790560305917694e-01, 3.350897686326997915e-01],
        [1.743682562241114509e-01, 1.676319105902342177e-01, 3.413798820958920399e-01],
        [1.772818953778146633e-01, 1.705846382439054620e-01, 3.477088809140311265e-01],
        [1.801603634233710782e-01, 1.735435075165488450e-01, 3.540447583078508709e-01],
        [1.829984949769703495e-01, 1.765034834295459432e-01, 3.604229741636628126e-01],
        [1.857993799242090571e-01, 1.794715454820642320e-01, 3.668060399217007994e-01],
        [1.885572370561371114e-01, 1.824432159549585208e-01, 3.732275719698777694e-01],
        [1.912746410827655397e-01, 1.854240146696699842e-01, 3.796579628109393312e-01],
        [1.939472187446417972e-01, 1.884119984733164943e-01, 3.861158710011389772e-01],
        [1.965746218202921169e-01, 1.914094687319768118e-01, 3.925922579541862301e-01],
        [1.991567237202455654e-01, 1.944185425759841768e-01, 3.990785276243757895e-01],
        [2.016870280617926170e-01, 1.974370231299186207e-01, 4.055979452145534458e-01],
        [2.041733231959791395e-01, 2.004720971993999568e-01, 4.121034638774260794e-01],
        [2.065989175964332847e-01, 2.035163285945146838e-01, 4.186611530978023854e-01],
        [2.089769981124778853e-01, 2.065792251897101139e-01, 4.252032229400294350e-01],
        [2.112968541690966595e-01, 2.096575161864902004e-01, 4.317649751357993670e-01],
        [2.135580062034990179e-01, 2.127534028876823524e-01, 4.383374070580626225e-01],
        [2.157654857120719361e-01, 2.158705959834085197e-01, 4.448946358553702574e-01],
        [2.179027467031688925e-01, 2.190056896370822792e-01, 4.514821666358075913e-01],
        [2.199801557481101399e-01, 2.221640817576028826e-01, 4.580565150394946827e-01],
        [2.219970327313536274e-01, 2.253470663668500351e-01, 4.646129330923238210e-01],
        [2.239359400161920477e-01, 2.285528452407099564e-01, 4.711900504070519191e-01],
        [2.258093253298022463e-01, 2.317859657097744996e-01, 4.777445723729306093e-01],
        [2.276150386234590539e-01, 2.350474802331274371e-01, 4.842749179389621017e-01],
        [2.293411129842480300e-01, 2.383375691596468227e-01, 4.908001225098672093e-01],
        [2.309905102772738528e-01, 2.416584626823640725e-01, 4.973037406011600603e-01],
        [2.325653899945122616e-01, 2.450118207268658921e-01, 5.037733153263704855e-01],
        [2.340634217066668299e-01, 2.483988011172711396e-01, 5.102061969115925244e-01],
        [2.354739391855478203e-01, 2.518205609488499142e-01, 5.166133649735229483e-01],
        [2.368010268106580107e-01, 2.552786891057904350e-01, 5.229787612622226467e-01],
        [2.380459056014049835e-01, 2.587743537954566575e-01, 5.292929958163873350e-01],
        [2.392069166726323859e-01, 2.623086175634496420e-01, 5.355517448643010159e-01],
        [2.402826487140223288e-01, 2.658824888638082751e-01, 5.417502762699162311e-01],
        [2.412690379036540600e-01, 2.694971451746652202e-01, 5.478870668064361737e-01],
        [2.421646534827242569e-01, 2.731536075359688454e-01, 5.539567283353189486e-01],
        [2.429737663975502504e-01, 2.768521950965758815e-01, 5.599478852923390759e-01],
        [2.436964271327693443e-01, 2.805934002738960653e-01, 5.658549936523274981e-01],
        [2.443331406488099544e-01, 2.843775500649446952e-01, 5.716723986670918523e-01],
        [2.448849019911867875e-01, 2.882047861966390290e-01, 5.773944132373918237e-01],
        [2.453532261044997220e-01, 2.920750479307156477e-01, 5.830154006066263772e-01],
        [2.457401707423141346e-01, 2.959880581924350662e-01, 5.885298594478888257e-01],
        [2.460483514874983180e-01, 2.999433136125404520e-01, 5.939325092217595525e-01],
        [2.462809480744551638e-01, 3.039400789577370587e-01, 5.992183735671519074e-01],
        [2.464417014302806019e-01, 3.079773862803035778e-01, 6.043828594654379049e-01],
        [2.465349011179689409e-01, 3.120540389489538935e-01, 6.094218299971551067e-01],
        [2.465653631589233563e-01, 3.161686205399514837e-01, 6.143316686920637926e-01],
        [2.465383985194727345e-01, 3.203195083804638021e-01, 6.191093337508785099e-01],
        [2.464597728499572371e-01, 3.245048913568406301e-01, 6.237524007769893464e-01],
        [2.463356583484295759e-01, 3.287227914401089635e-01, 6.282590930787467220e-01],
        [2.461725788681820570e-01, 3.329710882494058555e-01, 6.326282990625464731e-01],
        [2.459773495859159942e-01, 3.372475458788758984e-01, 6.368595767065934332e-01],
        [2.457570126857825388e-01, 3.415498411593856920e-01, 6.409531455573861392e-01],
        [2.455187705883344895e-01, 3.458755925146314025e-01, 6.449098671004442895e-01],
        [2.452699182619971774e-01, 3.502223885999685149e-01, 6.487312147029243858e-01],
        [2.450177761015216449e-01, 3.545878159769456084e-01, 6.524192345935843074e-01],
        [2.447696247503935441e-01, 3.589694851701816236e-01, 6.559764995268344556e-01],
        [2.445326430925611194e-01, 3.633650545677170052e-01, 6.594060568707836856e-01],
        [2.443138504548736933e-01, 3.677722517524962265e-01, 6.627113728687089589e-01],
        [2.441200538578628954e-01, 3.721888919827969766e-01, 6.658962747586536501e-01],
        [2.439578009410017234e-01, 3.766128936655925852e-01, 6.689648923098728828e-01],
        [2.438333389800677597e-01, 3.810422907829071337e-01, 6.719216001624749302e-01],
        [2.437527166088169217e-01, 3.854752048525493247e-01, 6.747709927211151815e-01],
        [2.437215868067584834e-01, 3.899098965838322384e-01, 6.775178104933975431e-01],
        [2.437449691034339061e-01, 3.943448306666547665e-01, 6.801668228779059744e-01],
        [2.438275942988586409e-01, 3.987785785872524635e-01, 6.827228592773180171e-01],
        [2.439737834704199804e-01, 4.032098481987659855e-01, 6.851907482426946583e-01],
        [2.441874434968405727e-01, 4.076374812199010655e-01, 6.875752826204606372e-01],
        [2.444720671645514987e-01, 4.120604493040472271e-01, 6.898811893971661391e-01],
        [2.448307373736109405e-01, 4.164778489638755743e-01, 6.921131040949622948e-01],
        [2.452661349520961487e-01, 4.208888956165576789e-01, 6.942755494834951246e-01],
        [2.457805495927352646e-01, 4.252929169900244166e-01, 6.963729183108620102e-01],
        [2.463758934401020784e-01, 4.296893461032649797e-01, 6.984094597147249006e-01],
        [2.470537168787759197e-01, 4.340777140051458871e-01, 7.003892689515083259e-01],
        [2.478152261001809742e-01, 4.384576424279668649e-01, 7.023162800736911793e-01],
        [2.486613020564674703e-01, 4.428288364849563008e-01, 7.041942611893784454e-01],
        [2.495925204424470634e-01, 4.471910775158167151e-01, 7.060268119517866259e-01],
        [2.506091723801374682e-01, 4.515442161617032046e-01, 7.078173629464002969e-01],
        [2.517112855138260996e-01, 4.558881657309074575e-01, 7.095691766682096224e-01],
        [2.528986452564736531e-01, 4.602228958990267071e-01, 7.112853498087290394e-01],
        [2.541708159598920491e-01, 4.645484267725444316e-01, 7.129688166009963135e-01],
        [2.555271618114321464e-01, 4.688648233323279846e-01, 7.146223529992972168e-01],
        [2.569668672886404326e-01, 4.731721902633665988e-01, 7.162485814980906751e-01],
        [2.584889570301312500e-01, 4.774706671689665227e-01, 7.178499764208978728e-01],
        [2.600923150060586719e-01, 4.817604241612176152e-01, 7.194288695343957762e-01],
        [2.617757028946650633e-01, 4.860416578147523370e-01, 7.209874558653309728e-01],
        [2.635377775926647237e-01, 4.903145874672710236e-01, 7.225277996180770046e-01],
        [2.653771078065290112e-01, 4.945794518478790480e-01, 7.240518401086443179e-01],
        [2.672921896891591875e-01, 4.988365060127348261e-01, 7.255613976468211490e-01],
        [2.692814615020625024e-01, 5.030860185666778950e-01, 7.270581793119333947e-01],
        [2.713433172968592322e-01, 5.073282691492603247e-01, 7.285437845796602918e-01],
        [2.734761196220429347e-01, 5.115635461637654258e-01, 7.300197107675363561e-01],
        [2.756782112712242161e-01, 5.157921447283394523e-01, 7.314873582754417569e-01],
        [2.779479260979498267e-01, 5.200143648290899145e-01, 7.329480356046209621e-01],
        [2.802835989294344965e-01, 5.242305096559424227e-01, 7.344029641448335255e-01],
        [2.826835746175559994e-01, 5.284408841030631132e-01, 7.358532827242095786e-01],
        [2.851462162701056124e-01, 5.326457934167407871e-01, 7.373000519204292447e-01],
        [2.876699127088762631e-01, 5.368455419747276691e-01, 7.387442581351216786e-01],
        [2.902530852036724895e-01, 5.410404321821302709e-01, 7.401868174359758079e-01],
        [2.928941935330091062e-01, 5.452307634699987693e-01, 7.416285791730816701e-01],
        [2.955917414230262996e-01, 5.494168313837994866e-01, 7.430703293775968721e-01],
        [2.983442814164117829e-01, 5.535989267498891975e-01, 7.445127939520038707e-01],
        [3.011504192226619470e-01, 5.577773349090259236e-01, 7.459566416621068452e-01],
        [3.040088176001567444e-01, 5.619523350067550105e-01, 7.474024869415085703e-01],
        [3.069181998192390681e-01, 5.661241993312904341e-01, 7.488508925197547850e-01],
        [3.098773527540035766e-01, 5.702931926901545490e-01, 7.503023718855809099e-01],
        [3.128851296485514188e-01, 5.744595718174968502e-01, 7.517573915968616127e-01],
        [3.159404526017212111e-01, 5.786235848045079289e-01, 7.532163734489466522e-01],
        [3.190423148119757579e-01, 5.827854705458642703e-01, 7.546796965130810886e-01],
        [3.221897826221614136e-01, 5.869454581955374506e-01, 7.561476990566410317e-01],
        [3.253819974015382255e-01, 5.911037666256608869e-01, 7.576206803568952264e-01],
        [3.286181773003176154e-01, 5.952606038824642676e-01, 7.590989024200323065e-01],
        [3.318976189096972118e-01, 5.994161666335501293e-01, 7.605825916172537227e-01],
        [3.352196988582024639e-01, 6.035706396009887786e-01, 7.620719402498039585e-01],
        [3.385838753729217276e-01, 6.077241949749224714e-01, 7.635671080549891743e-01],
        [3.419896898320652912e-01, 6.118769918024981047e-01, 7.650682236654324786e-01],
        [3.454367683330621941e-01, 6.160291753470886755e-01, 7.665753860341149029e-01],
        [3.489248232981658759e-01, 6.201808764128988738e-01, 7.680886658381395060e-01],
        [3.524536551372777216e-01, 6.243322106301375518e-01, 7.696081068746097875e-01],
        [3.560231539852872773e-01, 6.284832776960781464e-01, 7.711337274625911231e-01],
        [3.596333015286877766e-01, 6.326341605674558055e-01, 7.726655218657797475e-01],
        [3.632841729334435055e-01, 6.367849245998262742e-01, 7.742034617512983941e-01],
        [3.669759388831845826e-01, 6.409356166297031088e-01, 7.757474977008770312e-01],
        [3.707088677332940896e-01, 6.450862639955934341e-01, 7.772975607916928764e-01],
        [3.744833277827505080e-01, 6.492368734944050646e-01, 7.788535642652039126e-01],
        [3.782997896612683153e-01, 6.533874302701627723e-01, 7.804154053034927374e-01],
        [3.821588288242804832e-01, 6.575378966326091978e-01, 7.819829669338883571e-01],
        [3.860611281425825880e-01, 6.616882108040403887e-01, 7.835561200839490370e-01],
        [3.900074788490647260e-01, 6.658383310313947812e-01, 7.851343555476577585e-01],
        [3.939988161696960089e-01, 6.699882294160507401e-01, 7.867167620565498343e-01],
        [3.980361943268375668e-01, 6.741376428249236108e-01, 7.883041180552029514e-01],
        [4.021207666563880734e-01, 6.782863970632155848e-01, 7.898962603978111341e-01],
        [4.062538088695973326e-01, 6.824342860499125196e-01, 7.914930279577012673e-01],
        [4.104367215482290221e-01, 6.865810701317770492e-01, 7.930942653099937178e-01],
        [4.146710323688317379e-01, 6.907264743609855540e-01, 7.946998267750712275e-01],
        [4.189583979456862339e-01, 6.948701867544626598e-01, 7.963095808534970121e-01],
        [4.233007615496491849e-01, 6.990119462600449252e-01, 7.979223720379219342e-01],
        [4.277003131396773239e-01, 7.031514402219964932e-01, 7.995369318160842065e-01],
        [4.321588772737992579e-01, 7.072880516513097016e-01, 8.011551464379941256e-01],
        [4.366786594847170133e-01, 7.114212963902242226e-01, 8.027769966740599950e-01],
        [4.412619934972313862e-01, 7.155506445548852623e-01, 8.044025095123854552e-01],
        [4.459117519235324401e-01, 7.196756076604832186e-01, 8.060302209280784114e-01],
        [4.506310977664646500e-01, 7.237956107627850910e-01, 8.076586979980320269e-01],
        [4.554220533607292176e-01, 7.279097909870729799e-01, 8.092910180447286939e-01],
        [4.602874296132978826e-01, 7.320174174690982083e-01, 8.109274975540664565e-01],
        [4.652312929955615961e-01, 7.361178015074247849e-01, 8.125654680881110314e-01],
        [4.702567132124945704e-01, 7.402100378643735601e-01, 8.142058631482380626e-01],
        [4.753658389170350440e-01, 7.442931579112735951e-01, 8.158518248191980460e-01],
        [4.805629989896973986e-01, 7.483662565565446512e-01, 8.175014285494428545e-01],
        [4.858519412014848382e-01, 7.524283052190463561e-01, 8.191547180510726500e-01],
        [4.912340123610521858e-01, 7.564782715855419282e-01, 8.208164230788980165e-01],
        [4.967149567998503934e-01, 7.605150334733405959e-01, 8.224828836016547795e-01],
        [5.022958597070651399e-01, 7.645375459922270078e-01, 8.241590313627700226e-01],
        [5.079798024989584659e-01, 7.685447202464326111e-01, 8.258458806918314021e-01],
        [5.137703056538149848e-01, 7.725354056237694333e-01, 8.275437918161917539e-01],
        [5.196672668780889515e-01, 7.765087356564679411e-01, 8.292580362563429786e-01],
        [5.256748803701343231e-01, 7.804635126371105569e-01, 8.309874864714956733e-01],
        [5.317909415132198170e-01, 7.843991695298314637e-01, 8.327389435984492438e-01],
        [5.380183963455860141e-01, 7.883146743347385632e-01, 8.345120959574837682e-01],
        [5.443539980151446134e-01, 7.922097498034269547e-01, 8.363133084981756449e-01],
        [5.507978944105677011e-01, 7.960838061951434064e-01, 8.381442735434428970e-01],
        [5.573464847507825226e-01, 7.999368256977259506e-01, 8.400099169225816453e-01],
        [5.639964685183691540e-01, 8.037688733081099768e-01, 8.419139099857662067e-01],
        [5.707439504576503619e-01, 8.075802108116317823e-01, 8.438596871365160457e-01],
        [5.775827793152761291e-01, 8.113715803382598457e-01, 8.458518352418533670e-01],
        [5.845080419432422403e-01, 8.151436572177973572e-01, 8.478930504633812593e-01],
        [5.915124079987543748e-01, 8.188976525325087907e-01, 8.499872730184475644e-01],
        [5.985892343607183141e-01, 8.226347979507546704e-01, 8.521371651406997039e-01],
        [6.057310635784716180e-01, 8.263566000070049489e-01, 8.543453938014868854e-01],
        [6.129312041392928068e-01, 8.300645419348708920e-01, 8.566135671784518291e-01],
        [6.201810118833709362e-01, 8.337606033851390208e-01, 8.589441737734759830e-01],
        [6.274752226888651307e-01, 8.374461999354567698e-01, 8.613371235909390577e-01],
        [6.348052546879014990e-01, 8.411235111538640785e-01, 8.637941988526561810e-01],
        [6.421662450761786989e-01, 8.447940336859747212e-01, 8.663146822269915948e-01],
        [6.495514829538971968e-01, 8.484597208451428729e-01, 8.688988750843767983e-01],
        [6.569557263949438175e-01, 8.521222755106645508e-01, 8.715461474797051578e-01],
        [6.643745794481599187e-01, 8.557832593714448377e-01, 8.742554091588357057e-01],
        [6.718027324561179903e-01, 8.594444859176019191e-01, 8.770260761340837874e-01],
        [6.792376399817107169e-01, 8.631071655185147407e-01, 8.798561771298264444e-01],
        [6.866744996748753715e-01, 8.667730629390760777e-01, 8.827449654904524490e-01],
        [6.941118238786820882e-01, 8.704431765687035139e-01, 8.856901351703097003e-01],
        [7.015458707010223671e-01, 8.741190620646153153e-01, 8.886905723641257415e-01],
        [7.089754732757992395e-01, 8.778016574148082007e-01, 8.917440383282461136e-01],
        [7.163982330943452492e-01, 8.814922113687924110e-01, 8.948489665590808606e-01],
        [7.238129051546876580e-01, 8.851916892315870866e-01, 8.980033539675886800e-01],
        [7.312183003174410612e-01, 8.889010427774228784e-01, 9.012052612065797330e-01],
        [7.386131643998257168e-01, 8.926212432189428725e-01, 9.044528466250297827e-01],
        [7.459969493141647146e-01, 8.963530775374040083e-01, 9.077440285167398537e-01],
        [7.533688986576650981e-01, 9.000973872698678768e-01, 9.110768604175860652e-01],
        [7.607282142588290830e-01, 9.038550280130126513e-01, 9.144494382489702922e-01],
        [7.680754104857114850e-01, 9.076264985347726189e-01, 9.178593407704264129e-01],
        [7.754086380463782735e-01, 9.114129489376284754e-01, 9.213050832886523489e-01],
        [7.827298656902449414e-01, 9.152144780056820084e-01, 9.247836307542580681e-01],
        [7.900362445563153813e-01, 9.190325332798994218e-01, 9.282937907772289554e-01],
        [7.973305798287271262e-01, 9.228669845876559252e-01, 9.318320585938411060e-01],
        [8.046093603619434154e-01, 9.267195025159972177e-01, 9.353972761089011101e-01],
        [8.118762521869845594e-01, 9.305897288106829146e-01, 9.389853083637165199e-01],
        [8.191262403047088192e-01, 9.344798221317863751e-01, 9.425952041745783161e-01],
        [8.263649511242520118e-01, 9.383888950299160703e-01, 9.462215400179357916e-01],
        [8.335857899787124659e-01, 9.423196480542496145e-01, 9.498633823775902707e-01],
        [8.407925617377357552e-01, 9.462718000641171523e-01, 9.535152044674145566e-01],
        [8.479820749115867251e-01, 9.502471776949116267e-01, 9.571737430642662803e-01],
        [8.551509499643907830e-01, 9.542477482079624318e-01, 9.608352118692636834e-01],
        [8.623025919332756306e-01, 9.582735696851335527e-01, 9.644920284238761576e-01],
        [8.694298092423108359e-01, 9.623279528450340292e-01, 9.681401921277593692e-01],
        [8.765283703934805271e-01, 9.664134798374283131e-01, 9.717733036205912223e-01],
        [8.835932645286533882e-01, 9.705331352089504593e-01, 9.753839343072715495e-01],
        [8.906174074108087479e-01, 9.746907136098538205e-01, 9.789640951138071090e-01],
        [8.975917485137434593e-01, 9.788908041054119602e-01, 9.825051528035059212e-01],
        [9.045013427138774986e-01, 9.831399005223971921e-01, 9.860005773650694083e-01],
        [9.113300542301955298e-01, 9.874449459956177177e-01, 9.894442642623689776e-01],
        [9.180592960081255249e-01, 9.918135358838490179e-01, 9.928328638314803944e-01]];

% Interpolate to requested number of colors.

P = size(cmap,1);

if (P ~= M)
  cmap = interp1(1:size(cmap,1), cmap, linspace(1,P,M), 'linear');
end

return
