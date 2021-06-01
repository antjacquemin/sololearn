distance = int(input())
runnerSpeed = int(input())
coyoteSpeed = int(input())
runnerTime = distance / runnerSpeed
coyoteTime = (distance + 50) / coyoteSpeed
if runnerTime < coyoteTime:
    print("Meep Meep")
else:
    print("Yum")