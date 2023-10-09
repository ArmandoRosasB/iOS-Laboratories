import UIKit

// Factorial

func iterative_factorial(_ n: Int) -> Int {
    var result: Int = 1
    
    for i in 1...n{
        result *= i
    }
    
    return result
}

func recursive_factorial(_ n: Int) -> Int {
    if (n <= 0) {return 1}
    
    if (n < 2) {return n}
    
    else {return n * recursive_factorial(n - 1)}
}

print(iterative_factorial(10))
print(recursive_factorial(10))


func caesar_cipher (_ cadena: String, _ shift: Int) -> String {
    var hashed: String = ""
    
    for c in cadena.utf8 {
        if (Int(c) + shift > 122){ hashed += String(Character(UnicodeScalar(Int(97 + (Int(c) + shift) % 123))!))}
        else {hashed += String(Character(UnicodeScalar(Int((Int(c) + shift)))!))}
    }
    
    
    return hashed
}

print(caesar_cipher("xyz", 3))
