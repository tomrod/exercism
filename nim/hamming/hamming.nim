# Exercism v2, Nim 1.2.4
proc distance*(input1: string, input2: string): int =
    var counter = 0
    if input1.len != input2.len:
        raise newException(ValueError, "Strands should be same length")
    for i1, s1 in input1:
        if $s1 != $input2[i1]:
            counter += 1
    return counter
