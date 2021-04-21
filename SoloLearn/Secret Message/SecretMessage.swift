if let input:String = readLine() {
    let phrase = input.lowercased()
    var scalars = Array(phrase.unicodeScalars)
    let a = Int(UnicodeScalar("a").value)
    let z = Int(UnicodeScalar("z").value)
    let space = UnicodeScalar(" ")
    for (ind, val) in scalars.enumerated() {
        if val != space {
            scalars[ind] = UnicodeScalar(a + z - Int(val.value))!
        }   
    }
    let newphrase = String(String.UnicodeScalarView(scalars))
    print(newphrase)
}