//
//  GMLUITestViewAddExtension.swift
//  GMLUIDemoTests
//
//  Created by apple on 2018/11/21.
//  Copyright © 2018 apple. All rights reserved.
//

import XCTest

class GMLUITestViewAddExtension: XCTestCase {
    
    var testView : UIView!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testView = UIView.init()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testframe() {
        
        let frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        
        testView.gml_x = frame.minX
        XCTAssertEqual(testView.gml_x, frame.minX)
        
        testView.gml_y = frame.minY
        XCTAssertEqual(testView.gml_y, frame.minY)
        
        testView.gml_width = frame.width
        XCTAssertEqual(testView.gml_width, frame.width)
        
        testView.gml_height = frame.height
        XCTAssertEqual(testView.gml_height, frame.height)
        
        let frame3 = CGRect.init(x: 234, y: 345, width: 456, height: 567)
        testView.gml_midX = frame3.midX
        XCTAssertEqual(testView.gml_midX, frame3.midX)
        
        testView.gml_midY = frame3.midY
        XCTAssertEqual(testView.gml_midY, frame3.midY)
        
        let frame2 = CGRect.init(x: 145, y: 138, width: 340, height: 123)
        testView.frame = CGRect.zero
        
        testView.gml_origin = frame2.origin
        XCTAssertEqual(testView.gml_origin, frame2.origin)
        
        testView.gml_size = frame2.size
        XCTAssertEqual(testView.gml_size, frame2.size)
        
        let frame4 = CGRect.init(x: 98, y: 87, width: 76, height: 65)
        
        testView.gml_center = CGPoint.init(x: frame4.midX, y: frame4.midY)
        XCTAssertEqual(testView.gml_center, testView.center)
        
        testView.gml_frame = frame4
        XCTAssertEqual(testView.gml_frame, frame4)
        
    }
    
    func testLayerProperties() {
        
        let borderColor     = UIColor.black
        let borderWidth     = CGFloat(1)
        testView.gml_set(borderColor: borderColor, borderWidth: borderWidth)
        XCTAssertEqual(testView.layer.borderColor, borderColor.cgColor)
        XCTAssertEqual(testView.layer.borderWidth, borderWidth)
        
        let borderColor2    = UIColor.blue
        let borderWidth2    = CGFloat(1.5)
        let cornerRadius2   = CGFloat(12.5)
        testView.gml_set(borderColor: borderColor2, borderWidth: borderWidth2, cornerRadius: cornerRadius2)
        
        
        let cornerRadius3           = CGFloat(40)
        let borderColor3            = UIColor.white
        let borderWidth3            = CGFloat(3);
        
        testView.gml_cornerRadius   = cornerRadius3
        XCTAssertEqual(testView.gml_cornerRadius, testView.layer.cornerRadius)
        XCTAssertEqual(testView.layer.cornerRadius, cornerRadius3)
        
        testView.gml_borderColor    = borderColor3.cgColor
        XCTAssertEqual(testView.gml_borderColor, testView.layer.borderColor)
        XCTAssertEqual(testView.gml_borderColor, borderColor3.cgColor)
        
        testView.gml_borderWidth    = borderWidth3
        XCTAssertEqual(testView.gml_borderWidth, testView.layer.borderWidth)
        XCTAssertEqual(testView.gml_borderWidth, borderWidth3)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
