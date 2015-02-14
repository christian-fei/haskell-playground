module Main
where
import Test.HUnit
import Lockers
import qualified Data.Map as Map

main = do runTestTT tests

tests = TestList [
  reportsLockerNotFound
  ]

reportsLockerNotFound =
  lookupLocker lockerNumber lockers ~?= Left "Locker 1 not found"
  where
    lockerNumber = 1
    lockers = Map.fromList [(0,(Free,"000"))]
