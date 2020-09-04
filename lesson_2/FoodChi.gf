concrete FoodChi of Food = open StringOper in {

    lincat
        Phrase, Item, Kind, Quality = SS ;

    lin
        -- Everything is in hanyu pinyin because chi chars aren't
        -- linearizable in cclaw's GF
        
        -- Partial Application exercise
        Is = infix "很" ;
        --Is item quality = cc item (prefix "很" quality) ;
                        -- {s = item.s ++ "很" ++ quality.s} ;
        
        --3 ways of writing 
        --  Explicit construction: 
        --      This kind = {s = "这个" ++ kind.s} ;
        --  Oper const. w. explicit arguments: 
        --      This kind = prefix "这个" kind ;
        --  Oper const. w. implicit arguments: 
        This = prefix "这个" ; 

        That kind = prefix "那个" kind ;
                    -- {s = "那个" ++ kind.s} ;

        Qkind quality kind = {s = kind.s ++ quality.s} ;
        Wine = {s = "jiu3"} ;
        Cheese = {s = "ru3 lao4"} ;
        Fish = {s = "yu2"} ;
        
        Very quality = {s = "hen3" ++ quality.s} ;
        Fresh = {s = "xin1 xian1"} ;
        Warm = {s = "nuan1"} ;
        Italian = {s = "yi1 da4 li1 shi4"} ;
        Expensive = {s = "gui4"} ;
        Delicious = {s = "mei3 wei4"} ;
        Boring = {s = "wu2 liao4"} ;
}
