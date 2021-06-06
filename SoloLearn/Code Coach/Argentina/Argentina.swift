if let pesos = readLine(), let dollars = readLine(), let p = Int(pesos), let d = Int(dollars) {
    if p < d * 50 {
        print("Pesos")
    } else {
        print("Dollars")
    }
}