import Control.Monad

main = do
  putStrLn "Your Choice? (y/n)"
  c <- getChar
  when (c /= ' ') $ do
    putChar c
    main
