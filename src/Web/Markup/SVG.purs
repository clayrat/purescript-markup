module Web.Markup.SVG where
--------------------------------------------------------------------------------
import Data.Maybe (Maybe (Nothing))
import Web.Markup (Prop (), Markup (), tag)

circle :: forall e. Array (Prop e) -> Markup e -> Markup e
circle = tag "circle" Nothing

defs :: forall e. Array (Prop e) -> Markup e -> Markup e
defs = tag "defs" Nothing

g :: forall e. Array (Prop e) -> Markup e -> Markup e
g = tag "g" Nothing

line :: forall e. Array (Prop e) -> Markup e -> Markup e
line = tag "line" Nothing

marker :: forall e. Array (Prop e) -> Markup e -> Markup e
marker = tag "marker" Nothing

path :: forall e. Array (Prop e) -> Markup e -> Markup e
path = tag "path" Nothing

rect :: forall e. Array (Prop e) -> Markup e -> Markup e
rect = tag "rect" Nothing

svg :: forall e. Array (Prop e) -> Markup e -> Markup e
svg = tag "svg" Nothing

text :: forall e. Array (Prop e) -> Markup e -> Markup e
text = tag "text" Nothing
