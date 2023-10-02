import UIKit

// Declaración de funciones
func show_my_name(){
    print("Me llamo Armando")
}

func show_my_last_name(){
    print("Mi apellido es Rosas")
}

func show_my_age(){
    print("Tengo 20 años")
}

func show_my_info(_ name: String, _ last_name: String, _ age: Int){
    print("Me llamo \(name) \(last_name) y tengo \(age) años")
}

show_my_name()
show_my_last_name()
show_my_age()

show_my_info("Armando", "Rosas", 20)


func add (_ a: Int, _ b: Int) -> Int{
    return a + b
}

var result = add(2, 8)
print(result)


// Paso por referencia

func swap(_ a: inout Int, _ b: inout Int) {
    var aux: Int = a
    a = b
    b = aux
}

var a: Int = 5
var b: Int = 10

print("Valor de a: \(a)")
print("Valor de b: \(b)")

swap(&a, &b)

print("\nValor de a: \(a)")
print("Valor de b: \(b)")

// Closure

let concatenar = { (a: String, b: String) -> String in
    return ("\(a) \(b)")
}

print(concatenar("Buenas", "noches"))

