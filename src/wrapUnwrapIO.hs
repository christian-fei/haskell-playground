main = do
  foo <- return "bar"
  putStrLn $ "foo is : " ++ foo
  let foo = "bar"
  putStrLn $ "foo is : " ++ foo
