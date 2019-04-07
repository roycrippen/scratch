module Demo.Utils

%access public export
%default total

demoSquare : Num a => a -> a
demoSquare a = a * a

demoQuad : Num a => a -> a 
demoQuad a = (demoSquare . demoSquare) a

