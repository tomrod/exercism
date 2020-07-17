import tables
import strutils

proc isIsogram*(input: string): bool = 
    var ltrs = initTable[char, int]()
    var counter: int = 0
    var goodvals = "abcdefghijklmnopqrstuvwxyz0123456789"
    
    for ltr in normalize(input):
        if ltrs.hasKeyOrPut(ltr, 1):
            ltrs[ltr] += 1

    for k, v in ltrs.pairs:
        if goodvals.contains(k):
            if v > 1:
                counter += 1
    
    result = counter == 0

