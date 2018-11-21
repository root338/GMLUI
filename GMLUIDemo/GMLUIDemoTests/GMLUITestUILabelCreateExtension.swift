//
//  GMLUITestUILabelCreateExtension.swift
//  GMLUIDemoTests
//
//  Created by apple on 2018/11/21.
//  Copyright © 2018 apple. All rights reserved.
//

import XCTest

class GMLUITestUILabelCreateExtension: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testCreateLabel() {
        let font = UIFont.systemFont(ofSize: 14)
        let textColor = UIColor.black
        let text = "test text"
        let textAlignment = NSTextAlignment.right
        let lineBreakMode = NSLineBreakMode.byClipping
        
        let label = UILabel.init(font: font, textColor: textColor, text: text)
        let label2 = UILabel.init(textAlignment: textAlignment, lineBreakMode: lineBreakMode, font: font, textColor: textColor, text: text)
        
        XCTAssertEqual(label.font, font)
        XCTAssertEqual(label.textColor, textColor)
        XCTAssertEqual(label.text, text)
        
        XCTAssertEqual(label2.font, font)
        XCTAssertEqual(label2.textColor, textColor)
        XCTAssertEqual(label2.text, text)
        XCTAssertEqual(label2.textAlignment, textAlignment)
        XCTAssertEqual(label2.lineBreakMode, lineBreakMode)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
