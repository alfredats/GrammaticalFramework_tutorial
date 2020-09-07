abstract Food = Drink ** {
    
    -- Establish terminating structure
    flags startcat = Phrase ;
--    flags startcat =  Statement ;
    
    -- Categories; for types of meanings
    cat
--        Statement ;
        Phrase ;
--        Prefix ;
        Item ;
        Kind ;
        Quality ;

    -- Functions; To build meaning
    fun
--        NoPrefix             : Phrase -> Statement ;
--        AddPrefix            : Prefix -> Phrase -> Statement ;
--        ExcuseMe             : Prefix  ;

        Is                  : Item -> Quality -> Phrase ;
--        qnIs                : Item -> Quality -> Phrase ;
        This, That          : Kind -> Item ;
        Qkind               : Quality -> Kind -> Kind ;
        Cheese, Fish        : Kind ;
--        Beef, Poultry, Veal : Kind ;
        DrinkKind           : Drink -> Kind ;
        
        Very                : Quality -> Quality ;
        Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
--        Tasty, Savory, Sweet, Spicy, Bitter, Astringent, Chewy : Quality ;
        
}
