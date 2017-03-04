//
//  NextWeekData.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/24/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//


// This page contains the information for the next week.

import Foundation

// We will need to push this data into "this week" when the week switches, so that the user's data is saved and then refill this with the new "this week" data

// Information for main schedule view for next week
// Array of the name of each recipe for next week
var nextWeekMeals = ["Asiago Chicken Pasta", "Braised Beef", "Broccoli Chicken Pizza", "Honey Garlic Shrimp", "Mediterranean Chicken", "Lentil, Cilantro, and Lime Tacos", "Mahi Mahi with Mango Salsa"]

// Array of the main image for each meal for next week
var nextWeekImages = ["8_main.jpg,", "9_main.jpg", "10_main.jpg", "11_main.jpg", "12_main.jpg", "13_main.jpg", "14_main.jpg"]

// Array of booleans for if user is cooking each meal next week. True = They are cooking. False = They have selected not to cook
// All are set to True by default
var nextWeekIsCooking = [true, true, true, true, true, true, true] // Should this be a userDefault to save to user's phone or push to database? Or both?



// Data for detail view of each meal for this week
// thisWeekPrepTimeArray

// thisWeekCookTimeArray

// thisWeekServingsArray (all default except for user changes)

// thisWeekDescriptionArray





