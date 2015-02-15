module Tree (
  Tree (..)
, singleton
)
where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show,Read,Eq)

singleton :: a -> Tree a
singleton a = Node a EmptyTree EmptyTree
