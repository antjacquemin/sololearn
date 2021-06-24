if let sales = readLine(), let s = Int(sales) {
    if s == 7 {
        print("Broke Even")
    } else if s < 7 {
        print("Loss")
    } else {
        print("Profit")
    }
}