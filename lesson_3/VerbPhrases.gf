abstract VerbPhrases = {

    flags startcat = Sntnc ;

    -- Reference: https://grammar.yourdictionary.com/sentences/verb-phrase.html
    cat
        Sntnc ;  -- Sentence
        Clause ; -- Clause
        
        NnPhrs ; -- NounPhrase
        Prdct ;  -- Predicate
        
        Artcl ;  -- Article
        Nn ;     -- Noun
        Prnn ;   -- Pronoun
        
        V' ;     -- Verb (transformed)
        AV' ;    -- Auxillary Verb (Transformed)
        Vrb ;    -- Verb
        AxVrb ;  -- Auxillary Verb
        

    fun 
        mkPrd : AxVrb -> Vrb -> Prdct ;
        mkV'  : Vrb -> V'        
        be : AxVrb;
        drink : Vrb ;
    



}
