func snowball(n: Int) -> String {
    var total = 0
    for i in 1...n {
        if let input = readLine(), let val = Int(input) {
            if val <= total {
                return "false"
            }
            total += val
        }
    }
    return "true"
}

if let input = readLine(), let n = Int(input) {
    print(snowball(n: n))
}