module Web.Markup.SVG where
--------------------------------------------------------------------------------
import Data.Maybe (Maybe (Nothing))
import Web.Markup (Prop (), Markup (), tag)

circle :: forall e. Array (Prop e) -> Markup e -> Markup e
circle = tag "circle" Nothing

g :: forall e. Array (Prop e) -> Markup e -> Markup e
g = tag "g" Nothing

line :: forall e. Array (Prop e) -> Markup e -> Markup e
line = tag "line" Nothing

svg :: forall e. Array (Prop e) -> Markup e -> Markup e
svg = tag "svg" Nothing
