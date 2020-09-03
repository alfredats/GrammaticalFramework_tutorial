concrete FoodIta of Food = {

    lincat
        Phrase, Item, Kind, Quality = {s : Str} ;

    lin
        Is item quality = {s = item.s ++ "é" ++ quality.s} ;
        This kind = {s = "ñqüesto" ++ kind.s} ;
        That kind = {s = "quel" ++ kind.s} ;

        Qkind quality kind = {s = kind.s ++ quality.s} ;
        Wine = {s = "vino"} ;
        Cheese = {s = "formaggio"} ;
        Fish = {s = "pesce"} ;
        
        Very quality = {s = "molto" ++ quality.s} ;
        Fresh = {s = "fresco"} ;
        Warm = {s = "caldo"} ;
        Italian = {s = "italiano"} ;
        Expensive = {s = "caro"} ;
        Delicious = {s = "delizioso" | "exquisit" | "tasty" } ;
        Boring = {s = "noioso"} ;
}
