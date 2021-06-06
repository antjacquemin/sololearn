if let yards = readLine(), let y = Int(yards) {
    if y > 10 {
        print("High Five")
    } else if y < 1 {
        print("shh")
    } else {
        for i in 1...y {
            print("Ra!")
        }
    }
}