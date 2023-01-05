//
//  TDDTests.swift
//  TDDTests
//
//  Created by Corey Edh on 1/5/23.
//

import XCTest
@testable import TDD

final class TDDTests: XCTestCase {

    var tdd: TDD?
    
    override func setUpWithError() throws {
        
        tdd = TDD()

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {

    }
    
    func test_addElement(){

        tdd?.addElement(2)
        
        XCTAssertEqual(1, tdd?.array.count)

    }
    
    func test_addAll(){
        tdd?.addAll([1,2,3])
        XCTAssertEqual(3, tdd?.array.count)
    }
    
    
    func test_findMax(){
        XCTAssertEqual(nil, tdd?.findMax())
        
         tdd?.addAll([1,7,23,5,78,234,3])
         XCTAssertEqual(234, tdd?.findMax())
    }
    
    func test_findMin(){
        tdd?.addAll([1,7,23,5,78,234,3])
        XCTAssertEqual(1, tdd?.findMin())
    }
    
    func test_deleteElement(){

        tdd?.addAll([1,7,23,5,78,234,3])
        tdd?.deleteElement(atIndex: 0)
        XCTAssertEqual(3, tdd?.findMin())
        
        
    }
    
    func test_isExist(){
        tdd?.addAll([1,7,23,5,78,234,3])
        XCTAssertEqual(true, tdd?.isExist(element: 5))
        
       
        XCTAssertEqual(false, tdd?.isExist(element: 99))
    }
    
    
    
    func test_sum() throws{
        let result = tdd?.sum(a: 5, b: 5)
        XCTAssertEqual(result, 10)
    
        let aIsNil = tdd?.sum(a: nil, b: 5)
        XCTAssertEqual(aIsNil, nil)
        
        let bIsNil = tdd?.sum(a: 5, b: nil)
        XCTAssertEqual(bIsNil, nil)
        
        let bothAreNil = tdd?.sum(a: nil, b: nil)
        XCTAssertEqual(bothAreNil, nil)
        
        
    }
    
    
    func test_multiply() throws{
        let result = tdd?.multiply(a: 5, b: 5)
        XCTAssertEqual(result, 25)
    
        let aIsNil = tdd?.multiply(a: nil, b: 5)
        XCTAssertEqual(aIsNil, nil)
        
        let bIsNil = tdd?.multiply(a: 5, b: nil)
        XCTAssertEqual(bIsNil, nil)
        
        let bothAreNil = tdd?.multiply(a: nil, b: nil)
        XCTAssertEqual(bothAreNil, nil)
        
    }
    
    
    func test_divide() throws{
        let result = tdd?.divide(a: 5, b: 5)
        XCTAssertEqual(result, 1)
    
        let aIsNil = tdd?.divide(a: nil, b: 5)
        XCTAssertEqual(aIsNil, nil)
        
        let bIsNil = tdd?.divide(a: 5, b: nil)
        XCTAssertEqual(bIsNil, nil)
        
        let bothAreNil = tdd?.divide(a: nil, b: nil)
        XCTAssertEqual(bothAreNil, nil)
        
        let divideByZero = tdd?.divide(a: 5, b: 0)
        XCTAssertEqual(divideByZero, nil)
        
        let divideZero = tdd?.divide(a: 0, b: 5)
        XCTAssertEqual(divideZero, 0)

    }
    
    func test_subtract() throws{
        
        let result = tdd?.subtract(a: 5, b: 5)
        XCTAssertEqual(result, 0)
    
        let aIsNil = tdd?.subtract(a: nil, b: 5)
        XCTAssertEqual(aIsNil, nil)
        
        let bIsNil = tdd?.subtract(a: 5, b: nil)
        XCTAssertEqual(bIsNil, nil)
        
        let bothAreNil = tdd?.subtract(a: nil, b: nil)
        XCTAssertEqual(bothAreNil, nil)
        
    }
    
    func test_areaOfCircle() throws{
        guard let result = tdd?.areaOfCircle(radius: 2) else{
            XCTFail()
            return
        }
        XCTAssertEqual(result, 12.56637, accuracy: 0.90)
        
        
        let radiusIsZero = tdd?.areaOfCircle(radius: 0)
        XCTAssertEqual(radiusIsZero, nil)
        
        
    }
    
    
    func test_findPerimeter() throws{
        let results = tdd?.findPerimeter(sides: [10,10,10,10])
        XCTAssertEqual(results, 40.0)
        
        let noSides = tdd?.findPerimeter(sides: nil)
        
        XCTAssertEqual(noSides, nil)
        
    }
    
    
    
    func test_findInterest() throws{
        let result = tdd?.simpleInterest(P: 100.0, t: 10, r: 0.05)
        XCTAssertEqual(result, 150)
        
        let pIsNil = tdd?.simpleInterest(P: nil, t: 10, r: 0.05)
        XCTAssertEqual(pIsNil, nil)
        
        let tIsNil = tdd?.simpleInterest(P: 100.0, t: nil, r: 0.05)
        XCTAssertEqual(tIsNil, nil)
        
        let rIsNil = tdd?.simpleInterest(P: 100.0, t: 10, r: nil)
        XCTAssertEqual(rIsNil, nil)
        
    }
    
    func test_FizzBuzz() throws{
        
    
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }


}
