--fibonaci numbers using Monad State
--exapmle call: runState (fiboS 12) []
import Control.Monad
import Control.Monad.State
import Control.Monad.Writer
import Control.Monad.Identity

fiboS :: Int -> StateT [Int] Identity ()

fiboS 0 = return ()
fiboS n = do
    st <- get;

    if st == [] then
        put [1, 0]
    else do {
        (a:b:t) <- get;
        put (a+b:a:b:t)
    };

    fiboS (n-1)