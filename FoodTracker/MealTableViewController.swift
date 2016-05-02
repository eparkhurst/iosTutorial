//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Elijah Parkhurst on 5/1/16.
//  Copyright © 2016 Elijah Parkhurst. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    //MARK: Properties
    
    var meals = [Meal]()
    
    func loadSampleMeal(){
        let photo1 = UIImage(named : "Meal1")
        let meal1 = Meal(name:"salad", photo:photo1, rating:3)!
        
        let photo2 = UIImage(named : "Meal2")
        let meal2 = Meal(name:"other thing", photo:photo2, rating:4)!

        let photo3 = UIImage(named : "Meal3")
        let meal3 = Meal(name:"tasty", photo:photo3, rating:5)!

        meals += [meal1,meal2,meal3]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleMeal()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return meals.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "MealTableViewCell"                
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MealTableViewCell
        
        let meal = meals[indexPath.row]
        
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating

        
        return cell
    }
    
    @IBAction func unwindToMealList(sender:UIStoryboardSegue){
        
        if let sourceViewController = sender.sourceViewController as?
            MealViewController, meal = sourceViewController.meal{
            
            let newIndexPath = NSIndexPath(forRow: meals.count, inSection: 0)
            
            meals.append(meal)
            
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
            
        }
        
    }

}
