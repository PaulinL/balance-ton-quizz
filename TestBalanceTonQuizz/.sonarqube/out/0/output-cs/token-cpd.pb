�
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
} �h
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
�� 
ConfigTCSuscribe
�� "
LoadConfigTCSuscribe
��  4
(
��4 5
string
��5 ;
url
��< ?
)
��? @
{
�� 	
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
var
�� 
doc
�� 
=
�� 
	XDocument
�� 
.
��  
Load
��  $
(
��$ %
url
��% (
)
��( )
;
��) *
var
�� 
root
�� 
=
�� 
doc
�� 
.
�� 
Element
�� "
(
��" #
NODE_CONFIG
��# .
)
��. /
;
��/ 0
if
�� 
(
�� 
root
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
$str
��" E
)
��E F
;
��F G
return
�� 
null
�� 
;
�� 
}
�� 
var
�� 
config
�� 
=
�� 
new
�� 
ConfigTCSuscribe
�� -
(
��- .
)
��. /
{
�� 
Username
�� 
=
�� 
root
�� 
.
��  
Element
��  '
(
��' (
NODE_TESTCASES
��( 6
)
��6 7
.
��7 8
Element
��8 ?
(
��? @
NODE_SUSCRIBETC
��@ O
)
��O P
.
��P Q
Element
��Q X
(
��X Y
NODE_USERNAME
��Y f
)
��f g
.
��g h
Value
��h m
,
��m n
Password
�� 
=
�� 
root
�� 
.
��  
Element
��  '
(
��' (
NODE_TESTCASES
��( 6
)
��6 7
.
��7 8
Element
��8 ?
(
��? @
NODE_SUSCRIBETC
��@ O
)
��O P
.
��P Q
Element
��Q X
(
��X Y
NODE_PASSWORD
��Y f
)
��f g
.
��g h
Value
��h m
}
�� 
;
�� 
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� 5
)
��5 6
;
��6 7
return
�� 
config
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
} �
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
} �
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
}>> �
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
} �
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
}^^ �
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
}'' �
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
} �
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
} �Y
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
)	 �
.
� �
DeclaringType
� �
)
� �
;
� �
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
$str	::s �
)
::� �
)
::� �
)
::� �
;
::� �
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
)	;; �
)
;;� �
;
;;� �
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
)	<< �
;
<<� �
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
$str	==v �
)
==� �
)
==� �
)
==� �
;
==� �
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
�� 
.
�� 
Manage
�� 
(
�� 
)
�� 
.
��  
Window
��  &
.
��& '
Maximize
��' /
(
��/ 0
)
��0 1
;
��1 2
driver
�� 
.
�� 
Navigate
�� 
(
��  
)
��  !
.
��! "
GoToUrl
��" )
(
��) *
url
��* -
)
��- .
;
��. /
Thread
�� 
.
�� 
Sleep
�� 
(
�� 
$num
�� !
)
��! "
;
��" #
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
e
�� 
.
�� 

StackTrace
�� '
)
��' (
;
��( )
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� N
)
��N O
;
��O P
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� ƌ
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
$str	))r �
)
))� �
+
))� �
$str
))� �
)
))� �
;
))� �
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
$str	33w �
)
33� �
)
33� �
;
33� �
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
$str	;;{ �
)
;;� �
+
;;� �
$str
;;� �
)
;;� �
)
;;� �
;
;;� �
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
�� 
(
�� 
var
�� 
tc
�� 
in
�� 
testCampaign
�� +
.
��+ ,
	TestCases
��, 5
)
��5 6
{
�� 
if
�� 
(
�� 
tc
�� 
.
�� 
Result
�� 
.
�� 
Equals
�� #
(
��# $
Result
��$ *
.
��* +
PASSED
��+ 1
)
��1 2
)
��2 3
html
�� 
+=
�� 
$str
�� :
+
��; <
$str
��= A
;
��A B
else
�� 
if
�� 
(
�� 
tc
�� 
.
�� 
Result
�� "
.
��" #
Equals
��# )
(
��) *
Result
��* 0
.
��0 1
FAILED
��1 7
)
��7 8
)
��8 9
html
�� 
+=
�� 
$str
�� :
+
��; <
$str
��= A
;
��A B
else
�� 
html
�� 
+=
�� 
$str
�� 9
+
��: ;
$str
��< @
;
��@ A
html
�� 
+=
�� 
$str
�� 3
+
��4 5
Path
��5 9
.
��9 :
Combine
��: A
(
��A B
tc
��B D
.
��D E
Name
��E I
,
��I J
tc
��K M
.
��M N
Name
��N R
+
��S T
$str
��T [
)
��[ \
+
��] ^
$str
��^ c
+
��d e
tc
��e g
.
��g h
Name
��h l
+
��l m
$str
��n y
+
��z {
$str��| �
;��� �
html
�� 
+=
�� 
$str
�� )
+
��* +
tc
��+ -
.
��- .
Result
��. 4
+
��5 6
$str
��7 >
+
��? @
$str
��A E
;
��E F
html
�� 
+=
�� 
$str
�� &
+
��' (
$str
��) -
;
��- .
}
�� 
html
�� 
+=
�� 
$str
�� !
+
��" #
$str
��$ (
;
��( )
html
�� 
+=
�� 
$str
�� 
+
��  
$str
��! %
;
��% &
}
�� 	
public
�� 
void
�� 
WriteTabTask
��  
(
��  !
TestCase
��! )
tc
��* ,
)
��, -
{
�� 	
html
�� 
+=
�� 
$str
�� 
+
�� 
$str
��  $
;
��$ %
html
�� 
+=
�� 
$str
��  
+
��! "
$str
��# '
;
��' (
html
�� 
+=
�� 
$str
�� *
+
��+ ,
$str
��- 1
;
��1 2
html
�� 
+=
�� 
$str
�� 0
+
��1 2
$str
��3 7
;
��7 8
html
�� 
+=
�� 
$str
�� .
+
��/ 0
$str
��1 5
;
��5 6
html
�� 
+=
�� 
$str
�� ,
+
��- .
$str
��/ 3
;
��3 4
html
�� 
+=
�� 
$str
�� +
+
��, -
$str
��. 2
;
��2 3
html
�� 
+=
�� 
$str
�� !
+
��" #
$str
��$ (
;
��( )
html
�� 
+=
�� 
$str
��  
+
��! "
$str
��# '
;
��' (
foreach
�� 
(
�� 
var
�� 
task
�� 
in
��  
tc
��! #
.
��# $
Tasks
��$ )
)
��) *
{
�� 
if
�� 
(
�� 
task
�� 
.
�� 
Result
�� 
.
��  
Equals
��  &
(
��& '
Result
��' -
.
��- .
PASSED
��. 4
)
��4 5
)
��5 6
html
�� 
+=
�� 
$str
�� :
+
��; <
$str
��= A
;
��A B
else
�� 
if
�� 
(
�� 
task
�� 
.
�� 
Result
�� $
.
��$ %
Equals
��% +
(
��+ ,
Result
��, 2
.
��2 3
FAILED
��3 9
)
��9 :
)
��: ;
html
�� 
+=
�� 
$str
�� :
+
��; <
$str
��= A
;
��A B
else
�� 
html
�� 
+=
�� 
$str
�� 9
+
��: ;
$str
��< @
;
��@ A
html
�� 
+=
�� 
$str
�� )
+
��* +
task
��+ /
.
��/ 0
Name
��0 4
+
��5 6
$str
��7 >
+
��? @
$str
��A E
;
��E F
html
�� 
+=
�� 
$str
�� )
+
��* +
task
��, 0
.
��0 1
	StartDate
��1 :
.
��: ;
ToString
��; C
(
��C D
$str
��D N
)
��N O
+
��P Q
$str
��R Z
+
��[ \
$str
��] a
;
��a b
html
�� 
+=
�� 
$str
�� )
+
��* +
task
��, 0
.
��0 1
EndDate
��1 8
.
��8 9
ToString
��9 A
(
��A B
$str
��B L
)
��L M
+
��N O
$str
��P X
+
��Y Z
$str
��[ _
;
��_ `
html
�� 
+=
�� 
$str
�� )
+
��* +
task
��, 0
.
��0 1
Result
��1 7
+
��8 9
$str
��: A
+
��B C
$str
��D H
;
��H I
if
�� 
(
�� 
task
�� 
.
�� 
	ListValue
�� "
.
��" #
Count
��# (
!=
��) +
$num
��, -
)
��- .
{
�� 
html
�� 
+=
�� 
$str
�� )
+
��* +
$str
��, 0
;
��0 1
html
�� 
+=
�� 
$str
�� -
+
��. /
$str
��0 4
;
��4 5
foreach
�� 
(
�� 
var
��  
value
��! &
in
��' )
task
��* .
.
��. /
	ListValue
��/ 8
)
��8 9
html
�� 
+=
�� 
$str
��  3
+
��4 5
value
��6 ;
+
��< =
$str
��> E
+
��F G
$str
��H L
;
��L M
html
�� 
+=
�� 
$str
�� .
+
��/ 0
$str
��1 5
;
��5 6
html
�� 
+=
�� 
$str
�� *
+
��+ ,
$str
��- 1
;
��1 2
}
�� 
else
�� 
html
�� 
+=
�� 
$str
�� '
+
��( )
$str
��* .
;
��. /
}
�� 
html
�� 
+=
�� 
$str
�� !
+
��" #
$str
��$ (
;
��( )
html
�� 
+=
�� 
$str
�� 
+
��  
$str
��! %
;
��% &
}
�� 	
public
�� 
void
�� &
WriteDeclarationHTMLFile
�� ,
(
��, -
)
��- .
{
�� 	
html
�� 
=
�� 
$str
�� $
+
��% &
$str
��' +
;
��+ ,
html
�� 
+=
�� 
$str
�� 
+
��  !
$str
��" &
;
��& '
}
�� 	
public
�� 
void
�� 
WriteHeadHTMLFile
�� %
(
��% &
string
��& ,
	titlePage
��- 6
,
��6 7
string
��8 >
pathStyleFile
��? L
)
��L M
{
�� 	
html
�� 
+=
�� 
$str
�� #
+
��$ %
$str
��& *
;
��* +
html
�� 
+=
�� 
$str
�� (
+
��) *
	titlePage
��* 3
+
��4 5
$str
��6 @
+
��A B
$str
��C G
;
��G H
html
�� 
+=
�� 
$str
�� ?
+
��@ A
pathStyleFile
��B O
+
��P Q
$str
��R U
+
��V W
$str
��X \
;
��\ ]
html
�� 
+=
�� 
$str
�� $
+
��% &
$str
��' +
;
��+ ,
html
�� 
+=
�� 
$str
�� #
+
��$ %
$str
��& *
;
��* +
}
�� 	
public
�� 
void
�� 
WriteEndHTMLFile
�� $
(
��$ %
)
��% &
{
�� 	
html
�� 
+=
�� 
$str
��  
+
��! "
$str
��# '
;
��' (
html
�� 
+=
�� 
$str
�� 
+
�� 
$str
��  $
;
��$ %
}
�� 	
public
�� 
void
�� $
SaveRaportCampaignFile
�� *
(
��* +
string
��+ 1
pathFile
��2 :
)
��: ;
{
�� 	
File
�� 
.
�� 
WriteAllText
�� 
(
�� 
pathFile
�� &
,
��& '
html
��( ,
)
��, -
;
��- .
}
�� 	
}
�� 
}�� ��
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
�� 
=
�� 
$str
�� -
,
��- .
Description
�� 
=
�� 
$str
�� A
}
�� 
;
�� $
taskFieldFirstQuestion
�� "
.
��" #
SetValue
��# +
(
��+ ,
configTC
��, 4
.
��4 5
	Question1
��5 >
)
��> ?
;
��? @
var
��  
fieldfirstquestion
�� "
=
��# $
new
��% (

WebElement
��) 3
(
��3 4
$str
��4 F
,
��F G
PathMap
��H O
)
��O P
;
��P Q
var
�� (
fieldfirstquestionSearched
�� *
=
��+ ,
WebElementManager
��- >
.
��> ?
FindElements
��? K
(
��K L
Driver
��L R
,
��R S 
fieldfirstquestion
��T f
)
��f g
.
��g h
	ElementAt
��h q
(
��q r
$num
��r s
)
��s t
;
��t u
if
�� 
(
�� (
fieldfirstquestionSearched
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� (
fieldfirstquestionSearched
�� *
.
��* +
SendKeys
��+ 3
(
��3 4
configTC
��4 <
.
��< =
	Question1
��= F
)
��F G
;
��G H
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� A
+
��B C
configTC
��D L
.
��L M
	Question1
��M V
+
��W X
$str
��Y b
)
��b c
;
��c d$
taskFieldFirstQuestion
�� &
.
��& '
	SetResult
��' 0
(
��0 1
Result
��1 7
.
��7 8
PASSED
��8 >
)
��> ?
;
��? @
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� =
)
��= >
;
��> ?$
taskFieldFirstQuestion
�� &
.
��& '
SetErrorMessage
��' 6
(
��6 7
$str
��7 Y
)
��Y Z
;
��Z [$
taskFieldFirstQuestion
�� &
.
��& '
	SetResult
��' 0
(
��0 1
Result
��1 7
.
��7 8
ERROR
��8 =
)
��= >
;
��> ?
return
�� 
false
�� 
;
�� 
}
�� $
taskFieldFirstQuestion
�� "
.
��" #
	CloseTask
��# ,
(
��, -
)
��- .
;
��. /
Tasks
�� 
.
�� 
Add
�� 
(
�� $
taskFieldFirstQuestion
�� ,
)
��, -
;
��- .
var
�� #
taskBtnMultipleAnswer
�� %
=
��& '
new
��( +
Task
��, 0
(
��0 1
)
��1 2
{
�� 
Name
�� 
=
�� 
$str
�� '
,
��' (
Description
�� 
=
�� 
$str
�� <
}
�� 
;
�� 
var
�� 
btnMultiAnswer
�� 
=
��  
new
��! $

WebElement
��% /
(
��/ 0
$str
��0 F
,
��F G
PathMap
��H O
)
��O P
;
��P Q
var
�� $
btnMultiAnswerSearched
�� &
=
��' (
WebElementManager
��) :
.
��: ;
FindFirstElement
��; K
(
��K L
Driver
��L R
,
��R S
btnMultiAnswer
��T b
)
��b c
;
��c d
if
�� 
(
�� $
btnMultiAnswerSearched
�� &
!=
��' )
null
��* .
)
��. /
{
�� $
btnMultiAnswerSearched
�� &
.
��& '
Click
��' ,
(
��, -
)
��- .
;
��. /
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� :
)
��: ;
;
��; <#
taskBtnMultipleAnswer
�� %
.
��% &
	SetResult
��& /
(
��/ 0
Result
��0 6
.
��6 7
PASSED
��7 =
)
��= >
;
��> ?
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� @
)
��@ A
;
��A B#
taskBtnMultipleAnswer
�� %
.
��% &
SetErrorMessage
��& 5
(
��5 6
$str
��6 [
)
��[ \
;
��\ ]#
taskBtnMultipleAnswer
�� %
.
��% &
	SetResult
��& /
(
��/ 0
Result
��0 6
.
��6 7
ERROR
��7 <
)
��< =
;
��= >
return
�� 
false
�� 
;
�� 
}
�� #
taskBtnMultipleAnswer
�� !
.
��! "
	CloseTask
��" +
(
��+ ,
)
��, -
;
��- .
Tasks
�� 
.
�� 
Add
�� 
(
�� #
taskBtnMultipleAnswer
�� +
)
��+ ,
;
��, -
var
�� "
taskEnterFirstAnswer
�� $
=
��% &
new
��' *
Task
��+ /
(
��/ 0
)
��0 1
{
�� 
Name
�� 
=
�� 
$str
�� 5
,
��5 6
Description
�� 
=
�� 
$str
�� E
}
�� 
;
�� "
taskEnterFirstAnswer
��  
.
��  !
SetValue
��! )
(
��) *
configTC
��* 2
.
��2 3
Reponse1
��3 ;
.
��; <
	ElementAt
��< E
(
��E F
$num
��F G
)
��G H
)
��H I
;
��I J
var
�� 
fieldFirstAnswer
��  
=
��! "
new
��# &

WebElement
��' 1
(
��1 2
$str
��2 B
,
��B C
PathMap
��D K
)
��K L
;
��L M
var
�� &
fieldFirstAnswerSearched
�� (
=
��) *
WebElementManager
��+ <
.
��< =
FindElements
��= I
(
��I J
Driver
��J P
,
��P Q
fieldFirstAnswer
��R b
)
��b c
.
��c d
	ElementAt
��d m
(
��m n
$num
��n o
)
��o p
;
��p q
if
�� 
(
�� &
fieldFirstAnswerSearched
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� &
fieldFirstAnswerSearched
�� (
.
��( )
SendKeys
��) 1
(
��1 2
configTC
��2 :
.
��: ;
Reponse1
��; C
.
��C D
	ElementAt
��D M
(
��M N
$num
��N O
)
��O P
)
��P Q
;
��Q R
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� C
+
��D E
configTC
��F N
.
��N O
Reponse1
��O W
.
��W X
	ElementAt
��X a
(
��a b
$num
��b c
)
��c d
)
��d e
;
��e f"
taskEnterFirstAnswer
�� $
.
��$ %
	SetResult
��% .
(
��. /
Result
��/ 5
.
��5 6
PASSED
��6 <
)
��< =
;
��= >
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� O
)
��O P
;
��P Q"
taskEnterFirstAnswer
�� $
.
��$ %
SetErrorMessage
��% 4
(
��4 5
$str
��5 i
)
��i j
;
��j k"
taskEnterFirstAnswer
�� $
.
��$ %
	SetResult
��% .
(
��. /
Result
��/ 5
.
��5 6
ERROR
��6 ;
)
��; <
;
��< =
return
�� 
false
�� 
;
�� 
}
�� "
taskEnterFirstAnswer
��  
.
��  !
	CloseTask
��! *
(
��* +
)
��+ ,
;
��, -
Tasks
�� 
.
�� 
Add
�� 
(
�� "
taskEnterFirstAnswer
�� *
)
��* +
;
��+ ,
var
�� #
taskEnterSecondAnswer
�� %
=
��& '
new
��( +
Task
��, 0
(
��0 1
)
��1 2
{
�� 
Name
�� 
=
�� 
$str
�� 6
,
��6 7
Description
�� 
=
�� 
$str
�� F
}
�� 
;
�� #
taskEnterSecondAnswer
�� !
.
��! "
SetValue
��" *
(
��* +
configTC
��+ 3
.
��3 4
Reponse1
��4 <
.
��< =
	ElementAt
��= F
(
��F G
$num
��G H
)
��H I
)
��I J
;
��J K
var
�� 
fieldSecondAnswer
�� !
=
��" #
new
��$ '

WebElement
��( 2
(
��2 3
$str
��3 E
,
��E F
PathMap
��G N
)
��N O
;
��O P
var
�� '
fieldSecondAnswerSearched
�� )
=
��* +
WebElementManager
��, =
.
��= >
FindElements
��> J
(
��J K
Driver
��K Q
,
��Q R
fieldSecondAnswer
��S d
)
��d e
.
��e f
	ElementAt
��f o
(
��o p
$num
��p q
)
��q r
;
��r s
if
�� 
(
�� '
fieldSecondAnswerSearched
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� '
fieldSecondAnswerSearched
�� )
.
��) *
SendKeys
��* 2
(
��2 3
configTC
��3 ;
.
��; <
Reponse1
��< D
.
��D E
	ElementAt
��E N
(
��N O
$num
��O P
)
��P Q
)
��Q R
;
��R S
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� D
+
��E F
configTC
��G O
.
��O P
Reponse1
��P X
.
��X Y
	ElementAt
��Y b
(
��b c
$num
��c d
)
��d e
)
��e f
;
��f g#
taskEnterSecondAnswer
�� %
.
��% &
	SetResult
��& /
(
��/ 0
Result
��0 6
.
��6 7
PASSED
��7 =
)
��= >
;
��> ?
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� P
)
��P Q
;
��Q R#
taskEnterSecondAnswer
�� %
.
��% &
SetErrorMessage
��& 5
(
��5 6
$str
��6 k
)
��k l
;
��l m#
taskEnterSecondAnswer
�� %
.
��% &
	SetResult
��& /
(
��/ 0
Result
��0 6
.
��6 7
ERROR
��7 <
)
��< =
;
��= >
return
�� 
false
�� 
;
�� 
}
�� #
taskEnterSecondAnswer
�� !
.
��! "
	CloseTask
��" +
(
��+ ,
)
��, -
;
��- .
Tasks
�� 
.
�� 
Add
�� 
(
�� #
taskEnterSecondAnswer
�� +
)
��+ ,
;
��, -
var
�� %
taskSelectCorrectAnswer
�� '
=
��( )
new
��* -
Task
��. 2
(
��2 3
)
��3 4
{
�� 
Name
�� 
=
�� 
$str
�� &
,
��& '
Description
�� 
=
�� 
$str
�� D
}
�� 
;
�� 
var
�� $
radioBtnsCorrectAnswer
�� &
=
��' (
new
��) ,

WebElement
��- 7
(
��7 8
$str
��8 R
,
��R S
PathMap
��T [
)
��[ \
;
��\ ]
var
�� ,
radioBtnsCorrectAnswerSearched
�� .
=
��/ 0
WebElementManager
��1 B
.
��B C
FindElements
��C O
(
��O P
Driver
��P V
,
��V W$
radioBtnsCorrectAnswer
��X n
)
��n o
;
��o p
if
�� 
(
�� ,
radioBtnsCorrectAnswerSearched
�� .
!=
��/ 1
null
��2 6
)
��6 7
{
�� 
foreach
�� 
(
�� 
var
�� 
element
�� $
in
��% ',
radioBtnsCorrectAnswerSearched
��( F
)
��F G
element
�� 
.
�� 
Click
�� !
(
��! "
)
��" #
;
��# $
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� >
)
��> ?
;
��? @%
taskSelectCorrectAnswer
�� '
.
��' (
	SetResult
��( 1
(
��1 2
Result
��2 8
.
��8 9
PASSED
��9 ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� H
)
��H I
;
��I J%
taskSelectCorrectAnswer
�� '
.
��' (
SetErrorMessage
��( 7
(
��7 8
$str
��8 e
)
��e f
;
��f g%
taskSelectCorrectAnswer
�� '
.
��' (
	SetResult
��( 1
(
��1 2
Result
��2 8
.
��8 9
ERROR
��9 >
)
��> ?
;
��? @
return
�� 
false
�� 
;
�� 
}
�� %
taskSelectCorrectAnswer
�� #
.
��# $
	CloseTask
��$ -
(
��- .
)
��. /
;
��/ 0
Tasks
�� 
.
�� 
Add
�� 
(
�� %
taskSelectCorrectAnswer
�� -
)
��- .
;
��. /
var
�� 
taskBtnContinue
�� 
=
��  !
new
��" %
Task
��& *
(
��* +
)
��+ ,
{
�� 
Name
�� 
=
�� 
$str
�� -
,
��- .
Description
�� 
=
�� 
$str
�� Y
}
�� 
;
�� 
var
�� 
btnContinue
�� 
=
�� 
new
�� !

WebElement
��" ,
(
��, -
$str
��- ;
,
��; <
PathMap
��= D
)
��D E
;
��E F
var
�� 
temp
�� 
=
�� 
WebElementManager
�� (
.
��( )
FindElements
��) 5
(
��5 6
Driver
��6 <
,
��< =
btnContinue
��> I
)
��I J
;
��J K
var
�� !
btnContinueSearched
�� #
=
��$ %
temp
��& *
.
��* +
	ElementAt
��+ 4
(
��4 5
$num
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� !
btnContinueSearched
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� !
btnContinueSearched
�� #
.
��# $
SendKeys
��$ ,
(
��, -
$str
��- /
)
��/ 0
;
��0 1!
btnContinueSearched
�� #
.
��# $
Click
��$ )
(
��) *
)
��* +
;
��+ ,
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
taskBtnContinue
�� 
.
��  
	SetResult
��  )
(
��) *
Result
��* 0
.
��0 1
PASSED
��1 7
)
��7 8
;
��8 9
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� ;
)
��; <
;
��< =
taskBtnContinue
�� 
.
��  
SetErrorMessage
��  /
(
��/ 0
$str
��0 P
)
��P Q
;
��Q R
taskBtnContinue
�� 
.
��  
	SetResult
��  )
(
��) *
Result
��* 0
.
��0 1
ERROR
��1 6
)
��6 7
;
��7 8
return
�� 
false
�� 
;
�� 
}
�� 
taskBtnContinue
�� 
.
�� 
	CloseTask
�� %
(
��% &
)
��& '
;
��' (
Tasks
�� 
.
�� 
Add
�� 
(
�� 
taskBtnContinue
�� %
)
��% &
;
��& '
var
�� 
taskselectTheme
�� 
=
��  !
new
��" %
Task
��& *
(
��* +
)
��+ ,
{
�� 
Name
�� 
=
�� 
$str
�� +
,
��+ ,
Description
�� 
=
�� 
$str
�� ;
}
�� 
;
�� 
taskselectTheme
�� 
.
�� 
SetValue
�� $
(
��$ %
configTC
��% -
.
��- .
Theme
��. 3
)
��3 4
;
��4 5
var
�� 
	cardTheme
�� 
=
�� 
new
�� 

WebElement
��  *
(
��* +
$str
��+ =
,
��= >
PathMap
��? F
)
��F G
;
��G H
var
��  
cardsThemeSearched
�� "
=
��# $
WebElementManager
��% 6
.
��6 7
FindElements
��7 C
(
��C D
Driver
��D J
,
��J K
	cardTheme
��L U
)
��U V
;
��V W
if
�� 
(
��  
cardsThemeSearched
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
foreach
�� 
(
�� 
var
�� 
card
��  
in
��! # 
cardsThemeSearched
��$ 6
)
��6 7
{
�� 
if
�� 
(
�� 
card
�� 
.
�� 
Text
�� !
.
��! "
Equals
��" (
(
��( )
configTC
��) 1
.
��1 2
Theme
��2 7
)
��7 8
)
��8 9
{
�� 
card
�� 
.
�� 
Click
�� "
(
��" #
)
��# $
;
��$ %
_log
�� 
.
�� 
Info
�� !
(
��! "
$str
��" 9
+
��: ;
configTC
��< D
.
��D E
Theme
��E J
+
��K L
$str
��M X
)
��X Y
;
��Y Z
taskselectTheme
�� '
.
��' (
	SetResult
��( 1
(
��1 2
Result
��2 8
.
��8 9
PASSED
��9 ?
)
��? @
;
��@ A
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� 9
)
��9 :
;
��: ;
taskselectTheme
�� 
.
��  
SetErrorMessage
��  /
(
��/ 0
$str
��0 N
)
��N O
;
��O P
taskselectTheme
�� 
.
��  
	SetResult
��  )
(
��) *
Result
��* 0
.
��0 1
ERROR
��1 6
)
��6 7
;
��7 8
return
�� 
false
�� 
;
�� 
}
�� 
taskselectTheme
�� 
.
�� 
	CloseTask
�� %
(
��% &
)
��& '
;
��' (
Tasks
�� 
.
�� 
Add
�� 
(
�� 
taskselectTheme
�� %
)
��% &
;
��& '
var
�� 
taskBtnCreate
�� 
=
�� 
new
��  #
Task
��$ (
(
��( )
)
��) *
{
�� 
Name
�� 
=
�� 
$str
�� )
,
��) *
Description
�� 
=
�� 
$str
�� 9
}
�� 
;
�� 
var
�� 
	btnCreate
�� 
=
�� 
new
�� 

WebElement
��  *
(
��* +
$str
��+ 7
,
��7 8
PathMap
��9 @
)
��@ A
;
��A B
var
�� 
btnCreateSearched
�� !
=
��" #
WebElementManager
��$ 5
.
��5 6
FindElements
��6 B
(
��B C
Driver
��C I
,
��I J
	btnCreate
��K T
)
��T U
.
��U V
	ElementAt
��V _
(
��_ `
$num
��` a
)
��a b
;
��b c
if
�� 
(
�� 
btnCreateSearched
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
btnCreateSearched
�� !
.
��! "
Click
��" '
(
��' (
)
��( )
;
��) *
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� 4
)
��4 5
;
��5 6
taskBtnCreate
�� 
.
�� 
	SetResult
�� '
(
��' (
Result
��( .
.
��. /
PASSED
��/ 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� 7
)
��7 8
;
��8 9
taskBtnCreate
�� 
.
�� 
SetErrorMessage
�� -
(
��- .
$str
��. J
)
��J K
;
��K L
taskBtnCreate
�� 
.
�� 
	SetResult
�� '
(
��' (
Result
��( .
.
��. /
ERROR
��/ 4
)
��4 5
;
��5 6
return
�� 
false
�� 
;
�� 
}
�� 
taskBtnCreate
�� 
.
�� 
	CloseTask
�� #
(
��# $
)
��$ %
;
��% &
Tasks
�� 
.
�� 
Add
�� 
(
�� 
taskBtnCreate
�� #
)
��# $
;
��$ %
var
�� 
taskBtnHome
�� 
=
�� 
new
�� !
Task
��" &
(
��& '
)
��' (
{
�� 
Name
�� 
=
�� 
$str
�� +
,
��+ ,
Description
�� 
=
�� 
$str
�� ;
}
�� 
;
�� 
var
�� 
btnHome
�� 
=
�� 
new
�� 

WebElement
�� (
(
��( )
$str
��) 3
,
��3 4
PathMap
��5 <
)
��< =
;
��= >
var
�� 
btnHomeSearched
�� 
=
��  !
WebElementManager
��" 3
.
��3 4
FindFirstElement
��4 D
(
��D E
Driver
��E K
,
��K L
btnHome
��M T
)
��T U
;
��U V
if
�� 
(
�� 
btnHomeSearched
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
btnHomeSearched
�� 
.
��  
Click
��  %
(
��% &
)
��& '
;
��' (
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
taskBtnHome
�� 
.
�� 
	SetResult
�� %
(
��% &
Result
��& ,
.
��, -
PASSED
��- 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� 9
)
��9 :
;
��: ;
taskBtnHome
�� 
.
�� 
SetErrorMessage
�� +
(
��+ ,
$str
��, J
)
��J K
;
��K L
taskBtnHome
�� 
.
�� 
	SetResult
�� %
(
��% &
Result
��& ,
.
��, -
ERROR
��- 2
)
��2 3
;
��3 4
return
�� 
false
�� 
;
�� 
}
�� 
taskBtnHome
�� 
.
�� 
	CloseTask
�� !
(
��! "
)
��" #
;
��# $
Tasks
�� 
.
�� 
Add
�� 
(
�� 
taskBtnHome
�� !
)
��! "
;
��" #
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �[
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
�� 
=
�� 
$str
�� @
}
�� 
;
�� 
var
�� 
btn_suscribe
�� 
=
�� 
new
�� "

WebElement
��# -
(
��- .
$str
��. @
,
��@ A
PathMap
��B I
)
��I J
;
��J K
var
�� #
btn_suscribe_Searched
�� %
=
��& '
WebElementManager
��( 9
.
��9 :
FindElements
��: F
(
��F G
Driver
��G M
,
��M N
btn_suscribe
��O [
)
��[ \
.
��\ ]
	ElementAt
��] f
(
��f g
$num
��g h
)
��h i
;
��i j
if
�� 
(
�� #
btn_suscribe_Searched
�� %
!=
��& (
null
��) -
)
��- .
{
�� #
btn_suscribe_Searched
�� %
.
��% &
Click
��& +
(
��+ ,
)
��, -
;
��- .
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� C
)
��C D
;
��D E!
taskBtnSuscribeForm
�� #
.
��# $
	SetResult
��$ -
(
��- .
Result
��. 4
.
��4 5
PASSED
��5 ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� @
)
��@ A
;
��A B!
taskBtnSuscribeForm
�� #
.
��# $
SetErrorMessage
��$ 3
(
��3 4
$str
��4 Y
)
��Y Z
;
��Z [!
taskBtnSuscribeForm
�� #
.
��# $
	SetResult
��$ -
(
��- .
Result
��. 4
.
��4 5
ERROR
��5 :
)
��: ;
;
��; <
return
�� 
false
�� 
;
�� 
}
�� !
taskBtnSuscribeForm
�� 
.
��  
	CloseTask
��  )
(
��) *
)
��* +
;
��+ ,
Tasks
�� 
.
�� 
Add
�� 
(
�� !
taskBtnSuscribeForm
�� )
)
��) *
;
��* +
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �"
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
}MM �n
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
�� !
.
��! "
SetValue
��" *
(
��* +
configTC
��+ 3
.
��3 4
Password
��4 <
)
��< =
;
��= >
var
�� "
fieldConfirmPassword
�� $
=
��% &
new
��' *

WebElement
��+ 5
(
��5 6
$str
��6 M
,
��M N
PathMap
��O V
)
��V W
;
��W X
var
�� *
fieldConfirmPasswordSearched
�� ,
=
��- .
WebElementManager
��/ @
.
��@ A
FindFirstElement
��A Q
(
��Q R
Driver
��R X
,
��X Y"
fieldConfirmPassword
��Z n
)
��n o
;
��o p
if
�� 
(
�� *
fieldConfirmPasswordSearched
�� ,
!=
��- /
null
��0 4
)
��4 5
{
�� *
fieldConfirmPasswordSearched
�� ,
.
��, -
SendKeys
��- 5
(
��5 6
configTC
��6 >
.
��> ?
Password
��? G
)
��G H
;
��H I
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� >
+
��? @
configTC
��A I
.
��I J
Password
��J R
+
��S T
$str
��U ^
)
��^ _
;
��_ `#
taskFieldConfPassword
�� %
.
��% &
	SetResult
��& /
(
��/ 0
Result
��0 6
.
��6 7
PASSED
��7 =
)
��= >
;
��> ?
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� ?
)
��? @
;
��@ A#
taskFieldConfPassword
�� %
.
��% &
SetErrorMessage
��& 5
(
��5 6
$str
��6 Z
)
��Z [
;
��[ \#
taskFieldConfPassword
�� %
.
��% &
	SetResult
��& /
(
��/ 0
Result
��0 6
.
��6 7
ERROR
��7 <
)
��< =
;
��= >
return
�� 
false
�� 
;
�� 
}
�� #
taskFieldConfPassword
�� !
.
��! "
	CloseTask
��" +
(
��+ ,
)
��, -
;
��- .
Tasks
�� 
.
�� 
Add
�� 
(
�� #
taskFieldConfPassword
�� +
)
��+ ,
;
��, -
var
�� !
taskBtnSuscribeForm
�� #
=
��$ %
new
��& )
Task
��* .
(
��. /
)
��/ 0
{
�� 
Name
�� 
=
�� 
$str
�� '
,
��' (
Description
�� 
=
�� 
$str
�� ;
}
�� 
;
�� 
var
�� 
btn_suscribe
�� 
=
�� 
new
�� "

WebElement
��# -
(
��- .
$str
��. <
,
��< =
PathMap
��> E
)
��E F
;
��F G
var
�� #
btn_suscribe_Searched
�� %
=
��& '
WebElementManager
��( 9
.
��9 :
FindFirstElement
��: J
(
��J K
Driver
��K Q
,
��Q R
btn_suscribe
��S _
)
��_ `
;
��` a
if
�� 
(
�� #
btn_suscribe_Searched
�� %
!=
��& (
null
��) -
)
��- .
{
�� #
btn_suscribe_Searched
�� %
.
��% &
Click
��& +
(
��+ ,
)
��, -
;
��- .
_log
�� 
.
�� 
Info
�� 
(
�� 
$str
�� ;
)
��; <
;
��< =!
taskBtnSuscribeForm
�� #
.
��# $
	SetResult
��$ -
(
��- .
Result
��. 4
.
��4 5
PASSED
��5 ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
_log
�� 
.
�� 
Error
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :!
taskBtnSuscribeForm
�� #
.
��# $
SetErrorMessage
��$ 3
(
��3 4
$str
��4 Q
)
��Q R
;
��R S!
taskBtnSuscribeForm
�� #
.
��# $
	SetResult
��$ -
(
��- .
Result
��. 4
.
��4 5
ERROR
��5 :
)
��: ;
;
��; <
return
�� 
false
�� 
;
�� 
}
�� !
taskBtnSuscribeForm
�� 
.
��  
	CloseTask
��  )
(
��) *
)
��* +
;
��+ ,
Tasks
�� 
.
�� 
Add
�� 
(
�� !
taskBtnSuscribeForm
�� )
)
��) *
;
��* +
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �A
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