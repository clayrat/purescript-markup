module Data.Markup.HTML.Attributes where
--------------------------------------------------------------------------------
import Data.Markup (Prop (Attr))

text :: forall e. String -> Prop e
text = Attr "text"

title :: forall e. String -> Prop e
title = Attr "title"

class_ :: forall e. String -> Prop e
class_ = Attr "class"

type_ :: forall e. String -> Prop e
type_ = Attr "type"

placeholder :: forall e. String -> Prop e
placeholder = Attr "placeholder"

src :: forall e. String -> Prop e
src = Attr "src"

height :: forall e. String -> Prop e
height = Attr "height"

width :: forall e. String -> Prop e
width = Attr "width"

style :: forall e. String -> Prop e
style = Attr "style"

value :: forall e. String -> Prop e
value = Attr "value"

checked :: forall e. String -> Prop e
checked = Attr "checked"

draggable :: forall e. String -> Prop e
draggable = Attr "draggable"

