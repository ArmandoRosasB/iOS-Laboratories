import UIKit

// Arreglos
var week_days: [String] = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]

print(week_days.count)

var numbers: [Int] = [Int]()
numbers.append(0)
numbers.insert(1, at: 1)

// Recorriendo arrays
for day in week_days {
    print(day, terminator: " ")
}
print("\n")

for i in 0..<week_days.count {
    print("La posicion \(i) contiene el valor \(week_days[i])")
}

print("\n")
// Diccionarios
let empty_dict: [String: Int] = [:]

let interesting_series: [String : [Int]] = [
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Prime": [2, 3, 5, 7, 11, 13],
    "Square": [1, 4, 9, 16, 25]
]

var largest: Int = 0

for(_, numbers) in interesting_series {
    for number in numbers {
        largest = (number > largest) ? number : largest
    }
}
 
print(largest)
print("")

// Tuplas

let http404error = (404, "Not Found")

let (status_code, status_message) = http404error

print("The status code is \(status_code)")
print("The status message is \(status_message)")

print("")

print("The status code is \(http404error.0)")
print("The status message is \(http404error.1)")

print("")

let http200status = (status_code: 200, description: "OK")

print("The status code is \(http200status.status_code)")
print("The status message is \(http200status.description)")
