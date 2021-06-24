def matchEval(value, expressions):
    for i, exp in enumerate(expressions):
        if eval(exp) == value:
            return f"index {i}"
    return "none"

value = int(input())
expressions = input().split()
print(matchEval(value, expressions))