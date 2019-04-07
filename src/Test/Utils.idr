module Test.Utils

import Test.Unit
import Demo.Utils

%access export

partial
testDemoSquareInt : IO Bool
testDemoSquareInt = genericTest
  (Just "testDemoSquareInt")
  [demoSquare 5, demoSquare 12, demoSquare (-1)]
  [25, 144, 1]
  (==)

partial  
testDemoSquareDouble : IO Bool
testDemoSquareDouble = genericTest
  (Just "testDemoSquareDouble")
  [demoSquare 5.0, demoSquare 12.0, demoSquare (-1.0)]
  [25.0, 144.0, 1.0]
  (==)

partial
testDemoQuad : IO Bool
testDemoQuad = genericTest
  (Just "testDemoQuad")
  (demoQuad 5) 
  625
  (==)

partial
runTest : IO ()
runTest = do
  putStrLn "Testing Utils"
  putStrLn infoLine
  NonReporting.runTests 
    [ testDemoSquareInt
    , testDemoSquareDouble
    , testDemoQuad 
    ]

	