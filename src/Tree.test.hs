module Main
where
import Test.HUnit
import Tree

main = do runTestTT tests

tree = baseTree 1

tests = TestList [
  createsTreeWithEmptyTreeLeafes,
  createsEmptyTreeWhenInsertingElementInEmptyTree,
  doesNotInsertDuplicates,
  insertsSmallerElementToTheLeft,
  insertsGreaterElementToTheRight
  ]


createsTreeWithEmptyTreeLeafes =
  baseTree 1 ~?= Node 1 EmptyTree EmptyTree

createsEmptyTreeWhenInsertingElementInEmptyTree =
  insertTree 1 EmptyTree ~?= Node 1 EmptyTree EmptyTree

doesNotInsertDuplicates =
  insertTree 1 (Node 1 EmptyTree EmptyTree) ~?= Node 1 EmptyTree EmptyTree

insertsSmallerElementToTheLeft =
  insertTree 0 tree ~?= (Node 1 (Node 0 EmptyTree EmptyTree) EmptyTree)

insertsGreaterElementToTheRight =
  insertTree 2 tree ~?= (Node 1 EmptyTree (Node 2 EmptyTree EmptyTree))
