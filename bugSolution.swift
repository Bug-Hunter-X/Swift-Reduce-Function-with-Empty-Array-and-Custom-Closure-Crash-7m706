let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0, +)

print(sum) // Output: 15

//This is fine, but what if numbers is empty?

let emptyNumbers: [Int] = []

let emptySum = emptyNumbers.reduce(0, +) 

print(emptySum) //Output: 0

//This is also fine, but the following is not recommended

let anotherEmptyNumbers: [Int] = []

let anotherEmptySum = anotherEmptyNumbers.reduce(10, +)

print(anotherEmptySum) // Output: 10

//The following will cause a runtime error if the array is empty

let yetAnotherEmptyNumbers: [Int] = []

//Solution: Check for empty array before applying reduce
if !yetAnotherEmptyNumbers.isEmpty {
    let yetAnotherEmptySum = yetAnotherEmptyNumbers.reduce(0){ $0 + $1 }
    print(yetAnotherEmptySum) 
} else {
    print("Array is empty. Reduce operation skipped.")
}

//Alternative solution using the nil coalescing operator
let alternativeEmptySum = yetAnotherEmptyNumbers.reduce(0, +) ?? 0
print(alternativeEmptySum) //Output: 0