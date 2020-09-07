abstract Morefood = Food ** {
    
    flags
        startcat = Phrase ;

    cat
        Question ;
    
    fun
        QIs : Item -> Quality -> Question ;
        QtP : Question -> Phrase ;
        Pizza : Kind ;
}
