main = do
  chars <- sequence [getChar, getChar]
  putStrLn chars

