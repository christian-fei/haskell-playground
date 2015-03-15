import System.IO

main = do
  let filename = "src/readFromFile.hs"
  handle <- openFile filename ReadMode
  contents <- hGetContents handle
  putStrLn $ "The contents of the file " ++ filename ++ " are:"
  putStrLn contents
  hClose handle
