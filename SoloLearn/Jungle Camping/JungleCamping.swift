import Foundation

if let sounds = readLine() {
    let array = sounds.components(separatedBy: " ")
    var animals = ""
    for sound in array {
        if sound == "Grr" { 
            animals += "Lion "
        } elif sound == "Rawr" {
            animals += "Tiger "
        } elif sound == "Ssss" {
            animals += "Snake "
        } elif sound == "Chirp" {
            animals += "Bird "
        }
    }
    print(animals.fropLast())
}
