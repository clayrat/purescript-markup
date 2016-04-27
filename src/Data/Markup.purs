module Data.Markup
  ( Markup (), Prop (..), Tag (), Namespace (), Attr (), Key (), EventName ()
  , tag, text, markup) where
--------------------------------------------------------------------------------
import Prelude
import Control.Alt
import Control.Plus
import Data.Foreign
import Data.Maybe
import Data.Monoid
import Data.Coyoneda
import Data.Foldable

type Tag = String
type Namespace = String
type Attr = String
type Key = String
type EventName = String

-- | Forest of markup trees with tag nodes and text nodes that raises events
-- | of type `e`. The smart constructors `tag` and `text` are used to construct
-- | trees and the `markup` function deconstructs them.
-- |
-- | Two forests can be concatenated using the `Plus` and `Monoid`
-- | instances; the type of event can be changed with the `Functor` instance,
-- | with complexity linear in the number of _top-level_ nodes and properties.
newtype Markup e = Markup (Array (Node e))

instance markupFunctor :: Functor Markup where
  map f (Markup ns) = Markup ((map <<< map) f ns)

instance markupAlt :: Alt Markup where
  alt (Markup ns) (Markup ms) = Markup (ns ++ ms)

instance markupPlus :: Plus Markup where
  empty = Markup empty

instance markupSemigroup :: Semigroup (Markup e) where
  append = alt

instance markupMonoid :: Monoid (Markup e) where
  mempty = empty

-- | Internal representation of a node in a markup tree, which is either a
-- | tag node or a text node. The children of the tag node are hidden under
-- | a `Coyoneda` embedding in order to avoid mapping over the entire tree
-- | during construction.
data Node e
  = Tag Tag (Maybe Namespace) (Array (Prop e)) (Coyoneda Markup e)
  | Text String

instance nodeFunctor :: Functor Node where
  map f (Tag tn ns ps cs) = Tag tn ns ((map <<< map) f ps) (map f cs)
  map _ (Text str) = Text str

-- | Property of a tag node in a markup tree.
data Prop e
  = Attr Attr String
  | Handler EventName (Foreign -> e)
  | Key Key

instance propFunctor :: Functor Prop where
  map _ (Attr an av) = Attr an av
  map f (Handler en g) = Handler en (f <<< g)
  map _ (Key key) = Key key

-- | Create a tag node for a markup tree.
tag :: forall e. Tag -> Maybe (Namespace) -> Array (Prop e) -> Markup e -> Markup e
tag tn ns ps cs = Markup [Tag tn ns ps (liftCoyoneda cs)]

-- | Create a text node for a markup tree.
text :: forall e. String -> Markup e
text str = Markup [Text str]

-- | Fold a markup tree into a different representation.
markup
  :: forall e r. (Monoid r)
  => (Tag -> Maybe (Namespace) -> Array (Prop e) -> r -> r)
  -> (String -> r) -> Markup e -> r
markup tagf textf (Markup ns) = foldMap node ns where
  node (Tag tn ns ps cs) = tagf tn ns ps (markup tagf textf (lowerCoyoneda cs))
  node (Text str) = textf str
