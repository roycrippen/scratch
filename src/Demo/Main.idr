module Demo.Main

import Demo -- this will import modules Demo.Utils and Demo.Other
import Test.Utils
import Test.Other 

main : IO ()
main = do 
    putStrLn hello             
    putStrLn Demo.Other.hello  -- fully qualified
