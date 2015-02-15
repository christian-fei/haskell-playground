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
  lookupLocker unexistingLockerNumber freeLockers ~?= (Left $ "Locker " ++ show unexistingLockerNumber ++ " not found")

lockerTaken =
  lookupLocker existingLockerNumber takenLockers ~?= (Left $ "Locker " ++ show existingLockerNumber ++ " already taken")

lockerFoundReturnsCode =
  lookupLocker existingLockerNumber freeLockers ~?= Right code

code = "000"
existingLockerNumber = 0
unexistingLockerNumber = 1
freeLockers = Map.fromList [(0,(Free,code))]
takenLockers = Map.fromList [(0,(Taken,code))]
