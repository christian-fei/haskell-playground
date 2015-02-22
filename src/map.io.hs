main = do
--  sequence (map print [1,2])
  mapM print [1,2]
--mapM_ print [1,2]  -- discard the IO result
