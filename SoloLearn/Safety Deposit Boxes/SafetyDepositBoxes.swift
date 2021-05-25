import Foundation

if let items = readLine(), let item = readLine() {
    let array = items.components(separatedBy: ",")
    if let i = array.firstIndex(of: item) {
        print((i + 1) * 5)
    }
}