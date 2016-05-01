//
//  Meal.swift
//  FoodTracker
//
//  Created by Elijah Parkhurst on 5/1/16.
//  Copyright © 2016 Elijah Parkhurst. All rights reserved.
//

import UIKit

class Meal{
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initializer
    
    init?(name:String, photo:UIImage?, rating:Int){
        //Initialize stored properities
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0{
            return nil
        }
    }
    
}
