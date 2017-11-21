module Foo.Bar where

data Status = Applied | Cancelled deriving (Show, Eq)

data Entity = Entity { id :: Int, name :: String, status :: Status } deriving (Show, Eq)

cancel :: Entity -> Entity
cancel (Entity id name _) = Entity id name Cancelled
