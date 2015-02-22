main = do
    putStrLn "Your Choice? (y/n)"
    c <- getChar
    if c /= ' '
        then do
            putChar c
            main
        else
            return ()
