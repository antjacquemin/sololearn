if let password = readLine() {
    let numbers = password.characters.filter {"0123456789".contains($0)}.count
    let symbols = password.characters.filter {"!@#$%&*".contains($0)}.count
    if password.count > 6 && numbers > 1 && symbols > 1 {
        print("Strong")
    } else {
        print("Weak")
    } 
}