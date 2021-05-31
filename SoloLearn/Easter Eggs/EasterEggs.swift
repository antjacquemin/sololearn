if let eggs = readLine(), let eggsBasket = readLine(), let eggsFriend = readLine(), let e = Int(eggs), let b = Int(eggsBasket), let f = Int(eggsFriend) {
    if e == b + f {
        print("Candy Time")
    } else {
        print("Keep Hunting")
    }
}