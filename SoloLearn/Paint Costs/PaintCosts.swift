import Foundation

if let colors = readLine(), let c = Double(colors) {
    let total = 40.0 + 5.0 * c
    let tax = total / 10
    print(Int(ceil(total + tax))) 
}