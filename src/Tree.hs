module Tree (
  Tree (..),
  singleton,
  insertTree
)
where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show,Read,Eq)

singleton :: a -> Tree a
singleton a = Node a EmptyTree EmptyTree

insertTree :: a -> Tree a -> Tree a
insertTree a EmptyTree = singleton a
