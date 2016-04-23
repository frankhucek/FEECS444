module Paths_FEECS444 (
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

bindir     = "/home/frank/Documents/FEECS444/.stack-work/install/x86_64-linux/lts-5.13/7.10.3/bin"
libdir     = "/home/frank/Documents/FEECS444/.stack-work/install/x86_64-linux/lts-5.13/7.10.3/lib/x86_64-linux-ghc-7.10.3/FEECS444-0.1.0.0-AtyvJl0qCzz6LUbwAgbRrC"
datadir    = "/home/frank/Documents/FEECS444/.stack-work/install/x86_64-linux/lts-5.13/7.10.3/share/x86_64-linux-ghc-7.10.3/FEECS444-0.1.0.0"
libexecdir = "/home/frank/Documents/FEECS444/.stack-work/install/x86_64-linux/lts-5.13/7.10.3/libexec"
sysconfdir = "/home/frank/Documents/FEECS444/.stack-work/install/x86_64-linux/lts-5.13/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "FEECS444_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "FEECS444_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "FEECS444_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "FEECS444_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "FEECS444_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
