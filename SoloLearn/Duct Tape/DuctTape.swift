import Foundation

if let height = readline(), let width = radLine(), let h = Int(height), let w = Int(width) {
    let area  = w * h * 2
    print(Int(ceil(Double(area) / 10.0)))
}