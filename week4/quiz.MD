> best("SC", "heart attack")
[1] 12.9
[1] MUSC MEDICAL CENTER
4510 Levels: ABBEVILLE AREA MEDICAL CENTER ABBEVILLE GENERAL HOSPITAL ABBOTT NORTHWESTERN HOSPITAL ... ZUNI COMPREHENSIVE COMMUNITY HEALTH CENTER
Warning message:
In best("SC", "heart attack") : NAs introduced by coercion
> best("NY", "pneumonia")
[1] 7.4
[1] MAIMONIDES MEDICAL CENTER
4510 Levels: ABBEVILLE AREA MEDICAL CENTER ABBEVILLE GENERAL HOSPITAL ABBOTT NORTHWESTERN HOSPITAL ... ZUNI COMPREHENSIVE COMMUNITY HEALTH CENTER
Warning message:
In best("NY", "pneumonia") : NAs introduced by coercion
> best("AK", "pneumonia")
[1] 9.7
[1] YUKON KUSKOKWIM DELTA REG HOSPITAL
4510 Levels: ABBEVILLE AREA MEDICAL CENTER ABBEVILLE GENERAL HOSPITAL ABBOTT NORTHWESTERN HOSPITAL ... ZUNI COMPREHENSIVE COMMUNITY HEALTH CENTER
Warning message:
In best("AK", "pneumonia") : NAs introduced by coercion
> rankhospital("NC", "heart attack", "worst")
[1] "WAYNE MEMORIAL HOSPITAL"
Warning message:
In rankhospital("NC", "heart attack", "worst") : NAs introduced by coercion
> rankhospital("WA", "heart attack", 7)
[1] "YAKIMA VALLEY MEMORIAL HOSPITAL"
Warning message:
In rankhospital("WA", "heart attack", 7) : NAs introduced by coercion
> rankhospital("TX", "pneumonia", 10)
[1] "SETON SMITHVILLE REGIONAL HOSPITAL"
Warning message:
In rankhospital("TX", "pneumonia", 10) : NAs introduced by coercion
> rankhospital("NY", "heart attack", 7)
[1] "BELLEVUE HOSPITAL CENTER"
Warning message:
In rankhospital("NY", "heart attack", 7) : NAs introduced by coercion
> r <- rankall("heart attack", 4)
There were 50 or more warnings (use warnings() to see the first 50)
> as.character(subset(r, state == "HI")$hospital)
[1] "CASTLE MEDICAL CENTER"
> as.character(subset(r, state == "NJ")$hospital)
[1] "MORRISTOWN MEMORIAL HOSPITAL"
> r <- rankall("pneumonia", "worst")
There were 46 warnings (use warnings() to see them)
> as.character(subset(r, state == "NJ")$hospital)
[1] "BERGEN REGIONAL MEDICAL CENTER"
> s <- rankall("heart failure", 10)
There were 50 or more warnings (use warnings() to see the first 50)
> as.character(subset(s, state == "NV")$hospital)
[1] "RENOWN SOUTH MEADOWS MEDICAL CENTER"
