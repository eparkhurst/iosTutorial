//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Elijah Parkhurst on 4/28/16.
//  Copyright © 2016 Elijah Parkhurst. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    //MARK: Food Tracker Tests
    
    func testMealInitialization(){
        let potentialItem = Meal(name:"New Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        let noNameItem = Meal(name:"",photo: nil, rating:0)
        XCTAssertNil(noNameItem, "Empty Name is Invalid")
        
        let noRating = Meal(name:"hey",photo: nil, rating:-1)
        XCTAssertNil(noRating, "Rating must be positive")
    }
    
}
