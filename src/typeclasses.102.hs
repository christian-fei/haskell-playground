module Main
where

data Day = Monday | Tuesday

instance Show Day where
  show Monday = "It's Monday!! :)"
  show Tuesday = "Yeaaah!"

instance Eq Day where
  Monday == Monday = True
  Tuesday == Tuesday = True
  _ == _ = False
