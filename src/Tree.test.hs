module Main
where
import Test.HUnit
import Tree

main = do runTestTT tests

tests = TestList [
  createsTreeWithEmptyTreeLeafes,
  createsSingletonWhenInsertingElementInEmptyTree
  ]

createsTreeWithEmptyTreeLeafes =
  singleton 1 ~?= Node 1 EmptyTree EmptyTree

createsSingletonWhenInsertingElementInEmptyTree =
  insertTree 1 EmptyTree ~?= singleton 1
