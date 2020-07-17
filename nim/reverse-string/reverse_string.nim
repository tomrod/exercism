# Exercism v2, Nim 1.2.4
import strutils

proc reverse*(input: string): string = 
    for ind in countdown(input.high, 0):
        result.add(input[ind])