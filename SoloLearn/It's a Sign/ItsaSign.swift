func saveSign() -> String {
    for i in 1...4 {
        if let label = readLine() {
            let reverse = String(label.reversed())
            if label == reverse {
                return "Open"
            }
        }
    }
    return "Trash"
}

print(saveSign())