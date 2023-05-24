//
//  StoryTests.swift
//  Destini-iOS13
//
//  Created by Ben Zuke on 5/24/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//
//  File tests the functionality of Story struct
//

import XCTest
@testable import Destini_iOS13

final class StoryTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
            let story = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice1Destination: 2, choice2: "Take a right.", choice2Destination: 1)
            
            XCTAssertEqual(story.title, "You see a fork in the road.")
            XCTAssertEqual(story.choice1, "Take a left.")
            XCTAssertEqual(story.choice1Destination, 2)
            XCTAssertEqual(story.choice2, "Take a right.")
            XCTAssertEqual(story.choice2Destination, 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
