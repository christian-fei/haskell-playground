module Main
where
import Test.HUnit
import Tree

main = do runTestTT tests

tests = TestList [
  createsTreeWithEmptyTreeLeafes
  ]

createsTreeWithEmptyTreeLeafes =
  singleton 1 ~?= Node 1 EmptyTree EmptyTree
