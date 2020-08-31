concrete FoodEng of Food = {
    
    -- linearization type definitions 
    lincat
        Statement, Phrase, Item, Kind, Quality, Prefix = {s : Str} ;
    
    -- linearization definitions, i.e. what records are assigned to each
    -- of the meanings defined in the abstract syntax
    lin
        -- Added a layer of abstraction to allow for optional prefixing
        AddPrefix prefix phrase = {s = prefix.s ++ phrase.s} ;
        NoPrefix phrase     = {s = phrase.s} ;
        ExcuseMe            = {s = "Excuse me, but"} ;


        -- Phrase 
        Is item quality     = {s = item.s ++ "is" ++ quality.s} ;
        qnIs item quality   = {s = "is" ++ item.s ++ quality.s} ;

        This kind           = {s = "this" ++ kind.s} ;
        That kind           = {s = "that" ++ kind.s} ;
        Qkind quality kind  = {s = quality.s ++ kind.s} ;
        
        Wine                = {s = "wine"} ;
        Cheese              = {s = "cheese"} ;
        Fish                = {s = "fish"} ;
        Beef                = {s = "beef"} ;
        Poultry             = {s = "poultry"} ;
        Veal                = {s = "veal"} ;
        
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
        
}
