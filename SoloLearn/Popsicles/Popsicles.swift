if let siblings = readLine(),
let popsicles = readLine(),
let s = Int(siblings),
let p = Int(popsicles) {
    if p % s == 0 {
        print("give away")
    } else {
        print("eat them yourself")
    }
}