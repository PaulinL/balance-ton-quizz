◊
gD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Configuration\Config.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Configuration +
{ 
public 

class 
Config 
{ 
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Æh
mD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Configuration\ConfigLoader.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Configuration +
{ 
public 

class 
ConfigLoader 
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_log- 1
=2 3
log4net4 ;
.; <

LogManager< F
.F G
	GetLoggerG P
(P Q
typeofQ W
(W X
ConfigLoaderX d
)d e
)e f
;f g
private 
const 
string 
NODE_CONFIG (
=) *
$str+ 3
;3 4
private 
const 
string 
NODE_ADDRESS )
=* +
$str, 5
;5 6
private 
const 
string 
NODE_TESTCASES +
=, -
$str. 9
;9 :
private 
const 
string 
NODE_SUSCRIBETC ,
=- .
$str/ A
;A B
private 
const 
string 
NODE_LOGINTC )
=* +
$str, ;
;; <
private 
const 
string 
NODE_USERNAME *
=+ ,
$str- 7
;7 8
private 
const 
string 
NODE_PASSWORD *
=+ ,
$str- 7
;7 8
private 
const 
string 
NODE_CREATEQUIZZTC /
=0 1
$str2 G
;G H
private 
const 
string 
NODE_TITLEQUIZZ ,
=- .
$str/ 6
;6 7
private 
const 
string 
NODE_DESCQUIZZ +
=, -
$str. ;
;; <
private 
const 
string 
NODE_PATHPICTURE -
=. /
$str0 =
;= >
private 
const 
string 

NODE_THEME '
=( )
$str* 1
;1 2
private 
const 
string 
NODE_Q1 $
=% &
$str' 2
;2 3
private 
const 
string 
NODE_R1 $
=% &
$str' 1
;1 2
private 
const 
string 
	NODE_R1_2 &
=' (
$str) 5
;5 6
private 
const 
string 
NODE_Q2 $
=% &
$str' 2
;2 3
private   
const   
string   
NODE_R2   $
=  % &
$str  ' 1
;  1 2
public)) 
Config)) 
LoadGlobalConfig)) &
())& '
string))' -
url)). 1
)))1 2
{** 	
_log++ 
.++ 
Info++ 
(++ 
$str++ 7
)++7 8
;++8 9
var-- 
doc-- 
=-- 
	XDocument-- 
.--  
Load--  $
(--$ %
url--% (
)--( )
;--) *
var.. 
root.. 
=.. 
doc.. 
... 
Element.. "
(.." #
NODE_CONFIG..# .
)... /
;../ 0
if// 
(// 
root// 
==// 
null// 
)// 
{00 
Console11 
.11 
	WriteLine11 !
(11! "
$str11" E
)11E F
;11F G
return22 
null22 
;22 
}33 
var55 
config55 
=55 
new55 
Config55 #
(55# $
)55$ %
{66 
Address77 
=77 
root77 
.77 
Element77 &
(77& '
NODE_ADDRESS77' 3
)773 4
.774 5
Value775 :
,77: ;
}88 
;88 
_log:: 
.:: 
Info:: 
(:: 
$str:: 6
)::6 7
;::7 8
return;; 
config;; 
;;; 
}<< 	
publicFF 
ConfigTCLoginFF 
LoadConfigTCLoginFF .
(FF. /
stringFF/ 5
urlFF6 9
)FF9 :
{GG 	
_logHH 
.HH 
InfoHH 
(HH 
$strHH 7
)HH7 8
;HH8 9
varJJ 
docJJ 
=JJ 
	XDocumentJJ 
.JJ  
LoadJJ  $
(JJ$ %
urlJJ% (
)JJ( )
;JJ) *
varKK 
rootKK 
=KK 
docKK 
.KK 
ElementKK "
(KK" #
NODE_CONFIGKK# .
)KK. /
;KK/ 0
ifLL 
(LL 
rootLL 
==LL 
nullLL 
)LL 
{MM 
ConsoleNN 
.NN 
	WriteLineNN !
(NN! "
$strNN" E
)NNE F
;NNF G
returnOO 
nullOO 
;OO 
}PP 
varRR 
configRR 
=RR 
newRR 
ConfigTCLoginRR *
(RR* +
)RR+ ,
{SS 
UsernameTT 
=TT 
rootTT 
.TT  
ElementTT  '
(TT' (
NODE_TESTCASESTT( 6
)TT6 7
.TT7 8
ElementTT8 ?
(TT? @
NODE_LOGINTCTT@ L
)TTL M
.TTM N
ElementTTN U
(TTU V
NODE_USERNAMETTV c
)TTc d
.TTd e
ValueTTe j
,TTj k
PasswordUU 
=UU 
rootUU 
.UU  
ElementUU  '
(UU' (
NODE_TESTCASESUU( 6
)UU6 7
.UU7 8
ElementUU8 ?
(UU? @
NODE_LOGINTCUU@ L
)UUL M
.UUM N
ElementUUN U
(UUU V
NODE_PASSWORDUUV c
)UUc d
.UUd e
ValueUUe j
}VV 
;VV 
_logXX 
.XX 
InfoXX 
(XX 
$strXX 2
)XX2 3
;XX3 4
returnYY 
configYY 
;YY 
}ZZ 	
publicaa 
ConfigTCCreateQuizzaa "#
LoadConfigTCCreateQuizzaa# :
(aa: ;
stringaa; A
urlaaB E
)aaE F
{bb 	
_logcc 
.cc 
Infocc 
(cc 
$strcc 7
)cc7 8
;cc8 9
varee 
docee 
=ee 
	XDocumentee 
.ee  
Loadee  $
(ee$ %
urlee% (
)ee( )
;ee) *
varff 
rootff 
=ff 
docff 
.ff 
Elementff "
(ff" #
NODE_CONFIGff# .
)ff. /
;ff/ 0
ifgg 
(gg 
rootgg 
==gg 
nullgg 
)gg 
{hh 
Consoleii 
.ii 
	WriteLineii !
(ii! "
$strii" E
)iiE F
;iiF G
returnjj 
nulljj 
;jj 
}kk 
varmm 
configmm 
=mm 
newmm 
ConfigTCCreateQuizzmm 0
(mm0 1
)mm1 2
{nn 

TitleQuizzoo 
=oo 
rootoo !
.oo! "
Elementoo" )
(oo) *
NODE_TESTCASESoo* 8
)oo8 9
.oo9 :
Elementoo: A
(ooA B
NODE_CREATEQUIZZTCooB T
)ooT U
.ooU V
ElementooV ]
(oo] ^
NODE_TITLEQUIZZoo^ m
)oom n
.oon o
Valueooo t
,oot u
DescriptionQuizzpp  
=pp! "
rootpp# '
.pp' (
Elementpp( /
(pp/ 0
NODE_TESTCASESpp0 >
)pp> ?
.pp? @
Elementpp@ G
(ppG H
NODE_CREATEQUIZZTCppH Z
)ppZ [
.pp[ \
Elementpp\ c
(ppc d
NODE_DESCQUIZZppd r
)ppr s
.pps t
Valueppt y
,ppy z
PathPictureqq 
=qq 
rootqq "
.qq" #
Elementqq# *
(qq* +
NODE_TESTCASESqq+ 9
)qq9 :
.qq: ;
Elementqq; B
(qqB C
NODE_CREATEQUIZZTCqqC U
)qqU V
.qqV W
ElementqqW ^
(qq^ _
NODE_PATHPICTUREqq_ o
)qqo p
.qqp q
Valueqqq v
,qqv w
Themerr 
=rr 
rootrr 
.rr 
Elementrr $
(rr$ %
NODE_TESTCASESrr% 3
)rr3 4
.rr4 5
Elementrr5 <
(rr< =
NODE_CREATEQUIZZTCrr= O
)rrO P
.rrP Q
ElementrrQ X
(rrX Y

NODE_THEMErrY c
)rrc d
.rrd e
Valuerre j
,rrj k
	Question1ss 
=ss 
rootss  
.ss  !
Elementss! (
(ss( )
NODE_TESTCASESss) 7
)ss7 8
.ss8 9
Elementss9 @
(ss@ A
NODE_CREATEQUIZZTCssA S
)ssS T
.ssT U
ElementssU \
(ss\ ]
NODE_Q1ss] d
)ssd e
.sse f
Valuessf k
,ssk l
}tt 
;tt 
configvv 
.vv 
Reponse1vv 
.vv 
Addvv 
(vv  
rootvv  $
.vv$ %
Elementvv% ,
(vv, -
NODE_TESTCASESvv- ;
)vv; <
.vv< =
Elementvv= D
(vvD E
NODE_CREATEQUIZZTCvvE W
)vvW X
.vvX Y
ElementvvY `
(vv` a
NODE_R1vva h
)vvh i
.vvi j
Valuevvj o
)vvo p
;vvp q
configww 
.ww 
Reponse1ww 
.ww 
Addww 
(ww  
rootww  $
.ww$ %
Elementww% ,
(ww, -
NODE_TESTCASESww- ;
)ww; <
.ww< =
Elementww= D
(wwD E
NODE_CREATEQUIZZTCwwE W
)wwW X
.wwX Y
ElementwwY `
(ww` a
	NODE_R1_2wwa j
)wwj k
.wwk l
Valuewwl q
)wwq r
;wwr s
configxx 
.xx 
Reponse2xx 
.xx 
Addxx 
(xx  
rootxx  $
.xx$ %
Elementxx% ,
(xx, -
NODE_TESTCASESxx- ;
)xx; <
.xx< =
Elementxx= D
(xxD E
NODE_CREATEQUIZZTCxxE W
)xxW X
.xxX Y
ElementxxY `
(xx` a
NODE_R2xxa h
)xxh i
.xxi j
Valuexxj o
)xxo p
;xxp q
_logzz 
.zz 
Infozz 
(zz 
$strzz 8
)zz8 9
;zz9 :
return{{ 
config{{ 
;{{ 
}|| 	
public
ÉÉ 
ConfigTCSuscribe
ÉÉ "
LoadConfigTCSuscribe
ÉÉ  4
(
ÉÉ4 5
string
ÉÉ5 ;
url
ÉÉ< ?
)
ÉÉ? @
{
ÑÑ 	
_log
ÖÖ 
.
ÖÖ 
Info
ÖÖ 
(
ÖÖ 
$str
ÖÖ 7
)
ÖÖ7 8
;
ÖÖ8 9
var
áá 
doc
áá 
=
áá 
	XDocument
áá 
.
áá  
Load
áá  $
(
áá$ %
url
áá% (
)
áá( )
;
áá) *
var
àà 
root
àà 
=
àà 
doc
àà 
.
àà 
Element
àà "
(
àà" #
NODE_CONFIG
àà# .
)
àà. /
;
àà/ 0
if
ââ 
(
ââ 
root
ââ 
==
ââ 
null
ââ 
)
ââ 
{
ää 
Console
ãã 
.
ãã 
	WriteLine
ãã !
(
ãã! "
$str
ãã" E
)
ããE F
;
ããF G
return
åå 
null
åå 
;
åå 
}
çç 
var
èè 
config
èè 
=
èè 
new
èè 
ConfigTCSuscribe
èè -
(
èè- .
)
èè. /
{
êê 
Username
ëë 
=
ëë 
root
ëë 
.
ëë  
Element
ëë  '
(
ëë' (
NODE_TESTCASES
ëë( 6
)
ëë6 7
.
ëë7 8
Element
ëë8 ?
(
ëë? @
NODE_SUSCRIBETC
ëë@ O
)
ëëO P
.
ëëP Q
Element
ëëQ X
(
ëëX Y
NODE_USERNAME
ëëY f
)
ëëf g
.
ëëg h
Value
ëëh m
,
ëëm n
Password
íí 
=
íí 
root
íí 
.
íí  
Element
íí  '
(
íí' (
NODE_TESTCASES
íí( 6
)
íí6 7
.
íí7 8
Element
íí8 ?
(
íí? @
NODE_SUSCRIBETC
íí@ O
)
ííO P
.
ííP Q
Element
ííQ X
(
ííX Y
NODE_PASSWORD
ííY f
)
ííf g
.
ííg h
Value
ííh m
}
ìì 
;
ìì 
_log
ïï 
.
ïï 
Info
ïï 
(
ïï 
$str
ïï 5
)
ïï5 6
;
ïï6 7
return
ññ 
config
ññ 
;
ññ 
}
óó 	
}
™™ 
}´´ ·
tD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Configuration\ConfigTCCreateQuizz.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Configuration +
{ 
public 

class 
ConfigTCCreateQuizz $
{ 
public 
string 

TitleQuizz  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
DescriptionQuizz &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
string		 
PathPicture		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
Theme

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
	Question1 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
string 
> 
Reponse1 $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
	Question2 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
string 
> 
Reponse2 $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ConfigTCCreateQuizz "
(" #
)# $
{ 	
Reponse1 
= 
new 
List 
<  
string  &
>& '
(' (
)( )
;) *
Reponse2 
= 
new 
List 
<  
string  &
>& '
(' (
)( )
;) *
} 	
} 
} Ç
nD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Configuration\ConfigTCLogin.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Configuration +
{ 
public 

class 
ConfigTCLogin 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} à
qD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Configuration\ConfigTCSuscribe.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Configuration +
{ 
public 

class 
ConfigTCSuscribe !
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ñ
`D:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Entities\Task.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Entities &
{ 
public 

class 
Task 
{ 
public		 
DateTime		 
	StartDate		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
DateTime

 
EndDate

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Result 
Result 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ErrorMessage "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
string 
> 
	ListValue %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
Task 
( 
) 
{ 	
	StartDate 
= 
DateTime  
.  !
Now! $
;$ %
	ListValue 
= 
new 
List  
<  !
string! '
>' (
(( )
)) *
;* +
} 	
public 
void 
	CloseTask 
( 
) 
{ 	
EndDate   
=   
DateTime   
.   
Now   "
;  " #
}!! 	
public'' 
void'' 
	SetResult'' 
('' 
Result'' $
result''% +
)''+ ,
{(( 	
Result)) 
=)) 
result)) 
;)) 
}** 	
public00 
void00 
SetValue00 
(00 
string00 #
value00$ )
)00) *
{11 	
	ListValue22 
.22 
Add22 
(22 
value22 
)22  
;22  !
}33 	
public99 
void99 
SetErrorMessage99 #
(99# $
string99$ *
message99+ 2
)992 3
{:: 	
ErrorMessage;; 
=;; 
message;; "
;;;" #
}<< 	
}== 
}>> à
hD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Entities\TestCampaign.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Entities &
{ 
public 

class 
TestCampaign 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
DateTime		 
	StartDate		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
DateTime

 
EndDate

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
List 
< 
TestCase 
> 
	TestCases '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
TestCampaign 
( 
) 
{ 	
Name 
= 
$str "
;" #
	StartDate 
= 
DateTime  
.  !
Now! $
;$ %
	TestCases 
= 
new 
List  
<  !
TestCase! )
>) *
(* +
)+ ,
;, -
} 	
public 
void 
CloseCampaign !
(! "
)" #
{ 	
EndDate 
= 
DateTime 
. 
Now "
;" #
} 	
} 
} ç
dD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Entities\TestCase.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Entities &
{		 
abstract 
public 
class 
TestCase "
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
public"" 
Result"" 
Result"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public&& 

IWebDriver&& 
Driver&&  
{&&! "
get&&# &
;&&& '
set&&( +
;&&+ ,
}&&- .
public** 
string** 
PathMap** 
{** 
get**  #
;**# $
set**% (
;**( )
}*** +
public.. 
List.. 
<.. 
Task.. 
>.. 
Tasks.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
public22 
ConfigLoader22 
ConfigLoader22 (
{22) *
get22+ .
;22. /
set220 3
;223 4
}225 6
public88 
abstract88 
bool88 
Execute88 $
(88$ %
)88% &
;88& '
public== 
abstract== 
void== 
LoadConfigTC== )
(==) *
)==* +
;==+ ,
publicDD 
voidDD 
StartTestCaseDD !
(DD! "
)DD" #
{EE 	
	StartDateFF 
=FF 
DateTimeFF  
.FF  !
NowFF! $
;FF$ %
}GG 	
publicLL 
voidLL 
CloseTestCaseLL !
(LL! "
)LL" #
{MM 	
EndDateNN 
=NN 
DateTimeNN 
.NN 
NowNN "
;NN" #
}OO 	
publicTT 
voidTT 
	SetResultTT 
(TT 
)TT 
{UU 	
ifVV 
(VV 
TasksVV 
.VV 
SelectVV 
(VV 
xVV 
=>VV  
xVV! "
.VV" #
ResultVV# )
.VV) *
EqualsVV* 0
(VV0 1
ResultVV1 7
.VV7 8
PASSEDVV8 >
)VV> ?
)VV? @
.VV@ A
CountVVA F
(VVF G
)VVG H
==VVI K
TasksVVL Q
.VVQ R
CountVVR W
(VVW X
)VVX Y
)VVY Z
ResultWW 
=WW 
ResultWW 
.WW  
PASSEDWW  &
;WW& '
elseXX 
ResultYY 
=YY 
ResultYY 
.YY  
FAILEDYY  &
;YY& '
}ZZ 	
}]] 
}^^ ˜
fD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Entities\WebElement.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Entities &
{ 
public 

class 

WebElement 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
WebElementType 
Type "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 

WebElement 
( 
string !
name" &
,& '
string( .
pathMap/ 6
)6 7
{   	
var!! 

listParams!! 
=!! 
WebElementManager!! .
.!!. /
LoadWebElementMap!!/ @
(!!@ A
name!!A E
,!!E F
pathMap!!G N
)!!N O
;!!O P
Name"" 
="" 

listParams"" 
."" 
	ElementAt"" '
(""' (
$num""( )
)"") *
;""* +
Type## 
=## 
(## 
WebElementType## "
)##" #
Enum### '
.##' (
Parse##( -
(##- .
typeof##. 4
(##4 5
WebElementType##5 C
)##C D
,##D E

listParams##F P
.##P Q
	ElementAt##Q Z
(##Z [
$num##[ \
)##\ ]
)##] ^
;##^ _
Id$$ 
=$$ 

listParams$$ 
.$$ 
	ElementAt$$ %
($$% &
$num$$& '
)$$' (
;$$( )
}%% 	
}&& 
}'' Ñ
_D:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Enums\Result.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Enums #
{ 
public 

enum 
Result 
{ 
PASSED 
, 
ERROR		 
,		 
FAILED

 
} 
} ç
gD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Enums\WebElementType.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Enums #
{ 
public 

enum 
WebElementType 
{ 
Class 
, 
Tag		 
,		 
Id

 

} 
} îY
ZD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Program.cs
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *

ConfigFile* 4
=5 6
$str7 G
)G H
]H I
	namespace 	
TestBalanceTonQuizz
 
{ 
public 

static 
class 
Program 
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_log- 1
=2 3
log4net4 ;
.; <

LogManager< F
.F G
	GetLoggerG P
(P Q
SystemQ W
.W X

ReflectionX b
.b c

MethodBasec m
.m n
GetCurrentMethodn ~
(~ 
)	 Ä
.
Ä Å
DeclaringType
Å é
)
é è
;
è ê
private 
static 
ConfigLoader #
_configLoader$ 1
;1 2
private 
static 

IWebDriver !
driver" (
;( )
private 
static 
ReportManager $
_reportManager% 3
;3 4
private 
static 
TestCampaign #
campaign$ ,
;, -
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
_log 
. 
Info 
( 
$str /
+0 1
DateTime2 :
.: ;
Now; >
.> ?
ToString? G
(G H
$strH ]
)] ^
+_ `
$stra w
)w x
;x y
_log   
.   
Info   
(   
$str   /
)  / 0
;  0 1
if"" 
("" 
args"" 
."" 
Count"" 
("" 
)"" 
>"" 
$num""  
)""  !
{## 
_log$$ 
.$$ 
Error$$ 
($$ 
$str$$ /
)$$/ 0
;$$0 1
Help%% 
(%% 
)%% 
;%% 
return&& 
;&& 
}'' 
var)) 
jsonFile)) 
=)) 
args)) 
[))  
args))  $
.))$ %
Length))% +
-)), -
$num)). /
]))/ 0
;))0 1
_log** 
.** 
Info** 
(** 
$str** .
+**/ 0
jsonFile**1 9
)**9 :
;**: ;
_configLoader-- 
=-- 
new-- 
ConfigLoader--  ,
(--, -
)--- .
;--. /
var.. 
config.. 
=.. 
_configLoader.. &
...& '
LoadGlobalConfig..' 7
(..7 8
Path..8 <
...< =
Combine..= D
(..D E
Environment..E P
...P Q
CurrentDirectory..Q a
,..a b
$str..c o
)..o p
)..p q
;..q r
_reportManager// 
=// 
new//  
ReportManager//! .
(//. /
)/// 0
;//0 1
if22 
(22 
!22 
OpenWebSite22 
(22 
config22 "
.22" #
Address22# *
)22* +
)22+ ,
{33 
_log44 
.44 
Error44 
(44 
$str44 5
)445 6
;446 7
return55 
;55 
}66 
campaign99 
=99 
new99 
TestCampaign99 '
(99' (
)99( )
;99) *
campaign:: 
.:: 
	TestCases:: 
.:: 
Add:: "
(::" #
new::# &
SuscribeTestcase::' 7
(::7 8
driver::8 >
,::> ?
Path::@ D
.::D E
Combine::E L
(::L M
Environment::M X
.::X Y
CurrentDirectory::Y i
,::i j
$str::k q
,::q r
$str	::s Ä
)
::Ä Å
)
::Å Ç
)
::Ç É
;
::É Ñ
campaign;; 
.;; 
	TestCases;; 
.;; 
Add;; "
(;;" #
new;;# &
LogoutTestcase;;' 5
(;;5 6
driver;;6 <
,;;< =
Path;;> B
.;;B C
Combine;;C J
(;;J K
Environment;;K V
.;;V W
CurrentDirectory;;W g
,;;g h
$str;;i o
,;;o p
$str;;q ~
);;~ 
)	;; Ä
)
;;Ä Å
;
;;Å Ç
campaign<< 
.<< 
	TestCases<< 
.<< 
Add<< "
(<<" #
new<<# &
LoginTestCase<<' 4
(<<4 5
driver<<5 ;
,<<; <
Path<<= A
.<<A B
Combine<<B I
(<<I J
Environment<<J U
.<<U V
CurrentDirectory<<V f
,<<f g
$str<<h n
,<<n o
$str<<p }
)<<} ~
)<<~ 
)	<< Ä
;
<<Ä Å
campaign== 
.== 
	TestCases== 
.== 
Add== "
(==" #
new==# &
CreateQuizzTestcase==' :
(==: ;
driver==; A
,==A B
Path==C G
.==G H
Combine==H O
(==O P
Environment==P [
.==[ \
CurrentDirectory==\ l
,==l m
$str==n t
,==t u
$str	==v å
)
==å ç
)
==ç é
)
==é è
;
==è ê
var@@ 
listTestcaseName@@  
=@@! "
getAllTestCaseName@@# 5
(@@5 6
jsonFile@@6 >
)@@> ?
;@@? @
foreachAA 
(AA 
varAA 
tcNameAA 
inAA !
listTestcaseNameAA" 2
)AA2 3
{BB 
varCC 
tcCC 
=CC 
campaignCC !
.CC! "
	TestCasesCC" +
.CC+ ,
FirstCC, 1
(CC1 2
xCC2 3
=>CC4 6
xCC7 8
.CC8 9
NameCC9 =
.CC= >
EqualsCC> D
(CCD E
tcNameCCE K
)CCK L
)CCL M
;CCM N
tcEE 
.EE 
LoadConfigTCEE 
(EE  
)EE  !
;EE! "
tcFF 
.FF 
StartTestCaseFF  
(FF  !
)FF! "
;FF" #
tcGG 
.GG 
ExecuteGG 
(GG 
)GG 
;GG 
tcHH 
.HH 
CloseTestCaseHH  
(HH  !
)HH! "
;HH" #
tcII 
.II 
	SetResultII 
(II 
)II 
;II 
}JJ 
driverLL 
.LL 
CloseLL 
(LL 
)LL 
;LL 
campaignMM 
.MM 
CloseCampaignMM "
(MM" #
)MM# $
;MM$ %
_reportManagerPP 
.PP 
BuildReportPP &
(PP& '
campaignPP' /
)PP/ 0
;PP0 1
_reportManagerQQ 
.QQ 

OpenReportQQ %
(QQ% &
configQQ& ,
,QQ, -
campaignQQ. 6
)QQ6 7
;QQ7 8
_logSS 
.SS 
InfoSS 
(SS 
$strSS #
)SS# $
;SS$ %
_logTT 
.TT 
InfoTT 
(TT 
$strTT 0
)TT0 1
;TT1 2
ConsoleUU 
.UU 
ReadKeyUU 
(UU 
)UU 
;UU 
}VV 	
static[[ 
void[[ 
Help[[ 
([[ 
)[[ 
{\\ 	
_log]] 
.]] 
Info]] 
(]] 
$str]] c
)]]c d
;]]d e
_log^^ 
.^^ 
Info^^ 
(^^ 
$str^^ $
)^^$ %
;^^% &
_log__ 
.__ 
Info__ 
(__ 
$str__ '
)__' (
;__( )
}`` 	
staticgg 
Listgg 
<gg 
stringgg 
>gg 
getAllTestCaseNamegg .
(gg. /
stringgg/ 5
jsonFilegg6 >
)gg> ?
{hh 	
Listii 
<ii 
stringii 
>ii 
testCaseFoundii &
=ii' (
newii) ,
Listii- 1
<ii1 2
stringii2 8
>ii8 9
(ii9 :
)ii: ;
;ii; <
varjj 
textjj 
=jj 
Filejj 
.jj 
ReadAllTextjj '
(jj' (
Pathjj( ,
.jj, -
Combinejj- 4
(jj4 5
Environmentjj5 @
.jj@ A
CurrentDirectoryjjA Q
,jjQ R
jsonFilejjS [
)jj[ \
)jj\ ]
;jj] ^
JObjectll 
jsonll 
=ll 
JObjectll "
.ll" #
Parsell# (
(ll( )
textll) -
)ll- .
;ll. /
foreachnn 
(nn 
varnn 
tcnn 
innn 
jsonnn #
[nn# $
$strnn$ /
]nn/ 0
)nn0 1
{oo 
_logpp 
.pp 
Infopp 
(pp 
$strpp -
+pp. /
tcpp0 2
.pp2 3
ToStringpp3 ;
(pp; <
)pp< =
)pp= >
;pp> ?
testCaseFoundqq 
.qq 
Addqq !
(qq! "
tcqq" $
.qq$ %
ToStringqq% -
(qq- .
)qq. /
)qq/ 0
;qq0 1
}rr 
returntt 
testCaseFoundtt  
;tt  !
}uu 	
public{{ 
static{{ 
bool{{ 
OpenWebSite{{ &
({{& '
string{{' -
url{{. 1
){{1 2
{|| 	
try}} 
{~~ 
driver 
= 
new 
ChromeDriver )
() *
)* +
;+ ,
driver
ÄÄ 
.
ÄÄ 
Manage
ÄÄ 
(
ÄÄ 
)
ÄÄ 
.
ÄÄ  
Window
ÄÄ  &
.
ÄÄ& '
Maximize
ÄÄ' /
(
ÄÄ/ 0
)
ÄÄ0 1
;
ÄÄ1 2
driver
ÅÅ 
.
ÅÅ 
Navigate
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
.
ÅÅ! "
GoToUrl
ÅÅ" )
(
ÅÅ) *
url
ÅÅ* -
)
ÅÅ- .
;
ÅÅ. /
Thread
ÇÇ 
.
ÇÇ 
Sleep
ÇÇ 
(
ÇÇ 
$num
ÇÇ !
)
ÇÇ! "
;
ÇÇ" #
return
ÉÉ 
true
ÉÉ 
;
ÉÉ 
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ 
e
ÖÖ 
)
ÖÖ 
{
ÜÜ 
_log
áá 
.
áá 
Error
áá 
(
áá 
e
áá 
.
áá 

StackTrace
áá '
)
áá' (
;
áá( )
_log
àà 
.
àà 
Error
àà 
(
àà 
$str
àà N
)
ààN O
;
ààO P
return
ââ 
false
ââ 
;
ââ 
}
ää 
}
ãã 	
}
çç 
}éé ∆å
gD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Report\ReportManager.cs
	namespace 	
TestBalanceTonQuizz
 
. 
Report $
{		 
public 

class 
ReportManager 
{ 
private 
static 
string 
pathReportFolder .
;. /
private 
static 
string 
pathFileStyle +
;+ ,
private 
static 
string 
html "
;" #
public 
ReportManager 
( 
) 
{ 	
pathReportFolder 
= 
Path #
.# $
Combine$ +
(+ ,
Environment, 7
.7 8
CurrentDirectory8 H
,H I
$strJ S
)S T
;T U
pathFileStyle 
= 
Path  
.  !
Combine! (
(( )
$str) 0
,0 1
$str2 =
)= >
;> ?
} 	
public 
void 
BuildReport 
(  
TestCampaign  ,
testCampaign- 9
)9 :
{ 	
CreatePageCampaign 
( 
testCampaign +
)+ ,
;, -
CreateAllTCPage   
(   
testCampaign   (
)  ( )
;  ) *
}!! 	
public&& 
void&& 

OpenReport&& 
(&& 
Config&& %
config&&& ,
,&&, -
TestCampaign&&. :
campaign&&; C
)&&C D
{'' 	
var(( 
param(( 
=(( 
new(( 
ProcessStartInfo(( ,
(((, -
Path((- 1
.((1 2
Combine((2 9
(((9 :
$str((: n
)((n o
)((o p
;((p q
param)) 
.)) 
	Arguments)) 
=)) 
Path)) "
.))" #
Combine))# *
())* +
pathReportFolder))+ ;
,)); <
$str))= S
+))T U
campaign))V ^
.))^ _
	StartDate))_ h
.))h i
ToString))i q
())q r
$str	))r á
)
))á à
+
))â ä
$str
))ã í
)
))í ì
;
))ì î
System** 
.** 
Diagnostics** 
.** 
Process** &
.**& '
Start**' ,
(**, -
param**- 2
)**2 3
;**3 4
}++ 	
public11 
void11 
CreatePageCampaign11 &
(11' (
TestCampaign11( 4
testCampaign115 A
)11A B
{22 	
pathReportFolder33 
=33 
Path33 #
.33# $
Combine33$ +
(33+ ,
pathReportFolder33, <
,33< =
$str33> A
+33B C
testCampaign33C O
.33O P
Name33P T
+33U V
testCampaign33W c
.33c d
	StartDate33d m
.33m n
ToString33n v
(33v w
$str	33w å
)
33å ç
)
33ç é
;
33é è
	Directory44 
.44 
CreateDirectory44 %
(44% &
pathReportFolder44& 6
)446 7
;447 8$
WriteDeclarationHTMLFile55 $
(55$ %
)55% &
;55& '
WriteHeadHTMLFile66 
(66 
$str66 /
,66/ 0
$str661 6
+667 8
pathFileStyle668 E
)66E F
;66F G
WriteTitlePage77 
(77 
$str77 $
+77% &
testCampaign77& 2
.772 3
Name773 7
+778 9
DateTime77: B
.77B C
Now77C F
.77F G
ToString77G O
(77O P
$str77P e
)77e f
)77f g
;77g h
WriteInfoCampaign88 
(88 
testCampaign88 *
)88* +
;88+ ,
WriteTabTestcases99 
(99 
testCampaign99 *
)99* +
;99+ ,
WriteEndHTMLFile:: 
(:: 
):: 
;:: "
SaveRaportCampaignFile;; "
(;;" #
Path;;# '
.;;' (
Combine;;( /
(;;/ 0
pathReportFolder;;0 @
,;;@ A
$str;;B X
+;;Y Z
testCampaign;;[ g
.;;g h
	StartDate;;h q
.;;q r
ToString;;r z
(;;z {
$str	;;{ ê
)
;;ê ë
+
;;í ì
$str
;;î õ
)
;;õ ú
)
;;ú ù
;
;;ù û
}<< 	
publicBB 
voidBB 
CreateAllTCPageBB #
(BB# $
TestCampaignBB$ 0
testCampaignBB1 =
)BB= >
{CC 	
foreachDD 
(DD 
varDD 
tcDD 
inDD 
testCampaignDD +
.DD+ ,
	TestCasesDD, 5
)DD5 6
{EE 
htmlFF 
=FF 
$strFF 
;FF 
	DirectoryHH 
.HH 
CreateDirectoryHH )
(HH) *
PathHH* .
.HH. /
CombineHH/ 6
(HH6 7
pathReportFolderHH7 G
,HHG H
tcHHI K
.HHK L
NameHHL P
)HHP Q
)HHQ R
;HHR S$
WriteDeclarationHTMLFileJJ (
(JJ( )
)JJ) *
;JJ* +
WriteHeadHTMLFileKK !
(KK! "
tcKK" $
.KK$ %
NameKK% )
+KK* +
$strKK, 5
,KK5 6
$strKK7 ?
+KK@ A
pathFileStyleKKA N
)KKN O
;KKO P
WriteTitlePageLL 
(LL 
$strLL (
+LL) *
tcLL+ -
.LL- .
NameLL. 2
+LL3 4
$strLL5 A
+LLB C
DateTimeLLD L
.LLL M
NowLLM P
.LLP Q
ToStringLLQ Y
(LLY Z
$strLLZ o
)LLo p
)LLp q
;LLq r
WriteInfoTCMM 
(MM 
tcMM 
)MM 
;MM  
WriteTabTaskNN 
(NN 
tcNN 
)NN  
;NN  !
WriteEndHTMLFileOO  
(OO  !
)OO! "
;OO" #"
SaveRaportCampaignFilePP &
(PP& '
PathPP' +
.PP+ ,
CombinePP, 3
(PP3 4
pathReportFolderPP4 D
,PPD E
tcPPF H
.PPH I
NamePPI M
,PPM N
tcPPO Q
.PPQ R
NamePPR V
+PPW X
$strPPX _
)PP_ `
)PP` a
;PPa b
}QQ 
}RR 	
publicZZ 
voidZZ 
WriteTitlePageZZ "
(ZZ" #
stringZZ# )
titleZZ* /
)ZZ/ 0
{[[ 	
html\\ 
+=\\ 
$str\\ 
+\\ 
title\\ "
+\\# $
$str\\% ,
+\\- .
$str\\. 2
;\\2 3
}]] 	
publiccc 
voidcc 
WriteInfoCampaigncc %
(cc% &
TestCampaigncc& 2
testCampaigncc3 ?
)cc? @
{dd 	
htmlee 
+=ee 
$stree '
+ee( )
testCampaignee) 5
.ee5 6
	StartDateee6 ?
+ee@ A
$streeB I
+eeJ K
$streeL P
;eeP Q
htmlff 
+=ff 
$strff %
+ff& '
testCampaignff' 3
.ff3 4
EndDateff4 ;
+ff< =
$strff> E
+ffF G
$strffH L
;ffL M
}gg 	
publicmm 
voidmm 
WriteInfoTCmm 
(mm  
TestCasemm  (
tcmm) +
)mm+ ,
{nn 	
htmloo 
+=oo 
$stroo '
+oo( )
tcoo* ,
.oo, -
	StartDateoo- 6
+oo7 8
$stroo9 @
+ooA B
$strooC G
;ooG H
htmlpp 
+=pp 
$strpp %
+pp& '
tcpp( *
.pp* +
EndDatepp+ 2
+pp3 4
$strpp5 <
+pp= >
$strpp? C
;ppC D
}qq 	
publicww 
voidww 
WriteTabTestcasesww %
(ww% &
TestCampaignww& 2
testCampaignww3 ?
)ww? @
{xx 	
htmlyy 
+=yy 
$stryy 
+yy 
$stryy  $
;yy$ %
htmlzz 
+=zz 
$strzz  
+zz! "
$strzz# '
;zz' (
html{{ 
+={{ 
$str{{ .
+{{/ 0
$str{{0 4
;{{4 5
html|| 
+=|| 
$str|| ,
+||- .
$str||/ 3
;||3 4
html}} 
+=}} 
$str}} !
+}}" #
$str}}$ (
;}}( )
html~~ 
+=~~ 
$str~~  
+~~! "
$str~~# '
;~~' (
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
tc
ÄÄ 
in
ÄÄ 
testCampaign
ÄÄ +
.
ÄÄ+ ,
	TestCases
ÄÄ, 5
)
ÄÄ5 6
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
tc
ÇÇ 
.
ÇÇ 
Result
ÇÇ 
.
ÇÇ 
Equals
ÇÇ #
(
ÇÇ# $
Result
ÇÇ$ *
.
ÇÇ* +
PASSED
ÇÇ+ 1
)
ÇÇ1 2
)
ÇÇ2 3
html
ÉÉ 
+=
ÉÉ 
$str
ÉÉ :
+
ÉÉ; <
$str
ÉÉ= A
;
ÉÉA B
else
ÑÑ 
if
ÑÑ 
(
ÑÑ 
tc
ÑÑ 
.
ÑÑ 
Result
ÑÑ "
.
ÑÑ" #
Equals
ÑÑ# )
(
ÑÑ) *
Result
ÑÑ* 0
.
ÑÑ0 1
FAILED
ÑÑ1 7
)
ÑÑ7 8
)
ÑÑ8 9
html
ÖÖ 
+=
ÖÖ 
$str
ÖÖ :
+
ÖÖ; <
$str
ÖÖ= A
;
ÖÖA B
else
ÜÜ 
html
áá 
+=
áá 
$str
áá 9
+
áá: ;
$str
áá< @
;
áá@ A
html
ââ 
+=
ââ 
$str
ââ 3
+
ââ4 5
Path
ââ5 9
.
ââ9 :
Combine
ââ: A
(
ââA B
tc
ââB D
.
ââD E
Name
ââE I
,
ââI J
tc
ââK M
.
ââM N
Name
ââN R
+
ââS T
$str
ââT [
)
ââ[ \
+
ââ] ^
$str
ââ^ c
+
ââd e
tc
ââe g
.
ââg h
Name
ââh l
+
ââl m
$str
âân y
+
ââz {
$strââ| Ä
;ââÄ Å
html
ää 
+=
ää 
$str
ää )
+
ää* +
tc
ää+ -
.
ää- .
Result
ää. 4
+
ää5 6
$str
ää7 >
+
ää? @
$str
ääA E
;
ääE F
html
ãã 
+=
ãã 
$str
ãã &
+
ãã' (
$str
ãã) -
;
ãã- .
}
åå 
html
éé 
+=
éé 
$str
éé !
+
éé" #
$str
éé$ (
;
éé( )
html
èè 
+=
èè 
$str
èè 
+
èè  
$str
èè! %
;
èè% &
}
êê 	
public
ññ 
void
ññ 
WriteTabTask
ññ  
(
ññ  !
TestCase
ññ! )
tc
ññ* ,
)
ññ, -
{
óó 	
html
òò 
+=
òò 
$str
òò 
+
òò 
$str
òò  $
;
òò$ %
html
ôô 
+=
ôô 
$str
ôô  
+
ôô! "
$str
ôô# '
;
ôô' (
html
öö 
+=
öö 
$str
öö *
+
öö+ ,
$str
öö- 1
;
öö1 2
html
õõ 
+=
õõ 
$str
õõ 0
+
õõ1 2
$str
õõ3 7
;
õõ7 8
html
úú 
+=
úú 
$str
úú .
+
úú/ 0
$str
úú1 5
;
úú5 6
html
ùù 
+=
ùù 
$str
ùù ,
+
ùù- .
$str
ùù/ 3
;
ùù3 4
html
ûû 
+=
ûû 
$str
ûû +
+
ûû, -
$str
ûû. 2
;
ûû2 3
html
üü 
+=
üü 
$str
üü !
+
üü" #
$str
üü$ (
;
üü( )
html
†† 
+=
†† 
$str
††  
+
††! "
$str
††# '
;
††' (
foreach
¢¢ 
(
¢¢ 
var
¢¢ 
task
¢¢ 
in
¢¢  
tc
¢¢! #
.
¢¢# $
Tasks
¢¢$ )
)
¢¢) *
{
££ 
if
§§ 
(
§§ 
task
§§ 
.
§§ 
Result
§§ 
.
§§  
Equals
§§  &
(
§§& '
Result
§§' -
.
§§- .
PASSED
§§. 4
)
§§4 5
)
§§5 6
html
•• 
+=
•• 
$str
•• :
+
••; <
$str
••= A
;
••A B
else
¶¶ 
if
¶¶ 
(
¶¶ 
task
¶¶ 
.
¶¶ 
Result
¶¶ $
.
¶¶$ %
Equals
¶¶% +
(
¶¶+ ,
Result
¶¶, 2
.
¶¶2 3
FAILED
¶¶3 9
)
¶¶9 :
)
¶¶: ;
html
ßß 
+=
ßß 
$str
ßß :
+
ßß; <
$str
ßß= A
;
ßßA B
else
®® 
html
©© 
+=
©© 
$str
©© 9
+
©©: ;
$str
©©< @
;
©©@ A
html
´´ 
+=
´´ 
$str
´´ )
+
´´* +
task
´´+ /
.
´´/ 0
Name
´´0 4
+
´´5 6
$str
´´7 >
+
´´? @
$str
´´A E
;
´´E F
html
¨¨ 
+=
¨¨ 
$str
¨¨ )
+
¨¨* +
task
¨¨, 0
.
¨¨0 1
	StartDate
¨¨1 :
.
¨¨: ;
ToString
¨¨; C
(
¨¨C D
$str
¨¨D N
)
¨¨N O
+
¨¨P Q
$str
¨¨R Z
+
¨¨[ \
$str
¨¨] a
;
¨¨a b
html
≠≠ 
+=
≠≠ 
$str
≠≠ )
+
≠≠* +
task
≠≠, 0
.
≠≠0 1
EndDate
≠≠1 8
.
≠≠8 9
ToString
≠≠9 A
(
≠≠A B
$str
≠≠B L
)
≠≠L M
+
≠≠N O
$str
≠≠P X
+
≠≠Y Z
$str
≠≠[ _
;
≠≠_ `
html
ÆÆ 
+=
ÆÆ 
$str
ÆÆ )
+
ÆÆ* +
task
ÆÆ, 0
.
ÆÆ0 1
Result
ÆÆ1 7
+
ÆÆ8 9
$str
ÆÆ: A
+
ÆÆB C
$str
ÆÆD H
;
ÆÆH I
if
ØØ 
(
ØØ 
task
ØØ 
.
ØØ 
	ListValue
ØØ "
.
ØØ" #
Count
ØØ# (
!=
ØØ) +
$num
ØØ, -
)
ØØ- .
{
∞∞ 
html
±± 
+=
±± 
$str
±± )
+
±±* +
$str
±±, 0
;
±±0 1
html
≤≤ 
+=
≤≤ 
$str
≤≤ -
+
≤≤. /
$str
≤≤0 4
;
≤≤4 5
foreach
¥¥ 
(
¥¥ 
var
¥¥  
value
¥¥! &
in
¥¥' )
task
¥¥* .
.
¥¥. /
	ListValue
¥¥/ 8
)
¥¥8 9
html
µµ 
+=
µµ 
$str
µµ  3
+
µµ4 5
value
µµ6 ;
+
µµ< =
$str
µµ> E
+
µµF G
$str
µµH L
;
µµL M
html
∑∑ 
+=
∑∑ 
$str
∑∑ .
+
∑∑/ 0
$str
∑∑1 5
;
∑∑5 6
html
∏∏ 
+=
∏∏ 
$str
∏∏ *
+
∏∏+ ,
$str
∏∏- 1
;
∏∏1 2
}
ππ 
else
∫∫ 
html
ªª 
+=
ªª 
$str
ªª '
+
ªª( )
$str
ªª* .
;
ªª. /
}
ºº 
html
ææ 
+=
ææ 
$str
ææ !
+
ææ" #
$str
ææ$ (
;
ææ( )
html
øø 
+=
øø 
$str
øø 
+
øø  
$str
øø! %
;
øø% &
}
¿¿ 	
public
ÀÀ 
void
ÀÀ &
WriteDeclarationHTMLFile
ÀÀ ,
(
ÀÀ, -
)
ÀÀ- .
{
ÃÃ 	
html
ÕÕ 
=
ÕÕ 
$str
ÕÕ $
+
ÕÕ% &
$str
ÕÕ' +
;
ÕÕ+ ,
html
ŒŒ 
+=
ŒŒ 
$str
ŒŒ 
+
ŒŒ  !
$str
ŒŒ" &
;
ŒŒ& '
}
œœ 	
public
÷÷ 
void
÷÷ 
WriteHeadHTMLFile
÷÷ %
(
÷÷% &
string
÷÷& ,
	titlePage
÷÷- 6
,
÷÷6 7
string
÷÷8 >
pathStyleFile
÷÷? L
)
÷÷L M
{
◊◊ 	
html
ÿÿ 
+=
ÿÿ 
$str
ÿÿ #
+
ÿÿ$ %
$str
ÿÿ& *
;
ÿÿ* +
html
ŸŸ 
+=
ŸŸ 
$str
ŸŸ (
+
ŸŸ) *
	titlePage
ŸŸ* 3
+
ŸŸ4 5
$str
ŸŸ6 @
+
ŸŸA B
$str
ŸŸC G
;
ŸŸG H
html
⁄⁄ 
+=
⁄⁄ 
$str
⁄⁄ ?
+
⁄⁄@ A
pathStyleFile
⁄⁄B O
+
⁄⁄P Q
$str
⁄⁄R U
+
⁄⁄V W
$str
⁄⁄X \
;
⁄⁄\ ]
html
€€ 
+=
€€ 
$str
€€ $
+
€€% &
$str
€€' +
;
€€+ ,
html
‹‹ 
+=
‹‹ 
$str
‹‹ #
+
‹‹$ %
$str
‹‹& *
;
‹‹* +
}
›› 	
public
‚‚ 
void
‚‚ 
WriteEndHTMLFile
‚‚ $
(
‚‚$ %
)
‚‚% &
{
„„ 	
html
‰‰ 
+=
‰‰ 
$str
‰‰  
+
‰‰! "
$str
‰‰# '
;
‰‰' (
html
ÂÂ 
+=
ÂÂ 
$str
ÂÂ 
+
ÂÂ 
$str
ÂÂ  $
;
ÂÂ$ %
}
ÊÊ 	
public
ÏÏ 
void
ÏÏ $
SaveRaportCampaignFile
ÏÏ *
(
ÏÏ* +
string
ÏÏ+ 1
pathFile
ÏÏ2 :
)
ÏÏ: ;
{
ÌÌ 	
File
ÓÓ 
.
ÓÓ 
WriteAllText
ÓÓ 
(
ÓÓ 
pathFile
ÓÓ &
,
ÓÓ& '
html
ÓÓ( ,
)
ÓÓ, -
;
ÓÓ- .
}
ÔÔ 	
}
ÚÚ 
}ÛÛ ˛É
pD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Testcases\CreateQuizzTestcase.cs
	namespace 	
TestBalanceTonQuizz
 
. 
	Testcases '
{ 
public 

class 
CreateQuizzTestcase $
:% &
TestCase' /
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_log- 1
=2 3
log4net4 ;
.; <

LogManager< F
.F G
	GetLoggerG P
(P Q
typeofQ W
(W X
CreateQuizzTestcaseX k
)k l
)l m
;m n
private 
static 
ConfigTCCreateQuizz *
configTC+ 3
;3 4
public 
CreateQuizzTestcase "
(" #

IWebDriver# -
driver. 4
,4 5
string6 <
pathMap= D
)D E
{ 	
Name 
= 
$str (
;( )
Driver 
= 
driver 
; 
PathMap 
= 
pathMap 
; 
Tasks 
= 
new 
List 
< 
Task !
>! "
(" #
)# $
;$ %
ConfigLoader 
= 
new 
ConfigLoader +
(+ ,
), -
;- .
} 	
public   
override   
void   
LoadConfigTC   )
(  ) *
)  * +
{!! 	
configTC"" 
="" 
ConfigLoader"" #
.""# $#
LoadConfigTCCreateQuizz""$ ;
(""; <
Path""< @
.""@ A
Combine""A H
(""H I
Environment""I T
.""T U
CurrentDirectory""U e
,""e f
$str""g s
)""s t
)""t u
;""u v
}## 	
public.. 
override.. 
bool.. 
Execute.. $
(..$ %
)..% &
{// 	
_log00 
.00 
Info00 
(00 
$str00 3
)003 4
;004 5
var33 
taskBtnCreateQuizz33 "
=33" #
new33$ '
Task33( ,
(33, -
)33- .
{44 
Name55 
=55 
$str55 /
,55/ 0
Description66 
=66 
$str66 H
}77 
;77 
var88 
buttonCreateQuizz88 !
=88! "
new88# &

WebElement88' 1
(881 2
$str882 D
,88D E
PathMap88F M
)88M N
;88N O
var99 $
btn_create_quizzSearched99 (
=99) *
WebElementManager99+ <
.99< =
FindFirstElement99= M
(99M N
Driver99N T
,99T U
buttonCreateQuizz99V g
)99g h
;99h i
if:: 
(:: $
btn_create_quizzSearched:: (
!=::) +
null::, 0
)::0 1
{;; $
btn_create_quizzSearched<< (
.<<( )
Click<<) .
(<<. /
)<</ 0
;<<0 1
_log== 
.== 
Info== 
(== 
$str== G
)==G H
;==H I
taskBtnCreateQuizz>> "
.>>" #
	SetResult>># ,
(>>, -
Result>>- 3
.>>3 4
PASSED>>4 :
)>>: ;
;>>; <
}?? 
else@@ 
{AA 
_logBB 
.BB 
ErrorBB 
(BB 
$strBB B
)BBB C
;BBC D
taskBtnCreateQuizzCC "
.CC" #
SetErrorMessageCC# 2
(CC2 3
$strCC3 Z
)CCZ [
;CC[ \
taskBtnCreateQuizzDD "
.DD" #
	SetResultDD# ,
(DD, -
ResultDD- 3
.DD3 4
ERRORDD4 9
)DD9 :
;DD: ;
returnEE 
falseEE 
;EE 
}FF 
taskBtnCreateQuizzGG 
.GG 
	CloseTaskGG (
(GG( )
)GG) *
;GG* +
TasksHH 
.HH 
AddHH 
(HH 
taskBtnCreateQuizzHH (
)HH( )
;HH) *
varKK 
taskFieldTitleQuizzKK #
=KK$ %
newKK& )
TaskKK* .
(KK. /
)KK/ 0
{LL 
NameMM 
=MM 
$strMM $
,MM$ %
DescriptionNN 
=NN 
$strNN 8
}OO 
;OO 
taskFieldTitleQuizzPP 
.PP  
SetValuePP  (
(PP( )
configTCPP) 1
.PP1 2

TitleQuizzPP2 <
)PP< =
;PP= >
varQQ 

fieldTitleQQ 
=QQ 
newQQ  

WebElementQQ! +
(QQ+ ,
$strQQ, 9
,QQ9 :
PathMapQQ; B
)QQB C
;QQC D
varRR 
fieldtitleSearchedRR "
=RR# $
WebElementManagerRR% 6
.RR6 7
FindElementsRR7 C
(RRC D
DriverRRD J
,RRJ K

fieldTitleRRL V
)RRV W
.RRW X
	ElementAtRRX a
(RRa b
$numRRb c
)RRc d
;RRd e
ifSS 
(SS 
fieldtitleSearchedSS "
!=SS# %
nullSS& *
)SS* +
{TT 
fieldtitleSearchedUU "
.UU" #
SendKeysUU# +
(UU+ ,
configTCUU, 4
.UU4 5

TitleQuizzUU5 ?
)UU? @
;UU@ A
_logVV 
.VV 
InfoVV 
(VV 
$strVV ;
+VV< =
configTCVV> F
.VVF G

TitleQuizzVVG Q
+VVR S
$strVVT ]
)VV] ^
;VV^ _
taskFieldTitleQuizzWW #
.WW# $
	SetResultWW$ -
(WW- .
ResultWW. 4
.WW4 5
PASSEDWW5 ;
)WW; <
;WW< =
}XX 
elseYY 
{ZZ 
_log[[ 
.[[ 
Error[[ 
([[ 
$str[[ 4
)[[4 5
;[[5 6
taskFieldTitleQuizz\\ #
.\\# $
SetErrorMessage\\$ 3
(\\3 4
$str\\4 M
)\\M N
;\\N O
taskFieldTitleQuizz]] #
.]]# $
	SetResult]]$ -
(]]- .
Result]]. 4
.]]4 5
ERROR]]5 :
)]]: ;
;]]; <
return^^ 
false^^ 
;^^ 
}__ 
taskFieldTitleQuizz`` 
.``  
	CloseTask``  )
(``) *
)``* +
;``+ ,
Tasksaa 
.aa 
Addaa 
(aa 
taskFieldTitleQuizzaa )
)aa) *
;aa* +
vardd %
taskFieldDescriptionQuizzdd )
=dd* +
newdd, /
Taskdd0 4
(dd4 5
)dd5 6
{ee 
Nameff 
=ff 
$strff $
,ff$ %
Descriptiongg 
=gg 
$strgg >
}hh 
;hh 
taskFieldTitleQuizzii 
.ii  
SetValueii  (
(ii( )
configTCii) 1
.ii1 2
DescriptionQuizzii2 B
)iiB C
;iiC D
varjj 
fieldDescriptionjj  
=jj! "
newjj# &

WebElementjj' 1
(jj1 2
$strjj2 E
,jjE F
PathMapjjG N
)jjN O
;jjO P
varkk $
fieldDescriptionSearchedkk (
=kk) *
WebElementManagerkk+ <
.kk< =
FindElementskk= I
(kkI J
DriverkkJ P
,kkP Q
fieldDescriptionkkR b
)kkb c
.kkc d
	ElementAtkkd m
(kkm n
$numkkn o
)kko p
;kkp q
ifll 
(ll $
fieldDescriptionSearchedll (
!=ll) +
nullll, 0
)ll0 1
{mm $
fieldDescriptionSearchednn (
.nn( )
SendKeysnn) 1
(nn1 2
configTCnn2 :
.nn: ;
DescriptionQuizznn; K
)nnK L
;nnL M
_logoo 
.oo 
Infooo 
(oo 
$stroo A
+ooB C
configTCooD L
.ooL M
DescriptionQuizzooM ]
+oo^ _
$stroo` i
)ooi j
;ooj k%
taskFieldDescriptionQuizzpp )
.pp) *
	SetResultpp* 3
(pp3 4
Resultpp4 :
.pp: ;
PASSEDpp; A
)ppA B
;ppB C
}qq 
elserr 
{ss 
_logtt 
.tt 
Errortt 
(tt 
$strtt :
)tt: ;
;tt; <%
taskFieldDescriptionQuizzuu )
.uu) *
SetErrorMessageuu* 9
(uu9 :
$struu: Y
)uuY Z
;uuZ [%
taskFieldDescriptionQuizzvv )
.vv) *
	SetResultvv* 3
(vv3 4
Resultvv4 :
.vv: ;
ERRORvv; @
)vv@ A
;vvA B
returnww 
falseww 
;ww 
}xx %
taskFieldDescriptionQuizzyy %
.yy% &
	CloseTaskyy& /
(yy/ 0
)yy0 1
;yy1 2
Taskszz 
.zz 
Addzz 
(zz %
taskFieldDescriptionQuizzzz /
)zz/ 0
;zz0 1
var~~ "
taskFieldFirstQuestion~~ &
=~~' (
new~~) ,
Task~~- 1
(~~1 2
)~~2 3
{ 
Name
ÄÄ 
=
ÄÄ 
$str
ÄÄ -
,
ÄÄ- .
Description
ÅÅ 
=
ÅÅ 
$str
ÅÅ A
}
ÇÇ 
;
ÇÇ $
taskFieldFirstQuestion
ÉÉ "
.
ÉÉ" #
SetValue
ÉÉ# +
(
ÉÉ+ ,
configTC
ÉÉ, 4
.
ÉÉ4 5
	Question1
ÉÉ5 >
)
ÉÉ> ?
;
ÉÉ? @
var
ÑÑ  
fieldfirstquestion
ÑÑ "
=
ÑÑ# $
new
ÑÑ% (

WebElement
ÑÑ) 3
(
ÑÑ3 4
$str
ÑÑ4 F
,
ÑÑF G
PathMap
ÑÑH O
)
ÑÑO P
;
ÑÑP Q
var
ÖÖ (
fieldfirstquestionSearched
ÖÖ *
=
ÖÖ+ ,
WebElementManager
ÖÖ- >
.
ÖÖ> ?
FindElements
ÖÖ? K
(
ÖÖK L
Driver
ÖÖL R
,
ÖÖR S 
fieldfirstquestion
ÖÖT f
)
ÖÖf g
.
ÖÖg h
	ElementAt
ÖÖh q
(
ÖÖq r
$num
ÖÖr s
)
ÖÖs t
;
ÖÖt u
if
ÜÜ 
(
ÜÜ (
fieldfirstquestionSearched
ÜÜ *
!=
ÜÜ+ -
null
ÜÜ. 2
)
ÜÜ2 3
{
áá (
fieldfirstquestionSearched
àà *
.
àà* +
SendKeys
àà+ 3
(
àà3 4
configTC
àà4 <
.
àà< =
	Question1
àà= F
)
ààF G
;
ààG H
_log
ââ 
.
ââ 
Info
ââ 
(
ââ 
$str
ââ A
+
ââB C
configTC
ââD L
.
ââL M
	Question1
ââM V
+
ââW X
$str
ââY b
)
ââb c
;
ââc d$
taskFieldFirstQuestion
ää &
.
ää& '
	SetResult
ää' 0
(
ää0 1
Result
ää1 7
.
ää7 8
PASSED
ää8 >
)
ää> ?
;
ää? @
}
ãã 
else
åå 
{
çç 
_log
éé 
.
éé 
Error
éé 
(
éé 
$str
éé =
)
éé= >
;
éé> ?$
taskFieldFirstQuestion
èè &
.
èè& '
SetErrorMessage
èè' 6
(
èè6 7
$str
èè7 Y
)
èèY Z
;
èèZ [$
taskFieldFirstQuestion
êê &
.
êê& '
	SetResult
êê' 0
(
êê0 1
Result
êê1 7
.
êê7 8
ERROR
êê8 =
)
êê= >
;
êê> ?
return
ëë 
false
ëë 
;
ëë 
}
íí $
taskFieldFirstQuestion
ìì "
.
ìì" #
	CloseTask
ìì# ,
(
ìì, -
)
ìì- .
;
ìì. /
Tasks
îî 
.
îî 
Add
îî 
(
îî $
taskFieldFirstQuestion
îî ,
)
îî, -
;
îî- .
var
óó #
taskBtnMultipleAnswer
óó %
=
óó& '
new
óó( +
Task
óó, 0
(
óó0 1
)
óó1 2
{
òò 
Name
ôô 
=
ôô 
$str
ôô '
,
ôô' (
Description
öö 
=
öö 
$str
öö <
}
õõ 
;
õõ 
var
úú 
btnMultiAnswer
úú 
=
úú  
new
úú! $

WebElement
úú% /
(
úú/ 0
$str
úú0 F
,
úúF G
PathMap
úúH O
)
úúO P
;
úúP Q
var
ùù $
btnMultiAnswerSearched
ùù &
=
ùù' (
WebElementManager
ùù) :
.
ùù: ;
FindFirstElement
ùù; K
(
ùùK L
Driver
ùùL R
,
ùùR S
btnMultiAnswer
ùùT b
)
ùùb c
;
ùùc d
if
ûû 
(
ûû $
btnMultiAnswerSearched
ûû &
!=
ûû' )
null
ûû* .
)
ûû. /
{
üü $
btnMultiAnswerSearched
†† &
.
††& '
Click
††' ,
(
††, -
)
††- .
;
††. /
_log
°° 
.
°° 
Info
°° 
(
°° 
$str
°° :
)
°°: ;
;
°°; <#
taskBtnMultipleAnswer
¢¢ %
.
¢¢% &
	SetResult
¢¢& /
(
¢¢/ 0
Result
¢¢0 6
.
¢¢6 7
PASSED
¢¢7 =
)
¢¢= >
;
¢¢> ?
}
££ 
else
§§ 
{
•• 
_log
¶¶ 
.
¶¶ 
Error
¶¶ 
(
¶¶ 
$str
¶¶ @
)
¶¶@ A
;
¶¶A B#
taskBtnMultipleAnswer
ßß %
.
ßß% &
SetErrorMessage
ßß& 5
(
ßß5 6
$str
ßß6 [
)
ßß[ \
;
ßß\ ]#
taskBtnMultipleAnswer
®® %
.
®®% &
	SetResult
®®& /
(
®®/ 0
Result
®®0 6
.
®®6 7
ERROR
®®7 <
)
®®< =
;
®®= >
return
©© 
false
©© 
;
©© 
}
™™ #
taskBtnMultipleAnswer
´´ !
.
´´! "
	CloseTask
´´" +
(
´´+ ,
)
´´, -
;
´´- .
Tasks
¨¨ 
.
¨¨ 
Add
¨¨ 
(
¨¨ #
taskBtnMultipleAnswer
¨¨ +
)
¨¨+ ,
;
¨¨, -
var
ØØ "
taskEnterFirstAnswer
ØØ $
=
ØØ% &
new
ØØ' *
Task
ØØ+ /
(
ØØ/ 0
)
ØØ0 1
{
∞∞ 
Name
±± 
=
±± 
$str
±± 5
,
±±5 6
Description
≤≤ 
=
≤≤ 
$str
≤≤ E
}
≥≥ 
;
≥≥ "
taskEnterFirstAnswer
¥¥  
.
¥¥  !
SetValue
¥¥! )
(
¥¥) *
configTC
¥¥* 2
.
¥¥2 3
Reponse1
¥¥3 ;
.
¥¥; <
	ElementAt
¥¥< E
(
¥¥E F
$num
¥¥F G
)
¥¥G H
)
¥¥H I
;
¥¥I J
var
µµ 
fieldFirstAnswer
µµ  
=
µµ! "
new
µµ# &

WebElement
µµ' 1
(
µµ1 2
$str
µµ2 B
,
µµB C
PathMap
µµD K
)
µµK L
;
µµL M
var
∂∂ &
fieldFirstAnswerSearched
∂∂ (
=
∂∂) *
WebElementManager
∂∂+ <
.
∂∂< =
FindElements
∂∂= I
(
∂∂I J
Driver
∂∂J P
,
∂∂P Q
fieldFirstAnswer
∂∂R b
)
∂∂b c
.
∂∂c d
	ElementAt
∂∂d m
(
∂∂m n
$num
∂∂n o
)
∂∂o p
;
∂∂p q
if
∑∑ 
(
∑∑ &
fieldFirstAnswerSearched
∑∑ (
!=
∑∑) +
null
∑∑, 0
)
∑∑0 1
{
∏∏ &
fieldFirstAnswerSearched
ππ (
.
ππ( )
SendKeys
ππ) 1
(
ππ1 2
configTC
ππ2 :
.
ππ: ;
Reponse1
ππ; C
.
ππC D
	ElementAt
ππD M
(
ππM N
$num
ππN O
)
ππO P
)
ππP Q
;
ππQ R
_log
∫∫ 
.
∫∫ 
Info
∫∫ 
(
∫∫ 
$str
∫∫ C
+
∫∫D E
configTC
∫∫F N
.
∫∫N O
Reponse1
∫∫O W
.
∫∫W X
	ElementAt
∫∫X a
(
∫∫a b
$num
∫∫b c
)
∫∫c d
)
∫∫d e
;
∫∫e f"
taskEnterFirstAnswer
ªª $
.
ªª$ %
	SetResult
ªª% .
(
ªª. /
Result
ªª/ 5
.
ªª5 6
PASSED
ªª6 <
)
ªª< =
;
ªª= >
}
ºº 
else
ΩΩ 
{
ææ 
_log
øø 
.
øø 
Error
øø 
(
øø 
$str
øø O
)
øøO P
;
øøP Q"
taskEnterFirstAnswer
¿¿ $
.
¿¿$ %
SetErrorMessage
¿¿% 4
(
¿¿4 5
$str
¿¿5 i
)
¿¿i j
;
¿¿j k"
taskEnterFirstAnswer
¡¡ $
.
¡¡$ %
	SetResult
¡¡% .
(
¡¡. /
Result
¡¡/ 5
.
¡¡5 6
ERROR
¡¡6 ;
)
¡¡; <
;
¡¡< =
return
¬¬ 
false
¬¬ 
;
¬¬ 
}
√√ "
taskEnterFirstAnswer
ƒƒ  
.
ƒƒ  !
	CloseTask
ƒƒ! *
(
ƒƒ* +
)
ƒƒ+ ,
;
ƒƒ, -
Tasks
≈≈ 
.
≈≈ 
Add
≈≈ 
(
≈≈ "
taskEnterFirstAnswer
≈≈ *
)
≈≈* +
;
≈≈+ ,
var
»» #
taskEnterSecondAnswer
»» %
=
»»& '
new
»»( +
Task
»», 0
(
»»0 1
)
»»1 2
{
…… 
Name
   
=
   
$str
   6
,
  6 7
Description
ÀÀ 
=
ÀÀ 
$str
ÀÀ F
}
ÃÃ 
;
ÃÃ #
taskEnterSecondAnswer
ÕÕ !
.
ÕÕ! "
SetValue
ÕÕ" *
(
ÕÕ* +
configTC
ÕÕ+ 3
.
ÕÕ3 4
Reponse1
ÕÕ4 <
.
ÕÕ< =
	ElementAt
ÕÕ= F
(
ÕÕF G
$num
ÕÕG H
)
ÕÕH I
)
ÕÕI J
;
ÕÕJ K
var
ŒŒ 
fieldSecondAnswer
ŒŒ !
=
ŒŒ" #
new
ŒŒ$ '

WebElement
ŒŒ( 2
(
ŒŒ2 3
$str
ŒŒ3 E
,
ŒŒE F
PathMap
ŒŒG N
)
ŒŒN O
;
ŒŒO P
var
œœ '
fieldSecondAnswerSearched
œœ )
=
œœ* +
WebElementManager
œœ, =
.
œœ= >
FindElements
œœ> J
(
œœJ K
Driver
œœK Q
,
œœQ R
fieldSecondAnswer
œœS d
)
œœd e
.
œœe f
	ElementAt
œœf o
(
œœo p
$num
œœp q
)
œœq r
;
œœr s
if
–– 
(
–– '
fieldSecondAnswerSearched
–– )
!=
––* ,
null
––- 1
)
––1 2
{
—— '
fieldSecondAnswerSearched
““ )
.
““) *
SendKeys
““* 2
(
““2 3
configTC
““3 ;
.
““; <
Reponse1
““< D
.
““D E
	ElementAt
““E N
(
““N O
$num
““O P
)
““P Q
)
““Q R
;
““R S
_log
”” 
.
”” 
Info
”” 
(
”” 
$str
”” D
+
””E F
configTC
””G O
.
””O P
Reponse1
””P X
.
””X Y
	ElementAt
””Y b
(
””b c
$num
””c d
)
””d e
)
””e f
;
””f g#
taskEnterSecondAnswer
‘‘ %
.
‘‘% &
	SetResult
‘‘& /
(
‘‘/ 0
Result
‘‘0 6
.
‘‘6 7
PASSED
‘‘7 =
)
‘‘= >
;
‘‘> ?
}
’’ 
else
÷÷ 
{
◊◊ 
_log
ÿÿ 
.
ÿÿ 
Error
ÿÿ 
(
ÿÿ 
$str
ÿÿ P
)
ÿÿP Q
;
ÿÿQ R#
taskEnterSecondAnswer
ŸŸ %
.
ŸŸ% &
SetErrorMessage
ŸŸ& 5
(
ŸŸ5 6
$str
ŸŸ6 k
)
ŸŸk l
;
ŸŸl m#
taskEnterSecondAnswer
⁄⁄ %
.
⁄⁄% &
	SetResult
⁄⁄& /
(
⁄⁄/ 0
Result
⁄⁄0 6
.
⁄⁄6 7
ERROR
⁄⁄7 <
)
⁄⁄< =
;
⁄⁄= >
return
€€ 
false
€€ 
;
€€ 
}
‹‹ #
taskEnterSecondAnswer
›› !
.
››! "
	CloseTask
››" +
(
››+ ,
)
››, -
;
››- .
Tasks
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ 
(
ﬁﬁ #
taskEnterSecondAnswer
ﬁﬁ +
)
ﬁﬁ+ ,
;
ﬁﬁ, -
var
·· %
taskSelectCorrectAnswer
·· '
=
··( )
new
··* -
Task
··. 2
(
··2 3
)
··3 4
{
‚‚ 
Name
„„ 
=
„„ 
$str
„„ &
,
„„& '
Description
‰‰ 
=
‰‰ 
$str
‰‰ D
}
ÂÂ 
;
ÂÂ 
var
ÊÊ $
radioBtnsCorrectAnswer
ÊÊ &
=
ÊÊ' (
new
ÊÊ) ,

WebElement
ÊÊ- 7
(
ÊÊ7 8
$str
ÊÊ8 R
,
ÊÊR S
PathMap
ÊÊT [
)
ÊÊ[ \
;
ÊÊ\ ]
var
ÁÁ ,
radioBtnsCorrectAnswerSearched
ÁÁ .
=
ÁÁ/ 0
WebElementManager
ÁÁ1 B
.
ÁÁB C
FindElements
ÁÁC O
(
ÁÁO P
Driver
ÁÁP V
,
ÁÁV W$
radioBtnsCorrectAnswer
ÁÁX n
)
ÁÁn o
;
ÁÁo p
if
ËË 
(
ËË ,
radioBtnsCorrectAnswerSearched
ËË .
!=
ËË/ 1
null
ËË2 6
)
ËË6 7
{
ÈÈ 
foreach
ÍÍ 
(
ÍÍ 
var
ÍÍ 
element
ÍÍ $
in
ÍÍ% ',
radioBtnsCorrectAnswerSearched
ÍÍ( F
)
ÍÍF G
element
ÎÎ 
.
ÎÎ 
Click
ÎÎ !
(
ÎÎ! "
)
ÎÎ" #
;
ÎÎ# $
_log
ÌÌ 
.
ÌÌ 
Info
ÌÌ 
(
ÌÌ 
$str
ÌÌ >
)
ÌÌ> ?
;
ÌÌ? @%
taskSelectCorrectAnswer
ÓÓ '
.
ÓÓ' (
	SetResult
ÓÓ( 1
(
ÓÓ1 2
Result
ÓÓ2 8
.
ÓÓ8 9
PASSED
ÓÓ9 ?
)
ÓÓ? @
;
ÓÓ@ A
}
ÔÔ 
else
 
{
ÒÒ 
_log
ÚÚ 
.
ÚÚ 
Error
ÚÚ 
(
ÚÚ 
$str
ÚÚ H
)
ÚÚH I
;
ÚÚI J%
taskSelectCorrectAnswer
ÛÛ '
.
ÛÛ' (
SetErrorMessage
ÛÛ( 7
(
ÛÛ7 8
$str
ÛÛ8 e
)
ÛÛe f
;
ÛÛf g%
taskSelectCorrectAnswer
ÙÙ '
.
ÙÙ' (
	SetResult
ÙÙ( 1
(
ÙÙ1 2
Result
ÙÙ2 8
.
ÙÙ8 9
ERROR
ÙÙ9 >
)
ÙÙ> ?
;
ÙÙ? @
return
ıı 
false
ıı 
;
ıı 
}
ˆˆ %
taskSelectCorrectAnswer
˜˜ #
.
˜˜# $
	CloseTask
˜˜$ -
(
˜˜- .
)
˜˜. /
;
˜˜/ 0
Tasks
¯¯ 
.
¯¯ 
Add
¯¯ 
(
¯¯ %
taskSelectCorrectAnswer
¯¯ -
)
¯¯- .
;
¯¯. /
var
˚˚ 
taskBtnContinue
˚˚ 
=
˚˚  !
new
˚˚" %
Task
˚˚& *
(
˚˚* +
)
˚˚+ ,
{
¸¸ 
Name
˝˝ 
=
˝˝ 
$str
˝˝ -
,
˝˝- .
Description
˛˛ 
=
˛˛ 
$str
˛˛ Y
}
ˇˇ 
;
ˇˇ 
var
ÄÄ 
btnContinue
ÄÄ 
=
ÄÄ 
new
ÄÄ !

WebElement
ÄÄ" ,
(
ÄÄ, -
$str
ÄÄ- ;
,
ÄÄ; <
PathMap
ÄÄ= D
)
ÄÄD E
;
ÄÄE F
var
ÅÅ 
temp
ÅÅ 
=
ÅÅ 
WebElementManager
ÅÅ (
.
ÅÅ( )
FindElements
ÅÅ) 5
(
ÅÅ5 6
Driver
ÅÅ6 <
,
ÅÅ< =
btnContinue
ÅÅ> I
)
ÅÅI J
;
ÅÅJ K
var
ÇÇ !
btnContinueSearched
ÇÇ #
=
ÇÇ$ %
temp
ÇÇ& *
.
ÇÇ* +
	ElementAt
ÇÇ+ 4
(
ÇÇ4 5
$num
ÇÇ5 6
)
ÇÇ6 7
;
ÇÇ7 8
if
ÉÉ 
(
ÉÉ !
btnContinueSearched
ÉÉ #
!=
ÉÉ$ &
null
ÉÉ' +
)
ÉÉ+ ,
{
ÑÑ !
btnContinueSearched
ÖÖ #
.
ÖÖ# $
SendKeys
ÖÖ$ ,
(
ÖÖ, -
$str
ÖÖ- /
)
ÖÖ/ 0
;
ÖÖ0 1!
btnContinueSearched
ÜÜ #
.
ÜÜ# $
Click
ÜÜ$ )
(
ÜÜ) *
)
ÜÜ* +
;
ÜÜ+ ,
_log
áá 
.
áá 
Info
áá 
(
áá 
$str
áá 8
)
áá8 9
;
áá9 :
taskBtnContinue
àà 
.
àà  
	SetResult
àà  )
(
àà) *
Result
àà* 0
.
àà0 1
PASSED
àà1 7
)
àà7 8
;
àà8 9
}
ââ 
else
ää 
{
ãã 
_log
åå 
.
åå 
Error
åå 
(
åå 
$str
åå ;
)
åå; <
;
åå< =
taskBtnContinue
çç 
.
çç  
SetErrorMessage
çç  /
(
çç/ 0
$str
çç0 P
)
ççP Q
;
ççQ R
taskBtnContinue
éé 
.
éé  
	SetResult
éé  )
(
éé) *
Result
éé* 0
.
éé0 1
ERROR
éé1 6
)
éé6 7
;
éé7 8
return
èè 
false
èè 
;
èè 
}
êê 
taskBtnContinue
ëë 
.
ëë 
	CloseTask
ëë %
(
ëë% &
)
ëë& '
;
ëë' (
Tasks
íí 
.
íí 
Add
íí 
(
íí 
taskBtnContinue
íí %
)
íí% &
;
íí& '
var
ïï 
taskselectTheme
ïï 
=
ïï  !
new
ïï" %
Task
ïï& *
(
ïï* +
)
ïï+ ,
{
ññ 
Name
óó 
=
óó 
$str
óó +
,
óó+ ,
Description
òò 
=
òò 
$str
òò ;
}
ôô 
;
ôô 
taskselectTheme
öö 
.
öö 
SetValue
öö $
(
öö$ %
configTC
öö% -
.
öö- .
Theme
öö. 3
)
öö3 4
;
öö4 5
var
õõ 
	cardTheme
õõ 
=
õõ 
new
õõ 

WebElement
õõ  *
(
õõ* +
$str
õõ+ =
,
õõ= >
PathMap
õõ? F
)
õõF G
;
õõG H
var
úú  
cardsThemeSearched
úú "
=
úú# $
WebElementManager
úú% 6
.
úú6 7
FindElements
úú7 C
(
úúC D
Driver
úúD J
,
úúJ K
	cardTheme
úúL U
)
úúU V
;
úúV W
if
ùù 
(
ùù  
cardsThemeSearched
ùù "
!=
ùù# %
null
ùù& *
)
ùù* +
{
ûû 
foreach
üü 
(
üü 
var
üü 
card
üü  
in
üü! # 
cardsThemeSearched
üü$ 6
)
üü6 7
{
†† 
if
°° 
(
°° 
card
°° 
.
°° 
Text
°° !
.
°°! "
Equals
°°" (
(
°°( )
configTC
°°) 1
.
°°1 2
Theme
°°2 7
)
°°7 8
)
°°8 9
{
¢¢ 
card
££ 
.
££ 
Click
££ "
(
££" #
)
££# $
;
££$ %
_log
§§ 
.
§§ 
Info
§§ !
(
§§! "
$str
§§" 9
+
§§: ;
configTC
§§< D
.
§§D E
Theme
§§E J
+
§§K L
$str
§§M X
)
§§X Y
;
§§Y Z
taskselectTheme
•• '
.
••' (
	SetResult
••( 1
(
••1 2
Result
••2 8
.
••8 9
PASSED
••9 ?
)
••? @
;
••@ A
}
¶¶ 
}
ßß 
}
®® 
else
©© 
{
™™ 
_log
´´ 
.
´´ 
Error
´´ 
(
´´ 
$str
´´ 9
)
´´9 :
;
´´: ;
taskselectTheme
¨¨ 
.
¨¨  
SetErrorMessage
¨¨  /
(
¨¨/ 0
$str
¨¨0 N
)
¨¨N O
;
¨¨O P
taskselectTheme
≠≠ 
.
≠≠  
	SetResult
≠≠  )
(
≠≠) *
Result
≠≠* 0
.
≠≠0 1
ERROR
≠≠1 6
)
≠≠6 7
;
≠≠7 8
return
ÆÆ 
false
ÆÆ 
;
ÆÆ 
}
ØØ 
taskselectTheme
∞∞ 
.
∞∞ 
	CloseTask
∞∞ %
(
∞∞% &
)
∞∞& '
;
∞∞' (
Tasks
±± 
.
±± 
Add
±± 
(
±± 
taskselectTheme
±± %
)
±±% &
;
±±& '
var
¥¥ 
taskBtnCreate
¥¥ 
=
¥¥ 
new
¥¥  #
Task
¥¥$ (
(
¥¥( )
)
¥¥) *
{
µµ 
Name
∂∂ 
=
∂∂ 
$str
∂∂ )
,
∂∂) *
Description
∑∑ 
=
∑∑ 
$str
∑∑ 9
}
∏∏ 
;
∏∏ 
var
ππ 
	btnCreate
ππ 
=
ππ 
new
ππ 

WebElement
ππ  *
(
ππ* +
$str
ππ+ 7
,
ππ7 8
PathMap
ππ9 @
)
ππ@ A
;
ππA B
var
∫∫ 
btnCreateSearched
∫∫ !
=
∫∫" #
WebElementManager
∫∫$ 5
.
∫∫5 6
FindElements
∫∫6 B
(
∫∫B C
Driver
∫∫C I
,
∫∫I J
	btnCreate
∫∫K T
)
∫∫T U
.
∫∫U V
	ElementAt
∫∫V _
(
∫∫_ `
$num
∫∫` a
)
∫∫a b
;
∫∫b c
if
ªª 
(
ªª 
btnCreateSearched
ªª !
!=
ªª" $
null
ªª% )
)
ªª) *
{
ºº 
btnCreateSearched
ΩΩ !
.
ΩΩ! "
Click
ΩΩ" '
(
ΩΩ' (
)
ΩΩ( )
;
ΩΩ) *
_log
ææ 
.
ææ 
Info
ææ 
(
ææ 
$str
ææ 4
)
ææ4 5
;
ææ5 6
taskBtnCreate
øø 
.
øø 
	SetResult
øø '
(
øø' (
Result
øø( .
.
øø. /
PASSED
øø/ 5
)
øø5 6
;
øø6 7
}
¿¿ 
else
¡¡ 
{
¬¬ 
_log
√√ 
.
√√ 
Error
√√ 
(
√√ 
$str
√√ 7
)
√√7 8
;
√√8 9
taskBtnCreate
ƒƒ 
.
ƒƒ 
SetErrorMessage
ƒƒ -
(
ƒƒ- .
$str
ƒƒ. J
)
ƒƒJ K
;
ƒƒK L
taskBtnCreate
≈≈ 
.
≈≈ 
	SetResult
≈≈ '
(
≈≈' (
Result
≈≈( .
.
≈≈. /
ERROR
≈≈/ 4
)
≈≈4 5
;
≈≈5 6
return
∆∆ 
false
∆∆ 
;
∆∆ 
}
«« 
taskBtnCreate
»» 
.
»» 
	CloseTask
»» #
(
»»# $
)
»»$ %
;
»»% &
Tasks
…… 
.
…… 
Add
…… 
(
…… 
taskBtnCreate
…… #
)
……# $
;
……$ %
var
ÃÃ 
taskBtnHome
ÃÃ 
=
ÃÃ 
new
ÃÃ !
Task
ÃÃ" &
(
ÃÃ& '
)
ÃÃ' (
{
ÕÕ 
Name
ŒŒ 
=
ŒŒ 
$str
ŒŒ +
,
ŒŒ+ ,
Description
œœ 
=
œœ 
$str
œœ ;
}
–– 
;
–– 
var
—— 
btnHome
—— 
=
—— 
new
—— 

WebElement
—— (
(
——( )
$str
——) 3
,
——3 4
PathMap
——5 <
)
——< =
;
——= >
var
““ 
btnHomeSearched
““ 
=
““  !
WebElementManager
““" 3
.
““3 4
FindFirstElement
““4 D
(
““D E
Driver
““E K
,
““K L
btnHome
““M T
)
““T U
;
““U V
if
”” 
(
”” 
btnHomeSearched
”” 
!=
””  "
null
””# '
)
””' (
{
‘‘ 
btnHomeSearched
’’ 
.
’’  
Click
’’  %
(
’’% &
)
’’& '
;
’’' (
_log
÷÷ 
.
÷÷ 
Info
÷÷ 
(
÷÷ 
$str
÷÷ 6
)
÷÷6 7
;
÷÷7 8
taskBtnHome
◊◊ 
.
◊◊ 
	SetResult
◊◊ %
(
◊◊% &
Result
◊◊& ,
.
◊◊, -
PASSED
◊◊- 3
)
◊◊3 4
;
◊◊4 5
}
ÿÿ 
else
ŸŸ 
{
⁄⁄ 
_log
€€ 
.
€€ 
Error
€€ 
(
€€ 
$str
€€ 9
)
€€9 :
;
€€: ;
taskBtnHome
‹‹ 
.
‹‹ 
SetErrorMessage
‹‹ +
(
‹‹+ ,
$str
‹‹, J
)
‹‹J K
;
‹‹K L
taskBtnHome
›› 
.
›› 
	SetResult
›› %
(
››% &
Result
››& ,
.
››, -
ERROR
››- 2
)
››2 3
;
››3 4
return
ﬁﬁ 
false
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
taskBtnHome
‡‡ 
.
‡‡ 
	CloseTask
‡‡ !
(
‡‡! "
)
‡‡" #
;
‡‡# $
Tasks
·· 
.
·· 
Add
·· 
(
·· 
taskBtnHome
·· !
)
··! "
;
··" #
return
„„ 
true
„„ 
;
„„ 
}
‰‰ 	
}
ÁÁ 
}ËË ˇ[
jD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Testcases\LoginTestCase.cs
	namespace 	
TestBalanceTonQuizz
 
. 
	Testcases '
{ 
public 

class 
LoginTestCase 
:  
TestCase! )
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_log- 1
=2 3
log4net4 ;
.; <

LogManager< F
.F G
	GetLoggerG P
(P Q
typeofQ W
(W X
LoginTestCaseX e
)e f
)f g
;g h
private 
static 
ConfigTCLogin $
configTC% -
;- .
public 
LoginTestCase 
( 

IWebDriver (
driver) /
,/ 0
string1 7
pathMap8 ?
)? @
{ 	
Name 
= 
$str "
;" #
Driver 
= 
driver 
; 
PathMap 
= 
pathMap 
; 
Tasks 
= 
new 
List 
< 
Task !
>! "
(" #
)# $
;$ %
ConfigLoader 
= 
new 
ConfigLoader +
(+ ,
), -
;- .
} 	
public   
override   
void   
LoadConfigTC   )
(  ) *
)  * +
{!! 	
configTC"" 
="" 
ConfigLoader"" #
.""# $
LoadConfigTCLogin""$ 5
(""5 6
Path""6 :
."": ;
Combine""; B
(""B C
Environment""C N
.""N O
CurrentDirectory""O _
,""_ `
$str""a m
)""m n
)""n o
;""o p
}## 	
public.. 
override.. 
bool.. 
Execute.. $
(..$ %
)..% &
{// 	
Console00 
.00 
	WriteLine00 
(00 
$str00 4
)004 5
;005 6
var33 
taskBtnConnect33 
=33  
new33! $
Task33% )
(33* +
)33+ ,
{44 
Name55 
=55 
$str55 -
,55- .
Description66 
=66 
$str66 F
}77 
;77 
var88 
buttonConnect88 
=88 
new88  #

WebElement88$ .
(88. /
$str88/ >
,88> ?
PathMap88@ G
)88G H
;88H I
var99 !
buttonConnectSearched99 %
=99& '
WebElementManager99( 9
.999 :
FindElements99: F
(99F G
Driver99G M
,99M N
buttonConnect99O \
)99\ ]
.99] ^
	ElementAt99^ g
(99g h
$num99h i
)99i j
;99j k
if:: 
(:: !
buttonConnectSearched:: %
!=::& (
null::) -
)::- .
{;; !
buttonConnectSearched<< %
.<<% &
Click<<& +
(<<+ ,
)<<, -
;<<- .
_log== 
.== 
Info== 
(== 
$str== E
)==E F
;==F G
taskBtnConnect>> 
.>> 
	SetResult>> (
(>>( )
Result>>) /
.>>/ 0
PASSED>>0 6
)>>6 7
;>>7 8
}?? 
else@@ 
{AA 
_logBB 
.BB 
ErrorBB 
(BB 
$strBB @
)BB@ A
;BBA B
taskBtnConnectCC 
.CC 
SetErrorMessageCC .
(CC. /
$strCC/ T
)CCT U
;CCU V
taskBtnConnectDD 
.DD 
	SetResultDD (
(DD( )
ResultDD) /
.DD/ 0
ERRORDD0 5
)DD5 6
;DD6 7
returnEE 
falseEE 
;EE 
}FF 
taskBtnConnectGG 
.GG 
	CloseTaskGG $
(GG$ %
)GG% &
;GG& '
TasksHH 
.HH 
AddHH 
(HH 
taskBtnConnectHH $
)HH$ %
;HH% &
varKK 
taskFieldUsernameKK !
=KK" #
newKK$ '
TaskKK( ,
(KK, -
)KK- .
{LL 
NameMM 
=MM 
$strMM '
,MM' (
DescriptionNN 
=NN 
$strNN ;
}OO 
;OO 
taskFieldUsernamePP 
.PP 
SetValuePP &
(PP& '
configTCPP' /
.PP/ 0
UsernamePP0 8
)PP8 9
;PP9 :
varQQ 
fieldUsernameQQ 
=QQ 
newQQ  #

WebElementQQ$ .
(QQ. /
$strQQ/ G
,QQG H
PathMapQQI P
)QQP Q
;QQQ R
varRR !
fieldUsernameSearchedRR %
=RR& '
WebElementManagerRR( 9
.RR9 :
FindElementsRR: F
(RRF G
DriverRRG M
,RRM N
fieldUsernameRRO \
)RR\ ]
.RR] ^
	ElementAtRR^ g
(RRg h
$numRRh i
)RRi j
;RRj k
ifSS 
(SS !
fieldUsernameSearchedSS %
!=SS& (
nullSS) -
)SS- .
{TT !
fieldUsernameSearchedUU %
.UU% &
SendKeysUU& .
(UU. /
configTCUU/ 7
.UU7 8
UsernameUU8 @
)UU@ A
;UUA B
_logVV 
.VV 
InfoVV 
(VV 
$strVV >
+VV? @
configTCVVA I
.VVI J
UsernameVVJ R
+VVS T
$strVVU ^
)VV^ _
;VV_ `
taskFieldUsernameWW !
.WW! "
	SetResultWW" +
(WW+ ,
ResultWW, 2
.WW2 3
PASSEDWW3 9
)WW9 :
;WW: ;
}XX 
elseYY 
{ZZ 
_log[[ 
.[[ 
Error[[ 
([[ 
$str[[ 7
)[[7 8
;[[8 9
taskFieldUsername\\ !
.\\! "
SetErrorMessage\\" 1
(\\1 2
$str\\2 N
)\\N O
;\\O P
taskFieldUsername]] !
.]]! "
	SetResult]]" +
(]]+ ,
Result]], 2
.]]2 3
ERROR]]3 8
)]]8 9
;]]9 :
return^^ 
false^^ 
;^^ 
}__ 
taskFieldUsername`` 
.`` 
	CloseTask`` '
(``' (
)``( )
;``) *
Tasksaa 
.aa 
Addaa 
(aa 
taskFieldUsernameaa '
)aa' (
;aa( )
vardd 
taskFieldPassworddd !
=dd" #
newdd$ '
Taskdd( ,
(dd, -
)dd- .
{ee 
Nameff 
=ff 
$strff '
,ff' (
Descriptiongg 
=gg 
$strgg ;
}hh 
;hh 
taskFieldPasswordii 
.ii 
SetValueii &
(ii& '
configTCii' /
.ii/ 0
Passwordii0 8
)ii8 9
;ii9 :
varjj 
fieldPasswordjj 
=jj 
newjj  #

WebElementjj$ .
(jj. /
$strjj/ G
,jjG H
PathMapjjI P
)jjP Q
;jjQ R
varkk !
fieldPasswordSearchedkk %
=kk& '
WebElementManagerkk( 9
.kk9 :
FindElementskk: F
(kkF G
DriverkkG M
,kkM N
fieldPasswordkkO \
)kk\ ]
.kk] ^
	ElementAtkk^ g
(kkg h
$numkkh i
)kki j
;kkj k
ifll 
(ll !
fieldPasswordSearchedll %
!=ll& (
nullll) -
)ll- .
{mm !
fieldPasswordSearchednn %
.nn% &
SendKeysnn& .
(nn. /
configTCnn/ 7
.nn7 8
Passwordnn8 @
)nn@ A
;nnA B
_logoo 
.oo 
Infooo 
(oo 
$stroo >
+oo? @
configTCooA I
.ooI J
PasswordooJ R
+ooS T
$strooU ^
)oo^ _
;oo_ `
taskFieldPasswordpp !
.pp! "
	SetResultpp" +
(pp+ ,
Resultpp, 2
.pp2 3
PASSEDpp3 9
)pp9 :
;pp: ;
}qq 
elserr 
{ss 
_logtt 
.tt 
Errortt 
(tt 
$strtt 7
)tt7 8
;tt8 9
taskFieldPassworduu !
.uu! "
SetErrorMessageuu" 1
(uu1 2
$struu2 N
)uuN O
;uuO P
taskFieldPasswordvv !
.vv! "
	SetResultvv" +
(vv+ ,
Resultvv, 2
.vv2 3
ERRORvv3 8
)vv8 9
;vv9 :
returnww 
falseww 
;ww 
}xx 
taskFieldPasswordyy 
.yy 
	CloseTaskyy '
(yy' (
)yy( )
;yy) *
Taskszz 
.zz 
Addzz 
(zz 
taskFieldPasswordzz '
)zz' (
;zz( )
var}} 
taskBtnSuscribeForm}} #
=}}$ %
new}}& )
Task}}* .
(}}. /
)}}/ 0
{~~ 
Name 
= 
$str 0
,0 1
Description
ÄÄ 
=
ÄÄ 
$str
ÄÄ @
}
ÅÅ 
;
ÅÅ 
var
ÇÇ 
btn_suscribe
ÇÇ 
=
ÇÇ 
new
ÇÇ "

WebElement
ÇÇ# -
(
ÇÇ- .
$str
ÇÇ. @
,
ÇÇ@ A
PathMap
ÇÇB I
)
ÇÇI J
;
ÇÇJ K
var
ÉÉ #
btn_suscribe_Searched
ÉÉ %
=
ÉÉ& '
WebElementManager
ÉÉ( 9
.
ÉÉ9 :
FindElements
ÉÉ: F
(
ÉÉF G
Driver
ÉÉG M
,
ÉÉM N
btn_suscribe
ÉÉO [
)
ÉÉ[ \
.
ÉÉ\ ]
	ElementAt
ÉÉ] f
(
ÉÉf g
$num
ÉÉg h
)
ÉÉh i
;
ÉÉi j
if
ÑÑ 
(
ÑÑ #
btn_suscribe_Searched
ÑÑ %
!=
ÑÑ& (
null
ÑÑ) -
)
ÑÑ- .
{
ÖÖ #
btn_suscribe_Searched
ÜÜ %
.
ÜÜ% &
Click
ÜÜ& +
(
ÜÜ+ ,
)
ÜÜ, -
;
ÜÜ- .
_log
áá 
.
áá 
Info
áá 
(
áá 
$str
áá C
)
ááC D
;
ááD E!
taskBtnSuscribeForm
àà #
.
àà# $
	SetResult
àà$ -
(
àà- .
Result
àà. 4
.
àà4 5
PASSED
àà5 ;
)
àà; <
;
àà< =
}
ââ 
else
ää 
{
ãã 
_log
åå 
.
åå 
Error
åå 
(
åå 
$str
åå @
)
åå@ A
;
ååA B!
taskBtnSuscribeForm
çç #
.
çç# $
SetErrorMessage
çç$ 3
(
çç3 4
$str
çç4 Y
)
ççY Z
;
ççZ [!
taskBtnSuscribeForm
éé #
.
éé# $
	SetResult
éé$ -
(
éé- .
Result
éé. 4
.
éé4 5
ERROR
éé5 :
)
éé: ;
;
éé; <
return
èè 
false
èè 
;
èè 
}
êê !
taskBtnSuscribeForm
ëë 
.
ëë  
	CloseTask
ëë  )
(
ëë) *
)
ëë* +
;
ëë+ ,
Tasks
íí 
.
íí 
Add
íí 
(
íí !
taskBtnSuscribeForm
íí )
)
íí) *
;
íí* +
return
îî 
true
îî 
;
îî 
}
ïï 	
}
òò 
}ôô €"
kD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Testcases\LogoutTestcase.cs
	namespace

 	
TestBalanceTonQuizz


 
.

 
	Testcases

 '
{ 
public 

class 
LogoutTestcase 
:  !
TestCase" *
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_log- 1
=2 3
log4net4 ;
.; <

LogManager< F
.F G
	GetLoggerG P
(P Q
typeofQ W
(W X
LogoutTestcaseX f
)f g
)g h
;h i
private 
static 
ConfigTCLogin $
configLogin% 0
;0 1
public 
LogoutTestcase 
( 

IWebDriver (
driver) /
,/ 0
string1 7
pathMap8 ?
)? @
{ 	
Name 
= 
$str #
;# $
Driver 
= 
driver 
; 
PathMap 
= 
pathMap 
; 
Tasks 
= 
new 
List 
< 
Task !
>! "
(" #
)# $
;$ %
ConfigLoader 
= 
new 
ConfigLoader +
(+ ,
), -
;- .
} 	
public 
override 
void 
LoadConfigTC )
() *
)* +
{   	
configLogin!! 
=!! 
ConfigLoader!! &
.!!& '
LoadConfigTCLogin!!' 8
(!!8 9
Path!!9 =
.!!= >
Combine!!> E
(!!E F
Environment!!F Q
.!!Q R
CurrentDirectory!!R b
,!!b c
$str!!d p
)!!p q
)!!q r
;!!r s
}"" 	
public,, 
override,, 
bool,, 
Execute,, $
(,,$ %
),,% &
{-- 	
Console.. 
... 
	WriteLine.. 
(.. 
$str.. 5
)..5 6
;..6 7
var11 "
taskClickBtnDisconnect11 &
=11' (
new11) ,
Task11- 1
(111 2
)112 3
{22 
Name33 
=33 
$str33 *
,33* +
Description44 
=44 
$str44 :
}55 
;55 
var66 
btn_disconnect66 
=66  
new66! $

WebElement66% /
(66/ 0
$str660 @
,66@ A
PathMap66B I
)66I J
;66J K
var77 #
btn_disconnect_Searched77 '
=77( )
WebElementManager77* ;
.77; <
FindFirstElement77< L
(77L M
Driver77M S
,77S T
btn_disconnect77U c
)77c d
;77d e
if88 
(88 #
btn_disconnect_Searched88 '
!=88( *
null88+ /
)88/ 0
{99 #
btn_disconnect_Searched:: '
.::' (
Click::( -
(::- .
)::. /
;::/ 0
_log;; 
.;; 
Info;; 
(;; 
$str;; -
);;- .
;;;. /"
taskClickBtnDisconnect<< &
.<<& '
	SetResult<<' 0
(<<0 1
Result<<1 7
.<<7 8
PASSED<<8 >
)<<> ?
;<<? @
}== 
else>> 
{?? 
_log@@ 
.@@ 
Error@@ 
(@@ 
$str@@ X
)@@X Y
;@@Y Z"
taskClickBtnDisconnectAA &
.AA& '
SetErrorMessageAA' 6
(AA6 7
$strAA7 t
)AAt u
;AAu v"
taskClickBtnDisconnectBB &
.BB& '
	SetResultBB' 0
(BB0 1
ResultBB1 7
.BB7 8
ERRORBB8 =
)BB= >
;BB> ?
returnCC 
falseCC 
;CC 
}DD "
taskClickBtnDisconnectEE "
.EE" #
	CloseTaskEE# ,
(EE, -
)EE- .
;EE. /
TasksFF 
.FF 
AddFF 
(FF "
taskClickBtnDisconnectFF ,
)FF, -
;FF- .
returnHH 
trueHH 
;HH 
}II 	
}LL 
}MM ‹n
mD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Testcases\SuscribeTestcase.cs
	namespace

 	
TestBalanceTonQuizz


 
.

 
	Testcases

 '
{ 
public 

class 
SuscribeTestcase !
:" #
TestCase$ ,
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_log- 1
=2 3
log4net4 ;
.; <

LogManager< F
.F G
	GetLoggerG P
(P Q
typeofQ W
(W X
SuscribeTestcaseX h
)h i
)i j
;j k
private 
static 
ConfigTCSuscribe '
configTC( 0
;0 1
public 
SuscribeTestcase 
(  

IWebDriver  *
driver+ 1
,1 2
string3 9
pathMap: A
)A B
{ 	
Name 
= 
$str %
;% &
Driver 
= 
driver 
; 
PathMap 
= 
pathMap 
; 
Tasks 
= 
new 
List 
< 
Task !
>! "
(" #
)# $
;$ %
ConfigLoader 
= 
new 
ConfigLoader +
(+ ,
), -
;- .
} 	
public 
override 
void 
LoadConfigTC )
() *
)* +
{   	
configTC!! 
=!! 
ConfigLoader!! #
.!!# $ 
LoadConfigTCSuscribe!!$ 8
(!!8 9
Path!!9 =
.!!= >
Combine!!> E
(!!E F
Environment!!F Q
.!!Q R
CurrentDirectory!!R b
,!!b c
$str!!d p
)!!p q
)!!q r
;!!r s
}"" 	
public,, 
override,, 
bool,, 
Execute,, $
(,,$ %
),,% &
{-- 	
Console.. 
... 
	WriteLine.. 
(.. 
$str.. 7
)..7 8
;..8 9
var11 
taskBtnSuscribe11 
=11  !
new11" %
Task11& *
(11* +
)11+ ,
{22 
Name33 
=33 
$str33 +
,33+ ,
Description44 
=44 
$str44 D
}55 
;55 
var66 
buttonSuscribe66 
=66  
new66! $

WebElement66% /
(66/ 0
$str660 A
,66A B
PathMap66C J
)66J K
;66K L
var77 "
buttonSuscribeSearched77 &
=77' (
WebElementManager77) :
.77: ;
FindFirstElement77; K
(77K L
Driver77L R
,77R S
buttonSuscribe77T b
)77b c
;77c d
if88 
(88 "
buttonSuscribeSearched88 &
!=88' )
null88* .
)88. /
{99 "
buttonSuscribeSearched:: &
.::& '
Click::' ,
(::, -
)::- .
;::. /
_log;; 
.;; 
Info;; 
(;; 
$str;; A
);;A B
;;;B C
taskBtnSuscribe<< 
.<<  
	SetResult<<  )
(<<) *
Result<<* 0
.<<0 1
PASSED<<1 7
)<<7 8
;<<8 9
}== 
else>> 
{?? 
_log@@ 
.@@ 
Error@@ 
(@@ 
$str@@ <
)@@< =
;@@= >
taskBtnSuscribeAA 
.AA  
SetErrorMessageAA  /
(AA/ 0
$strAA0 Q
)AAQ R
;AAR S
taskBtnSuscribeBB 
.BB  
	SetResultBB  )
(BB) *
ResultBB* 0
.BB0 1
ERRORBB1 6
)BB6 7
;BB7 8
returnCC 
falseCC 
;CC 
}DD 
taskBtnSuscribeEE 
.EE 
	CloseTaskEE %
(EE% &
)EE& '
;EE' (
TasksFF 
.FF 
AddFF 
(FF 
taskBtnSuscribeFF %
)FF% &
;FF& '
varII 
taskFieldUsernameII !
=II" #
newII$ '
TaskII( ,
(II, -
)II- .
{JJ 
NameKK 
=KK 
$strKK '
,KK' (
DescriptionLL 
=LL 
$strLL ;
}MM 
;MM 
taskFieldUsernameNN 
.NN 
SetValueNN &
(NN& '
configTCNN' /
.NN/ 0
UsernameNN0 8
)NN8 9
;NN9 :
varOO 
fieldSuscribeOO 
=OO 
newOO  #

WebElementOO$ .
(OO. /
$strOO/ ?
,OO? @
PathMapOOA H
)OOH I
;OOI J
varPP !
fieldSuscribeSearchedPP %
=PP& '
WebElementManagerPP( 9
.PP9 :
FindFirstElementPP: J
(PPJ K
DriverPPK Q
,PPQ R
fieldSuscribePPS `
)PP` a
;PPa b
ifQQ 
(QQ !
fieldSuscribeSearchedQQ %
!=QQ& (
nullQQ) -
)QQ- .
{RR !
fieldSuscribeSearchedSS %
.SS% &
SendKeysSS& .
(SS. /
configTCSS/ 7
.SS7 8
UsernameSS8 @
)SS@ A
;SSA B
_logTT 
.TT 
InfoTT 
(TT 
$strTT >
+TT? @
configTCTTA I
.TTI J
UsernameTTJ R
+TTS T
$strTTU ^
)TT^ _
;TT_ `
taskFieldUsernameUU !
.UU! "
	SetResultUU" +
(UU+ ,
ResultUU, 2
.UU2 3
PASSEDUU3 9
)UU9 :
;UU: ;
}VV 
elseWW 
{XX 
_logYY 
.YY 
ErrorYY 
(YY 
$strYY 7
)YY7 8
;YY8 9
taskFieldUsernameZZ !
.ZZ! "
SetErrorMessageZZ" 1
(ZZ1 2
$strZZ2 N
)ZZN O
;ZZO P
taskFieldUsername[[ !
.[[! "
	SetResult[[" +
([[+ ,
Result[[, 2
.[[2 3
ERROR[[3 8
)[[8 9
;[[9 :
return\\ 
false\\ 
;\\ 
}]] 
taskFieldUsername^^ 
.^^ 
	CloseTask^^ '
(^^' (
)^^( )
;^^) *
Tasks__ 
.__ 
Add__ 
(__ 
taskFieldUsername__ '
)__' (
;__( )
varbb 
taskFieldPasswordbb !
=bb" #
newbb$ '
Taskbb( ,
(bb, -
)bb- .
{cc 
Namedd 
=dd 
$strdd '
,dd' (
Descriptionee 
=ee 
$stree ;
}ff 
;ff 
taskFieldPasswordgg 
.gg 
SetValuegg &
(gg& '
configTCgg' /
.gg/ 0
Passwordgg0 8
)gg8 9
;gg9 :
varhh 
fieldPasswordhh 
=hh 
newhh  #

WebElementhh$ .
(hh. /
$strhh/ ?
,hh? @
PathMaphhA H
)hhH I
;hhI J
varii !
fieldPasswordSearchedii %
=ii& '
WebElementManagerii( 9
.ii9 :
FindFirstElementii: J
(iiJ K
DriveriiK Q
,iiQ R
fieldPasswordiiS `
)ii` a
;iia b
ifjj 
(jj !
fieldPasswordSearchedjj %
!=jj& (
nulljj) -
)jj- .
{kk !
fieldPasswordSearchedll %
.ll% &
SendKeysll& .
(ll. /
configTCll/ 7
.ll7 8
Passwordll8 @
)ll@ A
;llA B
_logmm 
.mm 
Infomm 
(mm 
$strmm >
+mm? @
configTCmmA I
.mmI J
PasswordmmJ R
+mmS T
$strmmU ^
)mm^ _
;mm_ `
taskFieldPasswordnn !
.nn! "
	SetResultnn" +
(nn+ ,
Resultnn, 2
.nn2 3
PASSEDnn3 9
)nn9 :
;nn: ;
}oo 
elsepp 
{qq 
_logrr 
.rr 
Errorrr 
(rr 
$strrr 7
)rr7 8
;rr8 9
taskFieldPasswordss !
.ss! "
SetErrorMessagess" 1
(ss1 2
$strss2 N
)ssN O
;ssO P
taskFieldPasswordtt !
.tt! "
	SetResulttt" +
(tt+ ,
Resulttt, 2
.tt2 3
ERRORtt3 8
)tt8 9
;tt9 :
returnuu 
falseuu 
;uu 
}vv 
taskFieldPasswordww 
.ww 
	CloseTaskww '
(ww' (
)ww( )
;ww) *
Tasksxx 
.xx 
Addxx 
(xx 
taskFieldPasswordxx '
)xx' (
;xx( )
var{{ !
taskFieldConfPassword{{ %
={{& '
new{{( +
Task{{, 0
({{0 1
){{1 2
{|| 
Name}} 
=}} 
$str}} /
,}}/ 0
Description~~ 
=~~ 
$str~~ ;
} 
; #
taskFieldConfPassword
ÄÄ !
.
ÄÄ! "
SetValue
ÄÄ" *
(
ÄÄ* +
configTC
ÄÄ+ 3
.
ÄÄ3 4
Password
ÄÄ4 <
)
ÄÄ< =
;
ÄÄ= >
var
ÅÅ "
fieldConfirmPassword
ÅÅ $
=
ÅÅ% &
new
ÅÅ' *

WebElement
ÅÅ+ 5
(
ÅÅ5 6
$str
ÅÅ6 M
,
ÅÅM N
PathMap
ÅÅO V
)
ÅÅV W
;
ÅÅW X
var
ÇÇ *
fieldConfirmPasswordSearched
ÇÇ ,
=
ÇÇ- .
WebElementManager
ÇÇ/ @
.
ÇÇ@ A
FindFirstElement
ÇÇA Q
(
ÇÇQ R
Driver
ÇÇR X
,
ÇÇX Y"
fieldConfirmPassword
ÇÇZ n
)
ÇÇn o
;
ÇÇo p
if
ÉÉ 
(
ÉÉ *
fieldConfirmPasswordSearched
ÉÉ ,
!=
ÉÉ- /
null
ÉÉ0 4
)
ÉÉ4 5
{
ÑÑ *
fieldConfirmPasswordSearched
ÖÖ ,
.
ÖÖ, -
SendKeys
ÖÖ- 5
(
ÖÖ5 6
configTC
ÖÖ6 >
.
ÖÖ> ?
Password
ÖÖ? G
)
ÖÖG H
;
ÖÖH I
_log
ÜÜ 
.
ÜÜ 
Info
ÜÜ 
(
ÜÜ 
$str
ÜÜ >
+
ÜÜ? @
configTC
ÜÜA I
.
ÜÜI J
Password
ÜÜJ R
+
ÜÜS T
$str
ÜÜU ^
)
ÜÜ^ _
;
ÜÜ_ `#
taskFieldConfPassword
áá %
.
áá% &
	SetResult
áá& /
(
áá/ 0
Result
áá0 6
.
áá6 7
PASSED
áá7 =
)
áá= >
;
áá> ?
}
àà 
else
ââ 
{
ää 
_log
ãã 
.
ãã 
Error
ãã 
(
ãã 
$str
ãã ?
)
ãã? @
;
ãã@ A#
taskFieldConfPassword
åå %
.
åå% &
SetErrorMessage
åå& 5
(
åå5 6
$str
åå6 Z
)
ååZ [
;
åå[ \#
taskFieldConfPassword
çç %
.
çç% &
	SetResult
çç& /
(
çç/ 0
Result
çç0 6
.
çç6 7
ERROR
çç7 <
)
çç< =
;
çç= >
return
éé 
false
éé 
;
éé 
}
èè #
taskFieldConfPassword
êê !
.
êê! "
	CloseTask
êê" +
(
êê+ ,
)
êê, -
;
êê- .
Tasks
ëë 
.
ëë 
Add
ëë 
(
ëë #
taskFieldConfPassword
ëë +
)
ëë+ ,
;
ëë, -
var
îî !
taskBtnSuscribeForm
îî #
=
îî$ %
new
îî& )
Task
îî* .
(
îî. /
)
îî/ 0
{
ïï 
Name
ññ 
=
ññ 
$str
ññ '
,
ññ' (
Description
óó 
=
óó 
$str
óó ;
}
òò 
;
òò 
var
ôô 
btn_suscribe
ôô 
=
ôô 
new
ôô "

WebElement
ôô# -
(
ôô- .
$str
ôô. <
,
ôô< =
PathMap
ôô> E
)
ôôE F
;
ôôF G
var
öö #
btn_suscribe_Searched
öö %
=
öö& '
WebElementManager
öö( 9
.
öö9 :
FindFirstElement
öö: J
(
ööJ K
Driver
ööK Q
,
ööQ R
btn_suscribe
ööS _
)
öö_ `
;
öö` a
if
õõ 
(
õõ #
btn_suscribe_Searched
õõ %
!=
õõ& (
null
õõ) -
)
õõ- .
{
úú #
btn_suscribe_Searched
ùù %
.
ùù% &
Click
ùù& +
(
ùù+ ,
)
ùù, -
;
ùù- .
_log
ûû 
.
ûû 
Info
ûû 
(
ûû 
$str
ûû ;
)
ûû; <
;
ûû< =!
taskBtnSuscribeForm
üü #
.
üü# $
	SetResult
üü$ -
(
üü- .
Result
üü. 4
.
üü4 5
PASSED
üü5 ;
)
üü; <
;
üü< =
}
†† 
else
°° 
{
¢¢ 
_log
££ 
.
££ 
Error
££ 
(
££ 
$str
££ 8
)
££8 9
;
££9 :!
taskBtnSuscribeForm
§§ #
.
§§# $
SetErrorMessage
§§$ 3
(
§§3 4
$str
§§4 Q
)
§§Q R
;
§§R S!
taskBtnSuscribeForm
•• #
.
••# $
	SetResult
••$ -
(
••- .
Result
••. 4
.
••4 5
ERROR
••5 :
)
••: ;
;
••; <
return
¶¶ 
false
¶¶ 
;
¶¶ 
}
ßß !
taskBtnSuscribeForm
®® 
.
®®  
	CloseTask
®®  )
(
®®) *
)
®®* +
;
®®+ ,
Tasks
©© 
.
©© 
Add
©© 
(
©© !
taskBtnSuscribeForm
©© )
)
©©) *
;
©©* +
return
´´ 
true
´´ 
;
´´ 
}
¨¨ 	
}
ØØ 
}∞∞ ÄA
jD:\Documents\GITrepos\balance-ton-quizz\TestBalanceTonQuizz\TestBalanceTonQuizz\Tools\WebElementManager.cs
	namespace

 	
TestBalanceTonQuizz


 
.

 
Tools

 #
{ 
public 

static 
class 
WebElementManager )
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_log- 1
=2 3
log4net4 ;
.; <

LogManager< F
.F G
	GetLoggerG P
(P Q
typeofQ W
(W X
WebElementManagerX i
)i j
)j k
;k l
public 
static 
IWebElement !
FindFirstElement" 2
(2 3

IWebDriver3 =
driver> D
,D E

WebElementF P
elementQ X
)X Y
{ 	
var 
	condition 
= 
$str 
; 
if 
( 
element 
. 
Type 
. 
Equals #
(# $
WebElementType$ 2
.2 3
Class3 8
)8 9
)9 :
	condition 
= 
$str 
+  !
element" )
.) *
Id* ,
;, -
else 
if 
( 
element 
. 
Type !
.! "
Equals" (
(( )
WebElementType) 7
.7 8
Id8 :
): ;
); <
	condition 
= 
$str 
+  !
element" )
.) *
Id* ,
;, -
else   
if   
(   
element   
.   
Type   !
.  ! "
Equals  " (
(  ( )
WebElementType  ) 7
.  7 8
Tag  8 ;
)  ; <
)  < =
	condition!! 
=!! 
element!! #
.!!# $
Id!!$ &
;!!& '
IWebElement## 
retour## 
=##  
driver##! '
.##' (
FindElement##( 3
(##3 4
By##4 6
.##6 7
CssSelector##7 B
(##B C
	condition##C L
)##L M
)##M N
;##N O
if$$ 
($$ 
retour$$ 
!=$$ 
null$$ 
)$$ 
return%% 
retour%% 
;%% 
else&& 
{'' 
_log(( 
.(( 
Error(( 
((( 
$str(( ?
+((@ A
element((B I
.((I J
Name((J N
+((O P
$str((Q Y
+((Z [
element((\ c
.((c d
Id((d f
)((f g
;((g h
return)) 
null)) 
;)) 
}** 
}++ 	
public.. 
static.. 
ReadOnlyCollection.. (
<..( )
IWebElement..) 4
>..4 5
FindElements..6 B
(..B C

IWebDriver..C M
driver..N T
,..T U

WebElement..V `
element..a h
)..h i
{// 	
var00 
	condition00 
=00 
$str00 
;00 
if11 
(11 
element11 
.11 
Type11 
.11 
Equals11 #
(11# $
WebElementType11$ 2
.112 3
Class113 8
)118 9
)119 :
	condition22 
=22 
$str22 
+22  !
element22" )
.22) *
Id22* ,
;22, -
else33 
if33 
(33 
element33 
.33 
Type33 !
.33! "
Equals33" (
(33( )
WebElementType33) 7
.337 8
Id338 :
)33: ;
)33; <
	condition44 
=44 
$str44 
+44  !
element44" )
.44) *
Id44* ,
;44, -
else55 
if55 
(55 
element55 
.55 
Type55 !
.55! "
Equals55" (
(55( )
WebElementType55) 7
.557 8
Tag558 ;
)55; <
)55< =
	condition66 
=66 
element66 #
.66# $
Id66$ &
;66& '
var88 
retour88 
=88 
driver88 
.88  
FindElements88  ,
(88, -
By88- /
.88/ 0
CssSelector880 ;
(88; <
	condition88< E
)88E F
)88F G
;88G H
if99 
(99 
retour99 
!=99 
null99 
)99 
return:: 
retour:: 
;:: 
else;; 
{<< 
_log== 
.== 
Error== 
(== 
$str== @
+==A B
element==C J
.==J K
Name==K O
+==P Q
$str==R Z
+==[ \
element==] d
.==d e
Id==e g
)==g h
;==h i
return>> 
null>> 
;>> 
}?? 
}@@ 	
publicLL 
staticLL 
ListLL 
<LL 
stringLL !
>LL! "
LoadWebElementMapLL# 4
(LL5 6
stringLL6 <
nameElementLL= H
,LLH I
stringLLJ P
pathMapLLQ X
)LLX Y
{MM 	
constNN 
stringNN 

NODE_NODESNN #
=NN$ %
$strNN& -
;NN- .
constOO 
stringOO 
	NODE_NODEOO "
=OO# $
$strOO% +
;OO+ ,
constPP 
stringPP 
	NODE_NAMEPP "
=PP# $
$strPP% +
;PP+ ,
constQQ 
stringQQ 
NODE_IDQQ  
=QQ! "
$strQQ# '
;QQ' (
constRR 
stringRR 
	NODE_TYPERR "
=RR# $
$strRR% +
;RR+ ,
varTT 

listRetourTT 
=TT 
newTT  
ListTT! %
<TT% &
stringTT& ,
>TT, -
(TT- .
)TT. /
;TT/ 0
varVV 
docVV 
=VV 
	XDocumentVV 
.VV  
LoadVV  $
(VV$ %
pathMapVV% ,
)VV, -
;VV- .
varWW 
rootWW 
=WW 
docWW 
.WW 
ElementWW "
(WW" #

NODE_NODESWW# -
)WW- .
;WW. /
ifXX 
(XX 
rootXX 
==XX 
nullXX 
)XX 
{YY 
ConsoleZZ 
.ZZ 
	WriteLineZZ !
(ZZ! "
$strZZ" J
)ZZJ K
;ZZK L
return[[ 
null[[ 
;[[ 
}\\ 
var^^ 
nodes^^ 
=^^ 
root^^ 
.^^ 
Elements^^ %
(^^% &
	NODE_NODE^^& /
)^^/ 0
;^^0 1
var__ 
node__ 
=__ 
nodes__ 
.__ 
First__ "
(__" #
x__# $
=>__% '
x__( )
.__) *
Element__* 1
(__1 2
	NODE_NAME__2 ;
)__; <
.__< =
Value__= B
.__B C
Equals__C I
(__I J
nameElement__J U
)__U V
)__V W
;__W X

listRetouraa 
.aa 
Addaa 
(aa 
nodeaa 
.aa  
Elementaa  '
(aa' (
	NODE_NAMEaa( 1
)aa1 2
.aa2 3
Valueaa3 8
)aa8 9
;aa9 :

listRetourbb 
.bb 
Addbb 
(bb 
nodebb 
.bb  
Elementbb  '
(bb' (
	NODE_TYPEbb( 1
)bb1 2
.bb2 3
Valuebb3 8
)bb8 9
;bb9 :

listRetourcc 
.cc 
Addcc 
(cc 
nodecc 
.cc  
Elementcc  '
(cc' (
NODE_IDcc( /
)cc/ 0
.cc0 1
Valuecc1 6
)cc6 7
;cc7 8
returnee 

listRetouree 
;ee 
}ff 	
}jj 
}kk 