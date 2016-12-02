module Web.Markup.SVG.Attributes where
--------------------------------------------------------------------------------
import Web.Markup (Prop (Attr))

cx :: forall e. String -> Prop e
cx = Attr "cx"

cy :: forall e. String -> Prop e
cy = Attr "cy"

d :: forall e. String -> Prop e
d = Attr "d"

dy :: forall e. String -> Prop e
dy = Attr "dy"

fill :: forall e. String -> Prop e
fill = Attr "fill"

height :: forall e. String -> Prop e
height = Attr "height"

r :: forall e. String -> Prop e
r = Attr "r"

strokeWidth :: forall e. String -> Prop e
strokeWidth = Attr "stroke-width"

transform :: forall e. String -> Prop e
transform = Attr "transform"

width :: forall e. String -> Prop e
width = Attr "width"

x1 :: forall e. String -> Prop e
x1 = Attr "x1"

x2 :: forall e. String -> Prop e
x2 = Attr "x2"

y1 :: forall e. String -> Prop e
y1 = Attr "y1"

y2 :: forall e. String -> Prop e
y2 = Attr "y2"
