module Web.Markup.SVG.Attributes where
--------------------------------------------------------------------------------
import Web.Markup (Prop (Attr))

cx :: forall e. String -> Prop e
cx = Attr "cx"

cy :: forall e. String -> Prop e
cy = Attr "cy"

d :: forall e. String -> Prop e
d = Attr "d"

dx :: forall e. String -> Prop e
dx = Attr "dx"

dy :: forall e. String -> Prop e
dy = Attr "dy"

fill :: forall e. String -> Prop e
fill = Attr "fill"

fontFamily :: forall e. String -> Prop e
fontFamily = Attr "font-family"

fontSize :: forall e. String -> Prop e
fontSize = Attr "font-size"

height :: forall e. String -> Prop e
height = Attr "height"

id_ :: forall e. String -> Prop e
id_ = Attr "id"

markerEnd :: forall e. String -> Prop e
markerEnd = Attr "marker-end"

markerHeight :: forall e. String -> Prop e
markerHeight = Attr "markerHeight"

markerWidth :: forall e. String -> Prop e
markerWidth = Attr "markerWidth"

orient :: forall e. String -> Prop e
orient = Attr "orient"

r :: forall e. String -> Prop e
r = Attr "r"

refX :: forall e. String -> Prop e
refX = Attr "refX"

refY :: forall e. String -> Prop e
refY = Attr "refY"

rx :: forall e. String -> Prop e
rx = Attr "rx"

ry :: forall e. String -> Prop e
ry = Attr "ry"

rotate :: forall e. String -> Prop e
rotate = Attr "rotate"

strokeWidth :: forall e. String -> Prop e
strokeWidth = Attr "stroke-width"

textAnchor :: forall e. String -> Prop e
textAnchor = Attr "text-anchor"

transform :: forall e. String -> Prop e
transform = Attr "transform"

viewBox :: forall e. String -> Prop e
viewBox = Attr "viewBox"

width :: forall e. String -> Prop e
width = Attr "width"

x :: forall e. String -> Prop e
x = Attr "x"

x1 :: forall e. String -> Prop e
x1 = Attr "x1"

x2 :: forall e. String -> Prop e
x2 = Attr "x2"

y :: forall e. String -> Prop e
y = Attr "y"

y1 :: forall e. String -> Prop e
y1 = Attr "y1"

y2 :: forall e. String -> Prop e
y2 = Attr "y2"
