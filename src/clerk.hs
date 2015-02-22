main = do
  putStrLn "Hello, how may I help you?"
  req <- getLine
  putStrLn $ "Sure thing: " ++ req
