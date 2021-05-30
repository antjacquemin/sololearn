import Foundation

if let snacks = readLine() {
    let array = snacks.components(separatedBy: " ")
    var total = 0
    for snack in array {
        if snack == "Lettuce" {
            total += 5;
        } else if snack == "Carrot" {
            total += 4;
        } else if snack == "Mango" {
            total += 9;
        }
    }
    if total > 9 {
        print("Come on Down!")
    } else {
        print("Time to wait")
    }
} 