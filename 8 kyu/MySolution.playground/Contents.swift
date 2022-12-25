import Foundation

// My solution tasks from  - CodeWars 🦉



//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣
//Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total. Write a code that gives out the total amount for different days(d).
func RentalCarCost(_ days: Int) -> Int {
let x = 40
 var y = 0
  if days == 0 {
    y = 0
  } else if days <= 2 {
    y = days * x
  } else if days <= 6 {
    y = days * x - 20
  } else if days >= 7 {
    y = days * x - 40
  }
  return y
}

RentalCarCost(7)
// 🔥 Best 🔥
func RentalCarCost_1(_ days: Int) -> Int {
    return days * 40 - (days >= 3 ? (days >= 7 ? 50 : 20) : 0)  // twice ternar
}
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 2️⃣
//Very simple, given an integer or a floating-point number, find its opposite.
func opposite(number: Double) -> Double {
  return  number - number * 2
}
opposite(number: -34)

// 🔥 Best 🔥
func opposite_1(number: Double) -> Double {
  return  -number
}
opposite_1(number: -34)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 3️⃣
//Clock shows h hours, m minutes and s seconds after midnight.
//Your task is to write a function which returns the time since midnight in milliseconds.
func past(_ h: Int, _ m: Int, _ s: Int) -> Int {

    return (h * 3_600_000) + (m * 60_000) + (s * 1_000)
}
past(0, 1, 1)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 4️⃣
//Given an array of integers, return a new array with each value doubled.
func maps(a : Array<Int>) -> Array<Int> {
    var temp = [Int]()
    for item in a {
        temp.append(item * 2)
    }
    return temp
}
// 🔥 Best 🔥
func maps_1(a : Array<Int>) -> Array<Int> {
    return a.map { $0 * 2 }
}
maps_1(a: [1,3,5,7,9])
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 5️⃣
//Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.
func summation(_ n: Int) -> Int {
    var summ = 0
    for item in 0...n {
        summ += item
    }
    return summ
}
// 🔥 Best 🔥
func summation_1(_ n: Int) -> Int {
     n * (n + 1) / 2
}
summation_1(213)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 6️⃣
//You get an array of numbers, return the sum of all of the positives ones.
func sumOfPositives (_ numbers: [Int] ) -> Int {
  var x = 0
  for item in numbers {
    if item > 0 {
      x += item
    }
  }
    return x
}
// 🔥 Best 🔥
func sumOfPositives_1 (_ numbers: [Int] ) -> Int {
    return numbers.filter{ $0 > 0 }.reduce(0, +)
}
sumOfPositives_1([1,2,3,-5,4])
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 7️⃣
// Norm of bady weight
func bmi(_ weight: Int, _ height: Double) -> String {
  var bmi = Double(weight) / ( pow(height, 2) ) // возведенее в степень
  var norm = ""
  
    if bmi <= 18.5 {
        norm = "Underweight"
       } else if bmi <= 25.0 {
        norm = "Normal"
      } else if bmi <= 30.0 {
        norm = "Overweight"
      } else if bmi > 30 {
        norm = "Obese"
      }
  return norm
}
bmi(50, 1.50)
// 🔥 Best 🔥
func bmi1(_ weight: Int, _ height: Double) -> String {

    switch Double(weight) / pow(height, 2) {
        
    case ...18.5: return "Underweight"
    case ...25.0: return "Normal"
    case ...30.0: return "Overweight"
    default: return "Obese"
    }
}
bmi(50, 1.50)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 8️⃣
//Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.
func fakeBin_2(digits: String) -> String {
    
    var x = "" // добовляем прям в строчку
    
    for item in digits {
        if (item < "5") {
            x.append("0")
        } else {
            x.append("1")
        }
    }
    return x
}
fakeBin_2(digits: "5544")
// 🔥 Best 🔥
func fakeBin_1(digits: String) -> String {
    digits.map { $0 < "5" ? "0" : "1" }.joined()
}
fakeBin_1(digits: "5544")
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 9️⃣
//In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.
func findDifference_1(_ a: [Int], _ b: [Int]) -> Int {
    
return abs(a[0] * a[1] * a[2] - b[0] * b[1] * b[2]) // abs tern - on +
    
}
findDifference_1([2, 2, 3], [5, 4, 1])
// 🔥 Best 🔥
func findDifference_2(_ a: [Int], _ b: [Int]) -> Int {
    abs(a.reduce(1,*) - b.reduce(1,*))
}
findDifference_2([2, 2, 3], [5, 4, 1])
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 🔟 ⚡️
//Your task is to find the first element of an array that is not consecutive. If the whole array is consecutive then return null
func firstNonConsecutive (_ arr: [Int]) -> Int? {
    var i: Int?

    return i
}
firstNonConsecutive([1,2,3,4,5,6])
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
//This is an easy twist to the example kata (provided by Codewars when learning how to create your own kata).
//Add the value "codewars" to the array websites/Websites 1,000 times.
// Task 🦉 ➤ 1️⃣1️⃣
var websites = [String]()
func KataTwist_1() {
  for _ in 0...999 {
      websites.append("codewars")
  }
}
KataTwist_1()
// 🔥 Best 🔥
func KataTwist_2() {
  Array(repeating: "codewars", count: 1000)
}
KataTwist_2()
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣2️⃣
//When provided with a number between 0-9, return it in words.
//If your language supports it, try using a switch statement.
func switchItUp(_ number: Int) -> String {
    var answer = "some"
    
    switch number {
    case 0: answer = "Zero"
    case 1: answer = "One"
    case 2: answer = "Two"
    case 3: answer = "Three"
    case 4: answer = "Four"
    case 5: answer = "Five"
    case 6: answer = "Six"
    case 7: answer = "Seven"
    case 8: answer = "Eight"
    case 9: answer = "Nine"
    default : "out of range"
    }
    return answer
}
switchItUp(6)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣3️⃣
//Create a function that takes 2 integers in form of a string as an input, and outputs the sum (also as a string):
func sum_str(_ a:String, _ b:String) -> String {
    
    String( (Int(a) ?? 0) + (Int(b) ?? 0) )

//    let x: Int? = Int(a)
//    let y: Int? = Int(b)
//    let z = (x ?? 0) + (y ?? 0)
//
//    return String(z)
}
sum_str("-", "5")
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣4️⃣
// Build a function that returns an array of integers from n to 1 where n>0.
func reverseSeq_1(n: Int) -> [Int] {
    var array = [5]
    for item in 1..<n {
        array.insert(item, at: 1)
    }
    return array
}
reverseSeq_1(n: 5)
// 🔥 Best 🔥
func reverseSeq_2(n: Int) -> [Int] {
    (1...n).reversed()
}
reverseSeq_2(n: 5)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣5️⃣
//You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
func check_1<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    var some = Bool()

    for item in a {
        if item == x {
            some = true
        }
    }
    return some
}
check_1(["y", "x"], "y")
// 🔥 Best 🔥
func check_2<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    a.contains(x)
}
check_2(["y", "x"], "y")
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣6️⃣
//This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.
func simpleMultiplication_1(_ num: Int) -> Int {
    num % 2 == 0 ? num * 8 : num * 9
}
simpleMultiplication_1(6)
func simpleMultiplication_2(_ num: Int) -> Int { (8 + num % 2) * num }
simpleMultiplication_2(6)
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣7️⃣
//Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
//Return your answer as a number.
func sumMix_1(_ arr: [Any]) -> Int {
    
    var y = [String]()
    var z = [Int]()
    
    for item in arr {
        if let x:String = item as? String {
            y.append(x)
        } else if let y:Int = item as? Int {
            z.append(y)
        }
    }
    return z.reduce(0, +) + y.compactMap { Int($0) }.reduce(0, +)
}
sumMix_1(["1", "5", "8", 8, 9, 9, 2, "3"])
// 🔥 Best 🔥
func sumMix_2(_ arr: [Any]) -> Int {
    arr.reduce(0, { $0 + (Int("\($1)") ?? 0) })
}
sumMix_2(["1", "5", "8", 8, 9, 9, 2, "3"])
//-------------------------------------------------------
let ArrayOne = ["1","3","5","4","4","5"]
let ArrayTwo: [Any] = ["1", "5", "8", 8, 9, 9, 2, "3"]
let some1 = ArrayOne.map { Int($0) }  // different some1? op.
some1
let some2 = ArrayOne.compactMap { Int($0) } // some2!
some2
let some3 = ArrayTwo.compactMap { Int("\($0)") } // !
some3
//-------------------------------------------------------
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣7️⃣
