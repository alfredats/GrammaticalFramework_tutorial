concrete HelloFin of Hello = {

    lincat Greeting, Recipient = {s : Str} ;

    lin
        Hello recip = {s = "terve" ++ recip.s} ;
        World = {s = "maailma"} ; 
        -- Parser seems to fail with the umlaut-a in both strings below
        Mum = {s = "äiti"} ;
        Friends = {s = "ystävät"} ;
}
