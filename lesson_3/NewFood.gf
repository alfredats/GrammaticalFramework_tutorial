abstract NewFood =  {
    
    -- Establish terminating structure
    flags startcat = Phrase ;
    
    -- Categories; for types of meanings
    cat
        Phrase ;
        Item ;
        Kind ;
        Quality ;

    -- Functions; To build meaning
    fun

        Is                  : Item -> Quality -> Phrase ;
        NomThis, GenThis    : Kind -> Item ;
        NomThese, GenThese  : Kind -> Item ;
        That, Those         : Kind -> Item ;

        Qkind               : Quality -> Kind -> Kind ;
        Wine, Cheese, Fish  : Kind ;
        Beef, Poultry, Veal : Kind ;
        
        Very                : Quality -> Quality ;
        Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
        Tasty, Savory, Sweet, Spicy, Bitter, Astringent, Chewy : Quality ;
        
}
