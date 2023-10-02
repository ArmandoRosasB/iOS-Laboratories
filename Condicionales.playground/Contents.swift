import UIKit

//Condicionales

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var result = add(3, 7)

if (result > 5){
    print("El resultado es mayor que 5")
}

var my_name: String = "Armando"

if (my_name == "Armando"){
    print("Se llama Armando")
} else {
    print("No se llama Armando")
}

var animal: String = "cat"

if (animal == "dog"){
    print("Es un perro")
} else if (animal == "cat"){
    print("Es un gato")
} else if (animal == "bird"){
    print("Es un pájaro")
} else {
    print("Es otro animal")
}

var color: String = "naranja"

if (animal == "cat" && color == "naranja"){
    print("Es un gato naranja")
}

if (animal == "cat" || animal == "dog"){
    print("Es un gato o un perro")
}

// Variables opcionales

var optional_string: String? = "Hello"
print(optional_string == nil) // false

var optional_name : String? = "John Applesed"
var greeting : String? = "Hello"

// Cambia el greeting si optional_name existe
if let name = optional_name {
    greeting = "Hello \(name)"
}

print(greeting)

// Manejo de valores opcionales
let nickname : String? = nil
let default_name: String = "John Appleseed"

let informal_greeting: String = "Hi \(nickname ?? default_name)"
print(informal_greeting)


// Sentencia Switch

func get_month(_ month: Int) {
    switch month {
        case 1:
            print("Enero")
        case 2:
            print("Febrero")
        case 3:
            print("Marzo")
        case 4:
            print("Abril")
        case 5:
            print("Mayo")
        case 6:
            print("Junio")
        case 7:
            print("Julio")
        case 8:
            print("Agosto")
        case 9:
            print("Septiembre")
        case 0:
            print("Octubre")
        case 11:
            print("Noviembre")
        case 12:
            print("Diciembre")
        default:
            print("No corresponde a ningún mes del año")
    }
}
func get_quarter(_ month: Int) {
    switch month{
        case 1, 2, 3:
            print("Primer trimestre del año")
        case 4, 5, 6:
            print("Segundo trimestre del año")
        case 7, 8, 9:
            print("Tercer trimestre del año")
        case 10, 11, 12:
            print("Cuarto trimestre del año")
        default:
            print("No corresponde a ningún trimestre")
    }
    
}

func get_semester(_ month: Int) {
    switch month{
        case 1...6:
            print("Primer semestre")
        case 7...12:
            print("Segundo semestre")
        default:
            print("No corresponde a ningún semestre")
    }
        
}

get_month(2)
get_quarter(2)
get_semester(2)
