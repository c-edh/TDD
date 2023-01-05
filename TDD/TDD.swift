//
//  TDD.swift
//  TDD
//
//  Created by Corey Edh on 1/5/23.
//

import Foundation

struct TDD{
    func sum(a: Int?, b: Int?) -> Int? {
        guard let a = a, let b = b else{
            return nil
        }
        return a+b
    }
    
    func multiply(a: Int?, b: Int?) -> Int? {
        guard let a = a, let b = b else{
            return nil
        }
        return a*b
    }
    
    func divide(a: Int?, b: Int?) -> Int? {
        guard let a = a, let b = b else{
            return nil
        }
        if b == 0{
            return nil
        }
        return a/b
    }
    
    func subtract(a: Int?, b: Int?) -> Int? {
        guard let a = a, let b = b else{
            return nil
        }
        
        return a-b
    }
    
    func areaOfCircle(radius: Double?)->Double?{
        guard let radius = radius else{
            return nil
        }
        if radius == 0{
            return nil
        }
        
        
        return 3.14*(pow(radius, 2))
    }
    
    func findPerimeter(sides:[Double]?) -> Double?{
        guard let sides = sides else{
            return nil
        }
        var perimeter: Double = 0.0
        for side in sides{
            perimeter += side
        }
        
        return perimeter
    }
    
    func simpleInterest(P:Double?, t:Int?,r:Double?)->Double?{
        guard let P = P, let t = t, let r = r else{
            return nil
        }
        
        return P*(1+(r*Double(t)))
        
        
    }
    
    
    var array: [Int] = []
    
    mutating func addElement(_ element: Int){
        if isExist(element: element){
            return
        }else{
            array.append(element)
            
            self.array = mergesort(array: self.array)
 
        }
    }
    
    

    
    mutating func addAll(_ elements: [Int]){
        for element in elements {
            addElement(element)
        }

    }
    
    

    func findMax() -> Int?{
        return array.last
        
    }

    func findMin() -> Int?{
        return array.first
    }
    
    mutating func deleteElement(atIndex index: Int){
        array.remove(at: index)
    }
    
    
    func isExist(element: Int) -> Bool{
        return array.contains(element)
    }
    
    
    //MARK: - Sorting
    
    func mergesort(array: [Int]) ->[Int]{
        
        if array.count < 2{
            return array
        }
        
        let leftArray: [Int] = Array(array[0..<array.count/2])
        let rightArray: [Int] = Array(array[array.count/2..<array.count])
        
        return merge(arrayLeft: mergesort(array: leftArray),
                     arrayRight: mergesort(array: rightArray))
    }
    
    private func merge(arrayLeft a: [Int], arrayRight b: [Int]) -> [Int]{
        
        var mergeArray: [Int] = []
        var left = a
        var right = b
        
        while left.count > 0 && right.count > 0{
            if left.first! < right.first!{
                mergeArray.append(left.removeFirst())
            }else{
                mergeArray.append(right.removeFirst())
            }
        }
        
        return mergeArray + left + right
    }
    
    
    
    
    
    
}
