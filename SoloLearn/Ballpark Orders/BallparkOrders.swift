import Foundation

if let orders = readLine() {
    let array = orders.components(separatedBy: " ")
    var total = 0.0
    for order in array {
        if order == "Nachos" || order == "Pizza" {
            total += 6.0;
        } else if order == "Cheeseburger" {
            total += 10.0;
        } else if order == "Water" {
            total += 4.0;
        } else {
            total += 5.0;
        }
    }
    let tax = total * 7 / 100
    print(total + tax)
}