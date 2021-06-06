import Foundation

if let prices = readLine() {
    let array = prices.components(separatedBy: " ")
    var max = 0.0
    for price in array {
        if let p = Double(price) {
            if p > max {
                max = p
            }
        }
    }
    if max * 1.1 > 20 {
        print("Back to the store")
    } else {
        print("On to the terminal")
    }
} 