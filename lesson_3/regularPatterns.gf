resource SmartParadigms = {
  
  param 
  Number = Sg | Pl ;
  VerbForm = 
      VPresent Number
    | VPast
    | VPastPart
    | VPresPart ;

  oper 
  Noun : Type = {s : Number => Str} ;
  
  mkNoun : Str -> Str -> Noun = \x,y -> {
      s = table {
        Sg => x ;
        Pl => y
        }
      } ;

  regNoun : Str -> Noun = \w ->
    let 
      ws : Str = case w of {
        _ + ("a" | "e" | "i" | "o" | "u") + "o"  => w + "s"   ;
        _ + ("a" | "e" | "o" | "u") + "y"        => w + "s"   ;
        _ + ("s" | "x" | "sh" | "o")             => w + "es"  ;
        _ + "z"                                  => w + "zes" ;
        x + "y"                                  => x + "ies" ;
        _                                        => w + "s" 
      }
    in mkNoun w ws ;

  regVerb: Str -> {s : VerbForm => Str} = \a -> 
    {s = 
      table {
        VPresent Sg => a + "s" ;
        VPresent Pl => a ;
        VPresPart   => a + "ing" ;
        _           => case a of {
                          x + "y" => x + "ied" ;
                          x + "e" => x + "ed" ;
                          _   => a + "ed"
                        } 
        }
    };

  umlautsGalore : Str -> Str = \w ->
    let umlautW : Str = case w of {
        x + "a" + y => x + "ä" + y ;
        x + "o" + y => x + "ö" + y ;
        x + "u" + y => x + "ü" + y 
      }
    in umlautW ;

}
