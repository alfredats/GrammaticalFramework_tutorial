-- Discontinuous Constituents
abstract DiscontConst = {

  flags startcat = Expr ;

  cat Expr ; Subexpr ;
    
  fun
    atomic : Subexpr;
    append : Subexpr -> Subexpr;
    mk_expr : Subexpr -> Expr;
}

