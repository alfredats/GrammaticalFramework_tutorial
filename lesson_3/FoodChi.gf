concrete FoodChi of Food = open Prelude in {
  
  param
    Number = Sg | Pl ;

  oper 
    Noun : Type = {s : Str ; cl : Str} ;

    mkNoun : Str -> Str -> Noun = \x,y ->
      {
        s = x; 
        -- default to "个“ if 2nd argument is empty
        cl = case y of {
          ""  => "个" ;
          _   => y 
        }
      } ;
    
    quantifier : Number -> Str = 
      \n -> case n of {
          Sg => "" ;
          Pl => "几" 
          } ;

    det : Number -> Str -> Noun -> {s : Str; n : Number} =
      \num,dt,nn -> {
        s = dt ++ (quantifier num) ++ nn.cl ++ nn.s ;
        n = num 
      } ;

  lincat
    Phrase, Quality = {s: Str} ;
    Kind = Noun ;
    Item = {s : Str ; n : Number} ; -- cl = classifier

  lin
    -- : Item -> Quality -> Phrase ;
    Is itm qulty = ss (itm.s ++ "是" ++ qulty.s ++ "的") ;    

    -- : Kind -> Item ;
    This = det Sg "这" ;
--    That = det Sg "那" kind ;
                -- {s = "那个" ++ kind.s} ;

    QKind quality kind = {s = quality.s ++ kind.s ; cl = kind.cl} ;
    Wine = mkNoun "酒" "杯" ;
    Cheese = mkNoun "乳酪" "块" ;
    Fish = mkNoun "鱼" "条" ;
    Pizza = mkNoun "比萨" "张" ;

    --  : Quality -> Quality ;
    Very = prefixSS "很" ;
    
    Fresh = ss "新鲜" ;
    Warm = ss "暖" ;
--    Italian = ss "意大利式" ;
--    Expensive = ss "贵" ;
--    Delicious = ss "美味" ;
--    Boring = ss "无聊" ;
}
