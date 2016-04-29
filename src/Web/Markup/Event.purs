module Web.Markup.Event where
--------------------------------------------------------------------------------
import Prelude
import Web.Markup
import Data.Foreign (Foreign ())
import Type.Proxy

-- | Type of event associated with a payload that can be read from the foreign
-- | event object passed by the browser.
class Event p e where
  eventName :: Proxy p -> e -> EventName
  eventPayload :: e -> Foreign -> p

-- | Type-safe event handler property with conversion built in.
on :: forall p e r. (Event p r) => r -> (p -> e) -> Prop e
on r go = Handler (eventName (Proxy :: Proxy p) r) (go <<< eventPayload r)

-- | Type-safe event handler for events without payload.
on_ :: forall e r. (Event Unit r) => r -> e -> Prop e
on_ r e = on r (\(u :: Unit) -> e)
