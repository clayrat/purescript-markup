-- | Complete list of all HTML5 tags.
module Data.Markup.HTML where
--------------------------------------------------------------------------------
import Data.Maybe (Maybe (Nothing))
import Data.Markup (Prop (), Markup (), tag)

a :: forall e. Array (Prop e) -> Markup e -> Markup e
a = tag "a" Nothing

abbr :: forall e. Array (Prop e) -> Markup e -> Markup e
abbr = tag "abbr" Nothing

acronym :: forall e. Array (Prop e) -> Markup e -> Markup e
acronym = tag "acronym" Nothing

address :: forall e. Array (Prop e) -> Markup e -> Markup e
address = tag "address" Nothing

applet :: forall e. Array (Prop e) -> Markup e -> Markup e
applet = tag "applet" Nothing

area :: forall e. Array (Prop e) -> Markup e -> Markup e
area = tag "area" Nothing

article :: forall e. Array (Prop e) -> Markup e -> Markup e
article = tag "article" Nothing

aside :: forall e. Array (Prop e) -> Markup e -> Markup e
aside = tag "aside" Nothing

audio :: forall e. Array (Prop e) -> Markup e -> Markup e
audio = tag "audio" Nothing

base :: forall e. Array (Prop e) -> Markup e -> Markup e
base = tag "base" Nothing

basefont :: forall e. Array (Prop e) -> Markup e -> Markup e
basefont = tag "basefont" Nothing

bdo :: forall e. Array (Prop e) -> Markup e -> Markup e
bdo = tag "bdo" Nothing

bgsound :: forall e. Array (Prop e) -> Markup e -> Markup e
bgsound = tag "bgsound" Nothing

blink :: forall e. Array (Prop e) -> Markup e -> Markup e
blink = tag "blink" Nothing

blockquote :: forall e. Array (Prop e) -> Markup e -> Markup e
blockquote = tag "blockquote" Nothing

body :: forall e. Array (Prop e) -> Markup e -> Markup e
body = tag "body" Nothing

br :: forall e. Array (Prop e) -> Markup e -> Markup e
br = tag "br" Nothing

button :: forall e. Array (Prop e) -> Markup e -> Markup e
button = tag "button" Nothing

canvas :: forall e. Array (Prop e) -> Markup e -> Markup e
canvas = tag "canvas" Nothing

caption :: forall e. Array (Prop e) -> Markup e -> Markup e
caption = tag "caption" Nothing

center :: forall e. Array (Prop e) -> Markup e -> Markup e
center = tag "center" Nothing

col :: forall e. Array (Prop e) -> Markup e -> Markup e
col = tag "col" Nothing

colgroup :: forall e. Array (Prop e) -> Markup e -> Markup e
colgroup = tag "colgroup" Nothing

command :: forall e. Array (Prop e) -> Markup e -> Markup e
command = tag "command" Nothing

comment :: forall e. Array (Prop e) -> Markup e -> Markup e
comment = tag "comment" Nothing

datalist :: forall e. Array (Prop e) -> Markup e -> Markup e
datalist = tag "datalist" Nothing

dd :: forall e. Array (Prop e) -> Markup e -> Markup e
dd = tag "dd" Nothing

del :: forall e. Array (Prop e) -> Markup e -> Markup e
del = tag "del" Nothing

details :: forall e. Array (Prop e) -> Markup e -> Markup e
details = tag "details" Nothing

dir :: forall e. Array (Prop e) -> Markup e -> Markup e
dir = tag "dir" Nothing

div :: forall e. Array (Prop e) -> Markup e -> Markup e
div = tag "div" Nothing

dl :: forall e. Array (Prop e) -> Markup e -> Markup e
dl = tag "dl" Nothing

dt :: forall e. Array (Prop e) -> Markup e -> Markup e
dt = tag "dt" Nothing

embed :: forall e. Array (Prop e) -> Markup e -> Markup e
embed = tag "embed" Nothing

fieldset :: forall e. Array (Prop e) -> Markup e -> Markup e
fieldset = tag "fieldset" Nothing

figure :: forall e. Array (Prop e) -> Markup e -> Markup e
figure = tag "figure" Nothing

b :: forall e. Array (Prop e) -> Markup e -> Markup e
b = tag "b" Nothing

big :: forall e. Array (Prop e) -> Markup e -> Markup e
big = tag "big" Nothing

i :: forall e. Array (Prop e) -> Markup e -> Markup e
i = tag "i" Nothing

small :: forall e. Array (Prop e) -> Markup e -> Markup e
small = tag "small" Nothing

tt :: forall e. Array (Prop e) -> Markup e -> Markup e
tt = tag "tt" Nothing

font :: forall e. Array (Prop e) -> Markup e -> Markup e
font = tag "font" Nothing

footer :: forall e. Array (Prop e) -> Markup e -> Markup e
footer = tag "footer" Nothing

form :: forall e. Array (Prop e) -> Markup e -> Markup e
form = tag "form" Nothing

frame :: forall e. Array (Prop e) -> Markup e -> Markup e
frame = tag "frame" Nothing

frameset :: forall e. Array (Prop e) -> Markup e -> Markup e
frameset = tag "frameset" Nothing

head :: forall e. Array (Prop e) -> Markup e -> Markup e
head = tag "head" Nothing

header :: forall e. Array (Prop e) -> Markup e -> Markup e
header = tag "header" Nothing

hgroup :: forall e. Array (Prop e) -> Markup e -> Markup e
hgroup = tag "hgroup" Nothing

h1 :: forall e. Array (Prop e) -> Markup e -> Markup e
h1 = tag "h1" Nothing

hr :: forall e. Array (Prop e) -> Markup e -> Markup e
hr = tag "hr" Nothing

html :: forall e. Array (Prop e) -> Markup e -> Markup e
html = tag "html" Nothing

isindex :: forall e. Array (Prop e) -> Markup e -> Markup e
isindex = tag "isindex" Nothing

iframe :: forall e. Array (Prop e) -> Markup e -> Markup e
iframe = tag "iframe" Nothing

ilayer :: forall e. Array (Prop e) -> Markup e -> Markup e
ilayer = tag "ilayer" Nothing

img :: forall e. Array (Prop e) -> Markup e -> Markup e
img = tag "img" Nothing

input :: forall e. Array (Prop e) -> Markup e -> Markup e
input = tag "input" Nothing

ins :: forall e. Array (Prop e) -> Markup e -> Markup e
ins = tag "ins" Nothing

keygen :: forall e. Array (Prop e) -> Markup e -> Markup e
keygen = tag "keygen" Nothing

label :: forall e. Array (Prop e) -> Markup e -> Markup e
label = tag "label" Nothing

layer :: forall e. Array (Prop e) -> Markup e -> Markup e
layer = tag "layer" Nothing

legend :: forall e. Array (Prop e) -> Markup e -> Markup e
legend = tag "legend" Nothing

li :: forall e. Array (Prop e) -> Markup e -> Markup e
li = tag "li" Nothing

link :: forall e. Array (Prop e) -> Markup e -> Markup e
link = tag "link" Nothing

map :: forall e. Array (Prop e) -> Markup e -> Markup e
map = tag "map" Nothing

mark :: forall e. Array (Prop e) -> Markup e -> Markup e
mark = tag "mark" Nothing

marquee :: forall e. Array (Prop e) -> Markup e -> Markup e
marquee = tag "marquee" Nothing

menu :: forall e. Array (Prop e) -> Markup e -> Markup e
menu = tag "menu" Nothing

meta :: forall e. Array (Prop e) -> Markup e -> Markup e
meta = tag "meta" Nothing

meter :: forall e. Array (Prop e) -> Markup e -> Markup e
meter = tag "meter" Nothing

multicol :: forall e. Array (Prop e) -> Markup e -> Markup e
multicol = tag "multicol" Nothing

nav :: forall e. Array (Prop e) -> Markup e -> Markup e
nav = tag "nav" Nothing

nobr :: forall e. Array (Prop e) -> Markup e -> Markup e
nobr = tag "nobr" Nothing

noembed :: forall e. Array (Prop e) -> Markup e -> Markup e
noembed = tag "noembed" Nothing

noframes :: forall e. Array (Prop e) -> Markup e -> Markup e
noframes = tag "noframes" Nothing

object :: forall e. Array (Prop e) -> Markup e -> Markup e
object = tag "object" Nothing

ol :: forall e. Array (Prop e) -> Markup e -> Markup e
ol = tag "ol" Nothing

optgroup :: forall e. Array (Prop e) -> Markup e -> Markup e
optgroup = tag "optgroup" Nothing

option :: forall e. Array (Prop e) -> Markup e -> Markup e
option = tag "option" Nothing

output :: forall e. Array (Prop e) -> Markup e -> Markup e
output = tag "output" Nothing

p :: forall e. Array (Prop e) -> Markup e -> Markup e
p = tag "p" Nothing

param :: forall e. Array (Prop e) -> Markup e -> Markup e
param = tag "param" Nothing

cite :: forall e. Array (Prop e) -> Markup e -> Markup e
cite = tag "cite" Nothing

code :: forall e. Array (Prop e) -> Markup e -> Markup e
code = tag "code" Nothing

dfn :: forall e. Array (Prop e) -> Markup e -> Markup e
dfn = tag "dfn" Nothing

em :: forall e. Array (Prop e) -> Markup e -> Markup e
em = tag "em" Nothing

kbd :: forall e. Array (Prop e) -> Markup e -> Markup e
kbd = tag "kbd" Nothing

samp :: forall e. Array (Prop e) -> Markup e -> Markup e
samp = tag "samp" Nothing

strong :: forall e. Array (Prop e) -> Markup e -> Markup e
strong = tag "strong" Nothing

var :: forall e. Array (Prop e) -> Markup e -> Markup e
var = tag "var" Nothing

plaintext :: forall e. Array (Prop e) -> Markup e -> Markup e
plaintext = tag "plaintext" Nothing

progress :: forall e. Array (Prop e) -> Markup e -> Markup e
progress = tag "progress" Nothing

q :: forall e. Array (Prop e) -> Markup e -> Markup e
q = tag "q" Nothing

rt :: forall e. Array (Prop e) -> Markup e -> Markup e
rt = tag "rt" Nothing

section :: forall e. Array (Prop e) -> Markup e -> Markup e
section = tag "section" Nothing

select :: forall e. Array (Prop e) -> Markup e -> Markup e
select = tag "select" Nothing

spacer :: forall e. Array (Prop e) -> Markup e -> Markup e
spacer = tag "spacer" Nothing

span :: forall e. Array (Prop e) -> Markup e -> Markup e
span = tag "span" Nothing

s :: forall e. Array (Prop e) -> Markup e -> Markup e
s = tag "s" Nothing

strike :: forall e. Array (Prop e) -> Markup e -> Markup e
strike = tag "strike" Nothing

style :: forall e. Array (Prop e) -> Markup e -> Markup e
style = tag "style" Nothing

sub :: forall e. Array (Prop e) -> Markup e -> Markup e
sub = tag "sub" Nothing

sup :: forall e. Array (Prop e) -> Markup e -> Markup e
sup = tag "sup" Nothing

table :: forall e. Array (Prop e) -> Markup e -> Markup e
table = tag "table" Nothing

tbody :: forall e. Array (Prop e) -> Markup e -> Markup e
tbody = tag "tbody" Nothing

td :: forall e. Array (Prop e) -> Markup e -> Markup e
td = tag "td" Nothing

textarea :: forall e. Array (Prop e) -> Markup e -> Markup e
textarea = tag "textarea" Nothing

tfoot :: forall e. Array (Prop e) -> Markup e -> Markup e
tfoot = tag "tfoot" Nothing

th :: forall e. Array (Prop e) -> Markup e -> Markup e
th = tag "th" Nothing

thead :: forall e. Array (Prop e) -> Markup e -> Markup e
thead = tag "thead" Nothing

time :: forall e. Array (Prop e) -> Markup e -> Markup e
time = tag "time" Nothing

title :: forall e. Array (Prop e) -> Markup e -> Markup e
title = tag "title" Nothing

tr :: forall e. Array (Prop e) -> Markup e -> Markup e
tr = tag "tr" Nothing

u :: forall e. Array (Prop e) -> Markup e -> Markup e
u = tag "u" Nothing

ul :: forall e. Array (Prop e) -> Markup e -> Markup e
ul = tag "ul" Nothing

video :: forall e. Array (Prop e) -> Markup e -> Markup e
video = tag "video" Nothing

wbr :: forall e. Array (Prop e) -> Markup e -> Markup e
wbr = tag "wbr" Nothing
