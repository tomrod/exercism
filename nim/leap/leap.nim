# Exercism v2, Nim 1.2.4
proc isLeapYear*(year: int): bool =
    if (year mod 400 == 0) or (year mod 4 == 0 and year mod 100 != 0):
        return true
    else:
        return false