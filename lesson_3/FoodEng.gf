concrete FoodEng of Food = {
    
    -- linearization type definitions 
    lincat
        Phrase, Quality = {s : Str} ;
        Item = {s : Str; n : Number} ; 
        Kind = {s : Number => Str} ;

    -- linearization definitions, i.e. what records are assigned to each
    -- of the meanings defined in the abstract syntax
    lin
        -- Phrase 
        Is item quality     = {s = item.s ++ copula item.n ++ quality.s} ;

        This                = det Sg "this" ; -- Partial Application
        These               = det Pl "these" ; 
        That                = det Sg "that" ;
        Those               = det Pl "those" ;
        QKind quality kind  = {s = table{
                                    n => quality.s ++ kind.s ! n
                                    }
                              } ;

        Wine                = regNoun "wine" ;
        Cheese              = regNoun "cheese" ;
        Fish                = mkNoun "fish" "fish" ;
        Beef                = mkNoun "beef" "beef" ;
        Poultry             = mkNoun "poultry" "poultry";
        Veal                = mkNoun "veal" "veal" ;
        
        Very quality        = {s = "very" ++ quality.s} ;
        Fresh               = {s = "fresh"} ;
        Warm                = {s = "warm"} ;
        Italian             = {s = "Italian"} ;
        Expensive           = {s = "expensive"} ;
        Delicious           = {s = "delicious"} ;
        Boring              = {s = "boring"} ;
        Tasty               = {s = "tasty"} ;
        Savory              = {s = "savory"} ;
        Sweet               = {s = "sweet"} ;
        Spicy               = {s = "spicy"} ;
        Bitter              = {s = "bitter"} ;
        Astringent          = {s = "astringent"} ;
        Chewy               = {s = "chewy"} ;
        
    param
        Number = Sg | Pl ;

    oper
        Noun : Type = {s: Number => Str} ;

        copula : Number -> Str = \n -> case n of {  Sg => "is" ;
                                                    Pl => "are" 
                                                 } ;

        det : 
          Number -> Str -> Noun -> {s : Str; n : Number}=
            \n, det, kind -> {  
                s = det ++ kind.s ! n ;
                n = n 
            };
        
        mkNoun : Str -> Str -> Noun = \x, y -> {
            s = table{  
                Sg => x ; Pl => y 
            }
        } ;

        regNoun : Str -> Noun = \x -> mkNoun x (x ++ "s") ;

}

