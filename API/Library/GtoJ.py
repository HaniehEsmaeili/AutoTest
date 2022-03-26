import re

def g_to_j(gyear, gmonth, gday):
    length_of_months = [0, 31, 59, 90, 120, 151,  181, 212, 243, 273, 304, 334]
    if (gmonth > 2):
        gy = gyear + 1
    else:
        gy = gyear
    days = 355666 + (365 * gyear) + ((gy + 3) // 4) - ((gy + 99) //
                                                     100) + ((gy + 399) // 400) + gday + length_of_months[gmonth - 1]
    jyear = -1595 + (33 * (days // 12053))
    days %= 12053
    jyear += 4 * (days // 1461)
    days %= 1461
    if (days > 365):
        jyear += (days - 1) // 365
        days = (days - 1) % 365
    if (days < 186):
        jmonth = 1 + (days // 31)
        jday = 1 + (days % 31)
    else:
        jmonth = 7 + ((days - 186) // 30)
        jday = 1 + ((days - 186) % 30)

    return [jyear, jmonth, jday]


def parseAndConvert(dateTime):
    splited = re.split("[^0-9]", str(dateTime))
    print(splited)
    year = int(splited[2])
    month = int(splited[3])
    day = int(splited[4])

    jalaliDate = g_to_j(year, month, day)
    return str(jalaliDate[0]) + "-" + str(jalaliDate[1]) + "-" + str(jalaliDate[2]) + "T" + splited[5] + ":" + splited[6] + ":" + splited[7] + "." + splited[8]+"Z"

