module Tree (
  Tree (..),
  baseTree,
  treeInsert,
  treeElem
)
where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show,Read,Eq)

baseTree :: a -> Tree a
baseTree a = Node a EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert a EmptyTree = baseTree a
treeInsert a (Node x left right)
  | a == x = Node x left right
  | a < x  = Node x (treeInsert a left) right
  | a > x  = Node x left (treeInsert a right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem a EmptyTree = False
treeElem a (Node x left right)
  | a == x = True
--  | otherwise = treeElem a left || treeElem a right
  | a < x = treeElem a left
  | a > x = treeElem a right
