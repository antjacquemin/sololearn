for i in 1...6 {
    if let number = readLine(), let n = Int(number) {
        if n % 3 == 0 {
            print("Pop", terminator: " ")
        } else if n % 2 == 0 {
            print("Crackle", terminator: " ")
        } else {
            print("Snap", terminator: " ")
        }
    }
}