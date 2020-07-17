import strutils
import sequtils

proc checkLetters(x: string): bool=
    var goodletters = "abcdefghijklmnopqrstuvwxyz"
    for ltr in toSeq(x.items):
        if goodletters.contains(ltr.toLowerAscii()):
            return true
    return false

proc hey*(input : string): string =
    var whattest = input.strip()
    if whattest.endswith("?") and whattest.toUpperAscii()==whattest and checkLetters(whattest):
        return "Calm down, I know what I'm doing!"
    elif whattest.toUpperAscii() == whattest and checkLetters(whattest) :
        return "Whoa, chill out!"
    elif whattest.endsWith("?"):
        return "Sure."
    elif whattest == "":
        return "Fine. Be that way!"
    else: 
        return "Whatever."
