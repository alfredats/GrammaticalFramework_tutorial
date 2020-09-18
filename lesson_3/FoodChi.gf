concrete FoodChi of Food =  {
  
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

  lincat
    Phrase, Quality = {s: Str} ;
    Kind = Noun ;
    Item = {s : Str ; n : Number; cl : Str} ; -- cl = classifier

  lin
--    Is = infix "是" ;
--    
--    This = det Sg "这" ;
--    That = det Sg "那" kind ;
                -- {s = "那个" ++ kind.s} ;

    --Qkind quality kind = {s = quality.s ++ kind.s} ;
    Wine = mkNoun "酒" "杯" ;
    Cheese = mkNoun "乳酪" "块" ;
    Fish = mkNoun "鱼" "条" ;
    Pizza = mkNoun "比萨" "张" ;

--    Very = prefix "很" ;
--    Fresh = ss "新鲜" ;
--    Warm = ss "暖" ;
--    Italian = ss "意大利式" ;
--    Expensive = ss "贵" ;
--    Delicious = ss "美味" ;
--    Boring = ss "无聊" ;
}
