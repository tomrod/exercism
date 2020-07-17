import tables
import strutils

proc normword(x : string): string = 
    var goodvals = "abcdefghijklmnopqrstuvwxyz0123456789'"
    var cleaned = ""
    var y = ""
    if startswith(x,"'") and endsWith(x, "'"):
        y = x[1 .. x.high-1]
    else:
        y = x
    for ltr in y:
        if ltr in goodvals:
            cleaned.add(ltr)
    return cleaned

proc countWords*( input: string ): Table[string, int] =
    var words = initTable[string, int]()
    var input_split = input.toLowerAscii.split({',','\n','\r','\t',' '}, maxsplit = -1)
    # echo "input is " & input
    # echo "input_split is "& input_split
    for word in input_split:
        var w = normword(word)
        # echo "Word is "& $word & " and w is " & $w
        if words.hasKey(w) and len(w) > 0:
            words[w] += 1
        elif len(w)>0 :
            words[w] = 1
    return words

    