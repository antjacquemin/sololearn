import Foundation

if let kaleidoscopes = readLine(), let k = Int(kaleidoscopes) {
    var cost = Double(5 * k)
    if (k > 1)
        cost *= 0.9
    cost *= 1.07
    print(Double(round(cost * 100) / 100))
} 