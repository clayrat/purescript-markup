module Web.Markup.HTML.Event where
--------------------------------------------------------------------------------
import Prelude
import Control.Monad.Except (runExcept)
import Data.Either (either)
import Data.Foreign (readBoolean, readString)
import Data.Foreign.Index ((!))
import Web.Markup.Event (class Event)

-- | An element has been clicked.
data Click = Click

instance clickUnitEvent :: Event Unit Click where
  eventName _ _ = "click"
  eventPayload _ _ = unit

-- | An element has been clicked and held.
data MouseDown = MouseDown

instance mouseDownUnitEvent :: Event Unit MouseDown where
  eventName _ _ = "mousedown"
  eventPayload _ _ = unit

-- | The muse pointer has moved over an element
data MouseMove = MouseMove

instance mouseMoveUnitEvent :: Event Unit MouseMove where
  eventName _ _ = "mousemove"
  eventPayload _ _ = unit

-- | An element has been released by mouse.
data MouseUp = MouseUp

instance mouseUpUnitEvent :: Event Unit MouseUp where
  eventName _ _ = "mouseup"
  eventPayload _ _ = unit

-- | Text has been entered into an input field.
data Input = Input

instance inputStringEvent :: Event String Input where
  eventName _ _ = "input"
  eventPayload _ = either (const "") id <<< runExcept <<< (readString <=< \v -> v ! "target" ! "value")

-- | A checkbox got checked or unchecked.
data Checked = Checked

instance checkedBooleanEvent :: Event Boolean Checked where
  eventName _ _ = "change"
  eventPayload _ = either (const false) id <<< runExcept <<< (readBoolean <=< \v -> v ! "target" ! "checked")
