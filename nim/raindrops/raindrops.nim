
proc convert*(x : int): string =
    var r  = ""
    
    # Add Pling
    if x mod 3 == 0:
        r.add("Pling")
    
    # Add Plang
    if x mod 5 == 0:
        r.add("Plang")
    
    # Add Plong
    if x mod 7 == 0:
        r.add("Plong")

    # Check if our string has length and return the condition
    if len(r) == 0:
        return $x
    else:
        return r
