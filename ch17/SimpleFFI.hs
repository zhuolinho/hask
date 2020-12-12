-- {-# LANGUAGE ForeignFunctionInterface #-}
import           Foreign.C.Types (CDouble(..))

foreign import ccall "math.h sin" c_sin :: CDouble -> CDouble

fastsin :: Double -> Double
fastsin x = realToFrac (c_sin (realToFrac x))

main = mapM_ (print . fastsin) [0 / 10, 1 / 10 .. 10 / 10]