import UIKit
import Foundation


//: implementation of Karatsuba multiplication algorithm

//: x.y = 10ᴺ ac + 10ⁿ⁰⁵ (ad+bc) + bd
func calc(num1 num1:Int,num2:Int) -> Int {
    var aPart = String(num1)
    var bPart = String(num1)
    var cPart = String(num2)
    var dPart = String(num2)
    let n:Int = aPart.characters.count
    
    aPart.removeRange(aPart.startIndex.advancedBy(aPart.characters.count/2)..<aPart.endIndex)
    bPart.removeRange(bPart.startIndex..<bPart.endIndex.advancedBy(-bPart.characters.count/2))
    cPart.removeRange(cPart.startIndex.advancedBy(cPart.characters.count/2)..<cPart.endIndex)
    dPart.removeRange(dPart.startIndex..<dPart.endIndex.advancedBy(-dPart.characters.count/2))
    
    let a:Int = Int(aPart)!
    let b:Int = Int(bPart)!
    let c:Int = Int(cPart)!
    let d:Int = Int(dPart)!
    
    let ac      = (Int(pow(Double(10),Double(n)))*a*c)
    let adbc    = (Int(pow(Double(10),Double(n/2)))*((a*d)+(b*c)))
    let result  =  ac + adbc + (b*d)
 
    return result
}

calc(num1: 1234, num2: 5678)
