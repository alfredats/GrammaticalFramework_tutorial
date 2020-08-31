concrete HelloIta of Hello = {
    lincat Greeting, Recipient = {s : Str} ;

    lin
        Hello recip = {s = "ciao" ++ recip.s} ;
        World = {s = "mondo"} ;
        Mum = {s = "mamma"} ;
        Friends = {s = "amici"} ;
        Morning recip = {s = "buongiorno" ++ recip.s} ;
        Afternoon recip = {s = "buongiorno" ++ recip.s} ;
}
