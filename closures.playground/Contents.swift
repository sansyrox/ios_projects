import UIKit

//func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
//    return operation(n1,n2)
//}
//
//
////calculator(n1: 2, n2: 3, operation: { (no1,no2) in no1 * no2 })
//
////calculator(n1: 2, n2: 3, operation: { (no1: Int,no2: Int) -> Int in
////    
////    return no1 * no2 })
//
////let result = calculator(n1: 2, n2: 3, operation: {$0 * $1})
//
////let result = calculator(n1: 2, n2: 3) {$0 * $1}
//
////print(result)



let array = [6,2,3,9,4,1]



array.map({ (n1) in n1 + 1 })

array.map({$0 + 1})
