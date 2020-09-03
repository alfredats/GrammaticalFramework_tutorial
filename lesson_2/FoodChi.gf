concrete FoodChi of Food = {

    lincat
        Phrase, Item, Kind, Quality = {s : Str} ;

    lin
        -- Everything is in hanyu pinyin because chi chars aren't
        -- linearizable in cclaw's GF
        Is item quality = {s = item.s ++ "很" ++ quality.s} ;
        This kind = {s = "这个" ++ kind.s} ;
        That kind = {s = "那个" ++ kind.s} ;

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
