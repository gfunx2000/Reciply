//
//  ThisWeekData.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/24/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//


// This page contains the information for the current week.

import Foundation

// We will need to pull the data from "next week" into "this week" when the week switches, so that the user's data is saved.

// Information for main schedule view for this week
// Array of the name of each recipe for this week
var thisWeekMeals = ["Blackened Catfish Tacos", "Thai Basil Chicken", "Cheese Ravioli with Lemon Butter Sauce", "Pesto Chicken Pasta", "Parmesan Crusted Tilapia", "Beef Fajitas", "Summer Veggie Curry with Coconut Rice"]

// Array of the main image for each meal for this week
var thisWeekImages = ["1_main.jpg", "2_main.jpg", "3_main.jpg", "4_main.jpg", "5_main.jpg", "6_main.jpg", "7_main.jpg"]

// Array of booleans for if user is cooking each meal this week. True = They are cooking. False = They have selected not to cook
// All are set to True by default
var thisWeekIsCooking = [true, true, true, true, true, true, true]



// Data for detail view of each meal for this week
// thisWeekPrepTimeArray

// thisWeekCookTimeArray

// thisWeekServingsArray (all default except for user changes)

// thisWeekDescriptionArray




