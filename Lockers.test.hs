module Main
where
import Test.HUnit
import Lockers
import qualified Data.Map as Map

main = do runTestTT tests

tests = TestList [
  lockerNotFound,
  lockerTaken,
  lockerFoundReturnsCode
  ]

lockerNotFound =
  lookupLocker lockerNumber lockers ~?= Left "Locker 1 not found"
  where
    lockerNumber = 1
    lockers = Map.fromList [(0,(Free,"000"))]

lockerTaken =
  lookupLocker lockerNumber lockers ~?= Left "Locker 0 already taken"
  where
    lockerNumber = 0
    lockers = Map.fromList [(0,(Taken,"000"))]

lockerFoundReturnsCode =
  lookupLocker lockerNumber lockers ~?= Right "000"
  where
    lockerNumber = 0
    lockers = Map.fromList [(0,(Free,"000"))]
