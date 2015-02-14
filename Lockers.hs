module Lockers (
  LockerState (..)
, LockerNumber
, Code
, Lockers
, lookupLocker
) where

import qualified Data.Map as Map

data LockerState = Taken | Free deriving (Show,Eq)
type LockerNumber = Int
type Code = String
type Lockers = Map.Map LockerNumber (LockerState,Code)


lookupLocker :: LockerNumber -> Lockers -> Either String Code
lookupLocker lockerNumber lockers =
  case Map.lookup lockerNumber lockers of
    Nothing -> Left $ "Locker " ++ show lockerNumber ++ " not found"
    Just (state,code) -> if state /= Taken
                           then Right code
                           else Left $ "Locker " ++ show lockerNumber  ++ " already taken"
