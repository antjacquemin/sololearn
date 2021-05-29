func luhn(cardnumber: String) -> Bool {
    let array = Array(cardnumber)
    var total = 0
    for i in 0...15 {
        if var digit = Int(String(array[i])) {
            if i % 2 == 0 {
                digit = 2 * digit
                if digit > 9 {
                    digit -= 9
                }
            }
            total += digit
        }
    }
    return total % 10 == 0
}

if let cardnumber = readLine() {
    if cardnumber.count == 16 && luhn(cardnumber: cardnumber) {
        print("valid")
    } else {
        print("not valid")
    }
}