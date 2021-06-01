import Foundation

var cmyk: [Double] = []
for i in 0...3 {
    if let value = readLine(), let v = Double(value) {
        cmyk.append(v)
    }
}
var rgb: [String] = []
for i in 0...2 {
    rgb.append(String(Int(round(255 * (1 - cmyk[i]) * (1 - cmyk[3])))))
}
print(rgb.joined(separator: ','))