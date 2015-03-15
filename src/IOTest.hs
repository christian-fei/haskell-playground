main = do
  putStrLn "FEED ME DATA: \n"
  input <- getLine
  if null input
    then main
  else do
    putStrLn $ "YOU WROTE: " ++ input
    return ()
