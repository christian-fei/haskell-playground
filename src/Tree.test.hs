module Main
where
import Test.HUnit
import Tree

main = do runTestTT tests

baseTree = singleton 1

tests = TestList [
  createsTreeWithEmptyTreeLeafes,
  createsSingletonWhenInsertingElementInEmptyTree,
  ignoresInsertForSameElement,
  insertsSmallerElementToTheLeft,
  insertsGreaterElementToTheRight
  ]


createsTreeWithEmptyTreeLeafes =
  singleton 1 ~?= Node 1 EmptyTree EmptyTree

createsSingletonWhenInsertingElementInEmptyTree =
  insertTree 1 EmptyTree ~?= singleton 1

ignoresInsertForSameElement =
  insertTree 1 baseTree ~?= Node 1 EmptyTree EmptyTree

insertsSmallerElementToTheLeft =
  insertTree 0 baseTree ~?= (Node 1 (Node 0 EmptyTree EmptyTree) EmptyTree)

insertsGreaterElementToTheRight =
  insertTree 1 baseTree ~?= (Node 1 EmptyTree (Node 2 EmptyTree EmptyTree))
