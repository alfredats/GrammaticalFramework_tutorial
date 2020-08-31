concrete HelloEng of Hello = {

    -- Linearization TYPE definitions
    lincat Greeting, Recipient = {s: Str} ;

    -- linearization definitions let us know what records are assigned
    -- to each of the meanings defined in the abstract syntax
    lin
        Hello recip = {s = "hello" ++ recip.s} ;
        World       = {s = "world"} ; 
        Mum         = {s = "mum"} ;
        Friends     = {s = "friends"} ;
        Morning recip = {s = "good morning" ++ recip.s} ;
        Afternoon recip = {s = "good afternoon" ++ recip.s} ;
        -- GreetMorn recip = {s = "good morning" ++ recip.s} ;
        -- GreetAft recip = {s = "good afternoon" ++ recip.s} ; 
        -- ToGreetMorn morning = {s = morning.s} ;
        -- ToGreetAft afternoon = {s = afternoon.s} ;

}

