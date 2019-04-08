module Demo.Main

import Demo            -- this will import modules Demo.Utils and Demo.Other
-- import Demo.Other   -- import of just module Demo.Other 

-- these imports allow you to access test functions from repl
import Test.Utils
import Test.Other 

main : IO ()
main = do 
    putStrLn hello             
    putStrLn Demo.Other.hello  -- fully qualified
