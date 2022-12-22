import Foundation

// My solution tasks from  - CodeWars


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

    if arr.count == arr.endIndex  && arr.reduce(0, +) == arr.count / arr.endIndex  {
        i = nil
    } else {
        
    }
    return i
}
firstNonConsecutive([1,2,3,4,5,6])
// 🔥 Best 🔥


//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
