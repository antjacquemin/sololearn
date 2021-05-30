import Foundation

if let a = readLine(), let b = readLine() {
    let aArr = a.components(separatedBy: ",")
    let bArr = b.components(separatedBy: ",")
    if let ha = Int(aArr[0]), let la = Int(aArr[1]), let hb = Int(bArr[0]), let lb = Int(bArr[1]) {
        if ha * la < hb * lb {
            print("Apartment B")
        } else {
            print("Apartment A")
        }
    }
}