module Test.Other

import Test.Unit
import Demo.Other

%access export

partial
testHello : IO Bool
testHello = genericTest
  (Just "testHello")
  hello
  "hello"
  (==)

partial
runTest : IO ()
runTest = do
  putStrLn "Testing Other"
  putStrLn infoLine
  NonReporting.runTests [ testHello ]
    
