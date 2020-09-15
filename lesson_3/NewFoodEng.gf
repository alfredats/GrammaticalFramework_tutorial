concrete NewFoodEng of NewFood = open Prelude in {
  
  lincat
    Phrase, Quality = SS ;
    Kind = Noun ;
    Item = {s : Str ; n : Number ; c : Case} ;
    
  lin
    Is item quality = 
      ss (item.s ++ copula item.n item.c ++ quality.s);
    
    NomThis = det Sg Nom "this" ;
    GenThis = det Sg Gen "this" ;
    NomThese = det Pl Nom "these" ;
    GenThese = det Pl Gen "these" ;

    Wine = regNoun "wine" ;
    Fish = mkNoun "fish" "fishes" ;
    
    Very = prefixSS "very" ;
    Fresh = ss "fresh" ;

  param
    Number = Sg | Pl ;
    Case = Nom | Gen ;

  oper
    Noun : Type = {s : Number => Case => Str} ;
    
    det : Number -> Case -> Str ->  Noun -> 
      {s : Str; n : Number; c : Case} = 
        \n,c,det,noun -> {
          s = det ++ noun.s ! n ! c ; 
          n = n ; 
          c = c ;
        } ;

    mkNoun : Str -> Str -> Noun = \x,y -> {
      s = table {
        Sg => table {
          Nom => x ;
          Gen => x + "'s"
        } ;
        Pl => table {
          Nom => y ;
          Gen => y + case last y of {
            "s" => "'" ;
            _   => "'s"
          }
        }
      }
    } ;

    regNoun : Str -> Noun = \x -> mkNoun x (x + "s") ;
    
    copula : Number -> Case -> Str = 
      \n,c -> case n of {
        Sg => case c of {
                Nom => "tastes" ;
                Gen => "taste is"
              } ;
        Pl => case c of {
                Nom => "taste" ;
                Gen => "tastes are"
              } 
    } ;
}
