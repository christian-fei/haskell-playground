module Main
where
import Test.HUnit
import Tree

main = do runTestTT tests

tree = Node 1 EmptyTree EmptyTree

tests = TestList [
  createsTreeWithEmptyTreeLeafes,
  createsEmptyTreeWithElementWhenInsertingElementInEmptyTree,
  doesNotInsertDuplicates,
  insertsSmallerElementToTheLeft,
  insertsGreaterElementToTheRight,
  doesNotFindElementInEmptyTree,
  doesNotFindElementIfNotExists,
  findsElementIfExists,
  findsNestedElementIfExists
  ]


createsTreeWithEmptyTreeLeafes =
  baseTree 1 ~?= Node 1 EmptyTree EmptyTree

createsEmptyTreeWithElementWhenInsertingElementInEmptyTree =
  treeInsert 1 EmptyTree ~?= Node 1 EmptyTree EmptyTree

doesNotInsertDuplicates =
  treeInsert 1 (Node 1 EmptyTree EmptyTree) ~?= Node 1 EmptyTree EmptyTree

insertsSmallerElementToTheLeft =
  treeInsert 0 tree ~?= (Node 1 (Node 0 EmptyTree EmptyTree) EmptyTree)

insertsGreaterElementToTheRight =
  treeInsert 2 tree ~?= (Node 1 EmptyTree (Node 2 EmptyTree EmptyTree))

doesNotFindElementInEmptyTree =
  treeElem 0 EmptyTree ~?= False

doesNotFindElementIfNotExists =
  treeElem 0 tree ~?= False

findsElementIfExists=
  treeElem 1 tree ~?= True

findsNestedElementIfExists =
  treeElem 2 (treeInsert 2 tree) ~?= True
