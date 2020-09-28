concrete DiscontConstConc of DiscontConst = open Prelude in {
  
  lincat 
    Expr = {s: Str} ;
    Subexpr = {s : Elem => Str} ;
  
  param 
    Elem = a | b | c ;

  lin 
    atomic = {s = \\elem => "" } ; -- This uses a table abstraction
    append = (\se -> {s = table{
      a => "a" ++ se.s ! a ;
      --"a" ++ BIND ++ se.s ! a ; 
      b => "b" ++ se.s ! b ;
      c => "c" ++ se.s ! c } 
      } ) ;
    mk_expr = (\se -> {s = se.s ! a ++ "   " ++ 
                           se.s ! b ++ " "   ++ 
                           se.s ! c}) ;

    -- Lexing and unlexing?
    -- Why does (++ "  ") and (++ " ") result in the same output?

}
