if let carrots = readLine(), let boxes = readLine(), let c = Int(carrots), let b = Int(boxes) {
    let remainder = c % b
    let missing = 7 - remainder
    if missing <= 0 {
        print("Cake Time")
    } else {
        print("I need to buy \(missing) more")
    }
}