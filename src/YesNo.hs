module Main
where

class BoolC a where
  boolc :: a -> Bool


instance BoolC Int where
    boolc 0 = False
    boolc _ = True
