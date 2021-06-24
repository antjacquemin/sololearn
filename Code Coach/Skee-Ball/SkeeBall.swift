if let score = readLine(), let cost = readLine(), let s = Int(score), let c = Int(cost) {
    if s / 12 < c {
        print("Try again")
    } else {
        print("Buy it!")
    }
} 