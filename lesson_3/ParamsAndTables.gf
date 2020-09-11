resource ParamsAndTables = {
    -- Recap from lesson 2: resource modules are used to package 
    -- oper definitions into reusable resources
    
    param 
        Number = Sg | Pl ;
        VerbForm = VPresent Number | VPast | VPastPart | VPresPart ;
    
    oper
        regVerb: Str ->{s : VerbForm => Str} = \a -> {s = 
            table {
                VPresent Sg => a + "s" ;
                VPresent Pl => a ;
                VPresPart   => a + "ing" ;
                _           => a + "ed"
                }
        };
        
        regNoun : Str -> {s: Number => Str} = \a -> {s = 
            table{
                Sg => a ;
                Pl => a + "s"
            }
        };
        
        drinkVerb : Str -> {s : VerbForm => Str} = \drink -> {s = 
            table{
                VPresent Sg => drink + "s" ;
                VPresent Pl => drink ;
                VPast       => "drank" ;
                VPastPart   => "drunk" ;
                VPresPart   => "drinking"
                }
        };

        childNoun : Str -> {s: Number => Str} = \child -> {s = 
            table{
                Sg => child ;
                Pl => child + "ren"
            }
        };
}
