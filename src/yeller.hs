import Control.Monad
import Data.Char

main = do
  putStrLn "FEED ME *DATA* #?^|!"
  forever $ do
    l <- getLine
    putStrLn $ map toUpper l
    putStrLn ""
