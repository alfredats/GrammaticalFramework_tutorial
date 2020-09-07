concrete FoodChi of Food = open StringOper in {

    lincat
        Phrase, Item, Kind, Quality = SS ;

    lin
        -- Partial Application exercise
        Is = infix "是" ;
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

        Qkind quality kind = {s = quality.s ++ kind.s} ;
        Wine = ss "酒" ;
        Cheese = ss "乳酪" ;
        Fish = ss "鱼" ;
        
        Very = prefix "很" ;
        Fresh = ss "新鲜" ;
        Warm = ss "暖" ;
        Italian = ss "意大利式" ;
        Expensive = ss "贵" ;
        Delicious = ss "美味" ;
        Boring = ss "无聊" ;
}
