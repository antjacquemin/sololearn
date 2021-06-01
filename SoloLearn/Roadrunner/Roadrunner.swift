if let distance = readLine(), let runnerSpeed = readLine(), let coyoteSpeed = readLine(), let d = Int(distance), let rs = Int(runnerSpeed), let cs = Int(coyoteSpeed) {
    let runnerTime = d / rs
    let coyoteTime = (d + 50) / cs
    if runnerTime < coyoteTime {
        print("Meep Meep")
    } else {
        print("Yum")
    }
}

