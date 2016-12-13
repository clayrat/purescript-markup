module Web.Markup.SVG.Path where

import Data.Function (($))
import Data.Semigroup ((<>))
import Data.Show (show)

newtype Path = Path String

init :: Path
init = Path ""

mkPath :: Path -> String
mkPath (Path p) = p

appendToPath :: String -> Path -> Path
appendToPath str (Path p) = Path (p <> str)

-- moveto (absolute)
m :: Number -> Number -> Path -> Path
m x y = appendToPath $ "M" <> show x <> "," <> show y

-- moveto (relative)
mr :: Number -> Number -> Path -> Path
mr dx dy = appendToPath $ "m" <> show dx <> "," <> show dy

-- closepath
z :: Path -> Path
z = appendToPath "Z"

-- lineto (absolute)
l :: Number -> Number -> Path -> Path
l x y = appendToPath $ "L" <> show x <> "," <> show y

-- lineto (relative)
lr :: Number -> Number -> Path -> Path
lr dx dy = appendToPath $ "l" <> show dx <> "," <> show dy

-- horizontal lineto (absolute)
h :: Number -> Path -> Path
h x = appendToPath $ "H" <> show x

-- horizontal lineto (relative)
hr :: Number -> Path -> Path
hr dx = appendToPath $ "h" <> show dx

-- vertical lineto (absolute)
v :: Number -> Path -> Path
v y = appendToPath $ "V" <> show y

-- vertical lineto (relative)
vr :: Number -> Path -> Path
vr dy = appendToPath $ "v" <> show dy

-- curveto (absolute)
c :: Number -> Number -> Number -> Number -> Number -> Number -> Path -> Path
c c1x c1y c2x c2y x y = appendToPath $ "C" <> show c1x <> "," <> show c1y
                                    <> " " <> show c2x <> "," <> show c2y
                                    <> " " <> show x   <> " " <> show y

-- curveto (relative)
cr :: Number -> Number -> Number -> Number -> Number -> Number -> Path -> Path
cr dc1x dc1y dc2x dc2y dx dy = appendToPath $ "c" <> show dc1x <> "," <> show dc1y
                                           <> " " <> show dc2x <> "," <> show dc2y
                                           <> " " <> show dx   <> " " <> show dy

-- smooth curveto (absolute)
s :: Number -> Number -> Number -> Number -> Path -> Path
s c2x c2y x y = appendToPath $ "S" <> show c2x <> "," <> show c2y
                            <> " " <> show x   <> "," <> show y

-- smooth curveto (relative)
sr :: Number -> Number -> Number -> Number -> Path -> Path
sr dc2x dc2y dx dy = appendToPath $ "s" <> show dc2x <> "," <> show dc2y
                                 <> " " <> show dx   <> "," <> show dy

-- quadratic curveto (absolute)
q :: Number -> Number -> Number -> Number -> Path -> Path
q cx cy x y = appendToPath $ "Q" <> show cx <> "," <> show cy
                          <> " " <> show x  <> "," <> show y

-- quadratic curveto (relative)
qr :: Number -> Number -> Number -> Number -> Path -> Path
qr dcx dcy dx dy = appendToPath $ "q" <> show dcx <> "," <> show dcy
                               <> " " <> show dx  <> "," <> show dy

-- smooth quadratic curveto (absolute)
t  :: Number -> Number -> Path -> Path
t x y = appendToPath $ "T" <> show x <> "," <> show y

-- smooth quadratic curveto (relative)
tr :: Number -> Number -> Path -> Path
tr x y = appendToPath $ "t" <> show x <> "," <> show y

-- elliptical arc (absolute)
a :: Number -> Number -> Number -> Boolean -> Boolean -> Number -> Number -> Path -> Path
a rx ry xrot largearc sweep x y = appendToPath $ "A" <> show rx <> "," <> show ry
                                              <> " " <> show xrot
                                              <> " " <> (if largearc then "1" else "0")
                                              <> "," <> (if sweep then "1" else "0")
                                              <> " " <> show x <> "," <> show y

--  elliptical arc  (relative)
ar :: Number -> Number -> Number -> Boolean -> Boolean -> Number -> Number -> Path -> Path
ar rx ry xrot largearc sweep x y = appendToPath $ "a" <> show rx <> "," <> show ry
                                               <> " " <> show xrot
                                               <> " " <> (if largearc then "1" else "0")
                                               <> "," <> (if sweep then "1" else "0")
                                               <> " " <> show x <> "," <> show y
