func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

let area = calculateArea(width: 10, height: 5) // Correct usage
print(area) // Output: 50

//Handling potential errors using optional values and type checking
func calculateAreaSafe(width: Int, height: String?) -> Int? {
    guard let heightInt = Int(height ?? "0") else { return nil }
    return width * heightInt
}

let area3 = calculateAreaSafe(width: 10, height: "5")
print(area3 ?? 0) //Output 50

let area4 = calculateAreaSafe(width: 10, height: "abc")
print(area4 ?? 0) // Output: 0