import Foundation

if let prices = readLine() {
    let array = prices.components(separatedBy: ",")
    var total = 0.0
    for price in array {
        if let p = Double(price) {
            total += p
            if p < 20 {
                total += 0.07 * p
            }
        }
    }
    print(Double(round(total * 100) / 100))
} 