import tables


proc toRna*( input: string ): string =
    var ltrs = {"G":"C","C":"G","T":"A","A":"U"}.toTable
    var rna = ""
    for ltr in input:
        if ltrs.haskey($ltr):
            rna.add(ltrs[$ltr]) 
        else:
            raise newException(ValueError, "Non-DNA char entered")
    return rna
    
    