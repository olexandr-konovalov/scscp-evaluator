#############################################################################
#
# OpenMathToOpenMath( <OpenMath plain string> )
#
# Evaluates OpenMath code given as an input (without OMOBJ tags) wrapped in 
# OMPlainString, for example:
# EvaluateBySCSCP( "OpenMathToOpenMath", 
#   [ OMPlainString("<OMA><OMS cd=\"arith1\" name=\"plus\"/><OMI>1</OMI><OMI>2</OMI></OMA>")],
#   "localhost",26133 ); 
OpenMathToOpenMath:=function( omc );
return omc;
end;

OpenMathToString:=function( omc );
return StripLineBreakCharacters(PrintString(omc));
end;

StringToOpenMath:=function( s );
if not IsString(s) then
  Error("The argument must be a string");
fi;
return EvalString(s);
end;

StringToString:=function( s );
if not IsString(s) then
  Error("The argument must be a string");
fi;
return StripLineBreakCharacters(PrintString(EvalString(s)));
end;

InstallSCSCPprocedure( "OpenMathToOpenMath", OpenMathToOpenMath, 
	"Evaluates OpenMath code given as an input (without OMOBJ tags) wrapped in OMPlainString", 1, 1 );

InstallSCSCPprocedure( "OpenMathToString", OpenMathToString );

InstallSCSCPprocedure( "StringToOpenMath", StringToOpenMath );

InstallSCSCPprocedure( "StringToString", StringToString );

RunSCSCPserver("localhost",26133);
