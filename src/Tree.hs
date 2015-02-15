module Tree (
  Tree (..),
  baseTree,
  insertTree,
  treeElem
)
where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show,Read,Eq)

baseTree :: a -> Tree a
baseTree a = Node a EmptyTree EmptyTree

insertTree :: (Ord a) => a -> Tree a -> Tree a
insertTree a EmptyTree = baseTree a
insertTree a (Node x left right)
  | a == x = Node x left right
  | a < x  = Node x (insertTree a left) right
  | a > x  = Node x left (insertTree a right)

treeElem :: (Eq a) => a -> Tree a -> Bool
treeElem a EmptyTree = False
