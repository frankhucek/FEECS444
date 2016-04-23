{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Foreign.C
import Foreign.C.String

foreign import ccall "foo" c_foo :: CString -> IO ()
foreign import ccall "bar" c_bar :: IO ()


main :: IO ()
main = do cstr <- newCAString "wassup"
          c_foo cstr
