returnDay, returnMonth, returnYear = [int(returnParam) for returnParam in input().split()]
expectDay, expectMonth, expectYear = [int(expectParam) for expectParam in input().split()]

if (returnYear, returnMonth, returnDay) <= (expectYear, expectMonth, expectDay):
    print(0)
elif returnYear == expectYear:
    if returnMonth == expectMonth:
        print(15 * (returnDay - expectDay))
    else:
        print(500 * (returnMonth - expectMonth))
else:
    print(10000)