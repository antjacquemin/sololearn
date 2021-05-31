import Foundation

if let height = readLine(), let width = readLine(), let h = Int(height), let w = Int(width) {
    let area  = w * h * 2
    print(Int(ceil(Double(area) / 10.0)))
}