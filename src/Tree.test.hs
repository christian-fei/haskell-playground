module Main
where
import Test.HUnit
import Tree

main = do runTestTT tests

tests = TestList [
  createsTreeWithEmptyTreeLeafes,
  createsSingletonWhenInsertingElementInEmptyTree,
  ignoresInsertForSameElement,
  insertsSmallerElementToTheLeft
  ]

createsTreeWithEmptyTreeLeafes =
  singleton 1 ~?= Node 1 EmptyTree EmptyTree

createsSingletonWhenInsertingElementInEmptyTree =
  insertTree 1 EmptyTree ~?= singleton 1

ignoresInsertForSameElement =
  insertTree 1 (Node 1 EmptyTree EmptyTree) ~?= Node 1 EmptyTree EmptyTree

insertsSmallerElementToTheLeft =
  insertTree 1 (Node 2 EmptyTree EmptyTree) ~?= (Node 2 (Node 1 EmptyTree EmptyTree) EmptyTree)
