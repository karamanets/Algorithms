import Foundation

// My solution tasks from  - CodeWars

//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌
// Task 🦉 ➤ 1️⃣
//Return an array/list where Even numbers come first then odds. Then Even numbers in ascending order While odds in descending .
func menFromBoys_1(_ arr: [Int]) -> [Int] {
  
    var man = [Int]()
    var boy = [Int]()
    var answer = [Int]()

    arr.map { $0 < 0 && $0 % 2 == 0 || $0 > 0 && $0 % 2 == 0 ? man.append($0) : boy.append($0) }
    var combo = man.sorted() + boy.sorted(by: >)
    
    for item in combo {
        if !answer.contains(item) {
            answer.append(item)
        }
    }
  return answer
}
menFromBoys_1([-1, 0, -3, 0, 12, 99, 2, -5, -4, 33, 34, 44, 55, 32, 48, 77, -1, -12, 22, 13, 3, 7, 2, 17])
// 🔥 Best 🔥
func menFromBoys_2(_ arr: [Int]) -> [Int] {
    let men: [Int] = Array(Set(arr.filter{ $0 % 2 == 0 })).sorted()
    let boys: [Int] = Array(Set(arr.filter{ $0 % 2 != 0 })).sorted(by: >)
    return men + boys
}
menFromBoys_2([-1, 0, -3, 0, 12, 99, 2, -5, -4, 33, 34, 44, 55, 32, 48, 77, -1, -12, 22, 13, 3, 7, 2, 17])
//📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌📌

