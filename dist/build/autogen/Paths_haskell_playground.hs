module Paths_haskell_playground (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/saiph/Library/Haskell/bin"
libdir     = "/Users/saiph/Library/Haskell/ghc-7.8.3-x86_64/lib/haskell-playground-0.1.0.0"
datadir    = "/Users/saiph/Library/Haskell/share/ghc-7.8.3-x86_64/haskell-playground-0.1.0.0"
libexecdir = "/Users/saiph/Library/Haskell/libexec"
sysconfdir = "/Users/saiph/Library/Haskell/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_playground_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_playground_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_playground_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_playground_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_playground_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
