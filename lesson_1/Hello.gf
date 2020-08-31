
-- an ABSTRACT syntax defines what MEANINGS can be expressed in the grammar

abstract Hello = {

    -- startcat flag declaration declares that 'Greeting's are the default start
    -- category for parsing and generation
    flags startcat = Greeting ; 

    -- category declaration defines the categories 
    cat 
        Greeting ; 
        Recipient ;
        --Morning ;
        --Afternoon ;

    -- function declaration introduces meaning-building functions
    fun
        Hello : Recipient -> Greeting ;
        Morning : Recipient -> Greeting ;
        Afternoon : Recipient -> Greeting ;
        --GreetMorn : Recipient -> Morning ;
        --GreetAft : Recipient ->  Afternoon ;
        --ToGreetMorn : Morning -> Greeting ;
        --ToGreetAft : Afternoon -> Greeting ; 
        World, Mum, Friends : Recipient ;
       
        -- Recipient --> "morning, dad" (cat Morning) --> "morning, dad" (cat Greeting)

}
