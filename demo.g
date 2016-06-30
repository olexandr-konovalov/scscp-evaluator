EvaluateBySCSCP( "OpenMathToOpenMath", 
  [ OMPlainString("<OMA><OMS cd=\"arith1\" name=\"plus\"/><OMI>1</OMI><OMI>2</OMI></OMA>")],
  "localhost",26133 ).object;

EvaluateBySCSCP( "OpenMathToString", 
  [ OMPlainString("<OMA><OMS cd=\"arith1\" name=\"times\"/><OMI>6</OMI><OMI>7</OMI></OMA>")],
  "localhost",26133 ).object;

EvaluateBySCSCP( "StringToOpenMath", [ "1+2" ], "localhost", 26133).object;

EvaluateBySCSCP( "StringToString", [ "(1,2,3)*(1,2)" ], "localhost", 26133).object;

EvaluateBySCSCP( "StringToString", [ "DerivedSubgroup(SymmetricGroup(6))" ], "localhost", 26133).object;

EvaluateBySCSCP( "StringToOpenMath", [ "1+2" ], "localhost", 26133 : output="tree").object;


