import Control.Monad

main = do
  colors <- forM [1,2] (\a -> do
    putStrLn $ "Which color do you associate with the number " ++ show a ++ " ?"
    color <- getLine
    return color)

  putStrLn "HMM, very interesting.."
  mapM_ putStrLn colors
