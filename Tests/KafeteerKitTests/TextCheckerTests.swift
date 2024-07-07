//
//  TextCheckerTests.swift
//  
//
//  Created by Oscar De Moya on 7/07/24.
//

import XCTest
@testable import KafeteerKit

final class TextCheckerTests: XCTestCase {

    func testExtractAmountData_withDotDecimalSeparator() throws {
        let string = "This is a sample of $1,999.99 for something"
        let data = TextChecker.amountData(from: string)
        print(data.amount)
        XCTAssert(data.amount == 1999.99)
    }
    
    func testExtractAmountData_withDotDecimalSeparator_atEndOfString() throws {
        let string = "This is a sample of $1,999.99"
        let data = TextChecker.amountData(from: string)
        print(data.amount)
        XCTAssert(data.amount == 1999.99)
    }
    
    func testExtractAmountData_withCommaDecimalSeparator() throws {
        let string = "This is a sample of $1.999,99 for something"
        let data = TextChecker.amountData(from: string)
        print(data.amount)
        XCTAssert(data.amount == 1999.99)
    }
    
    func testExtractAmountData_withCommaDecimalSeparator_atEndOfString() throws {
        let string = "This is a sample of $1.999,99"
        let data = TextChecker.amountData(from: string)
        print(data.amount)
        XCTAssert(data.amount == 1999.99)
    }

}
