//
//  StoryBrainTests.swift
//  Destini-iOS13Tests
//
//  Created by Ben Zuke on 5/24/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import XCTest
@testable import Destini_iOS13

final class StoryBrainTests: XCTestCase {

    let storyBrain = StoryBrain()
    
    override func setUpWithError() throws {
        // Create a story
        
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        

        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    // check story step
    func testStep() throws {
        let story = storyBrain.getStoryStep()
        
        XCTAssertTrue(story.title.hasPrefix("Your car has blown"))
        XCTAssertEqual(story.choice1, "I'll hop in. Thanks for the help!")
        XCTAssertEqual(story.choice2, "Better ask him if he's a murderer first.")
        
    }
    
    func testNextStep() throws {
        
        var tempBrain = storyBrain
        
        tempBrain.nextStory("choiceOne") // nextStory() always only has two inputs, how do I test for this??
        
        let story = tempBrain.getStoryStep()
        
        XCTAssertTrue(story.title.hasPrefix("As you begin to drive"))
        XCTAssertEqual(story.choice1, "I love Elton John! Hand him the cassette tape.")
        XCTAssertEqual(story.choice2, "It's him or me! You take the knife and stab him.")
        
        var tempBrain2 = storyBrain
        tempBrain2.nextStory("choiceTwo")
        
        let story2 = tempBrain2.getStoryStep()
        
        XCTAssert(story2.title.hasPrefix("He nods slowly"))
        XCTAssert(story2.choice1.hasPrefix("At least he's honest"))
        XCTAssert(story2.choice2.hasPrefix("Wait, I know how to"))
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
