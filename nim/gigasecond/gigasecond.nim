import times
proc addGigasecond*(input : DateTime): DateTIme = 
    var gigasecond = initDuration(seconds = 1000000000)
    return input + gigasecond