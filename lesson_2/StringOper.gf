resource StringOper = {

    oper
        -- What do these stand for?
        SS : Type = {s : Str} ;
        ss : Str -> SS = \x -> {s = x} ;
        -- compute_concrete
        cc : SS -> SS -> SS = \x,y -> ss (x.s ++ y.s) ; 
        prefix : Str -> SS -> SS = \p,x -> ss (p ++ x.s) ;
        infix  : Str -> SS -> SS -> SS  = \i,x,y -> ss (x.s ++ i ++ y.s) ;
        QnIs   : Str -> SS -> SS -> SS  = \i,x,y -> ss (i ++ x.s ++ y.s) ;

}

