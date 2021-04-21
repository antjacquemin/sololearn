import Glibc

if let houses = readLine(),
let h = Double(houses) {
    var p = Int(ceil(2 / h * 100))
    print(p)
}