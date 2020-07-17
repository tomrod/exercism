import tables
import strutils

proc isPangram*( input: string ): bool =
    var ltrs = initTable[char, int]()
    var allvals = "abcdefghijklmnopqrstuvwxyz"
    var check = true

    for ltr in allvals:
        ltrs[ltr] = 0

    for ltr2 in normalize(input):
        if ltrs.hasKey(ltr2):
            ltrs[ltr2] += 1

    for ltr in allvals:
        if ltrs[ltr] == 0:
            check = false
    return check
    
    