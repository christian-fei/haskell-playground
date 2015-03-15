import System.IO

main = do
  let filename = "src/readFromFile2.hs"
  withFile filename ReadMode (\handle -> do
    putStrLn $ "The contents of the file " ++ filename ++ " are:"
    contents <- hGetContents handle
    putStrLn contents
    )
