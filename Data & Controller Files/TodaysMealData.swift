//
//  TodaysMealData.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/24/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

// This page is the source of all the data for the current day's recipe
// It contains the recipe information, the text for the recipe steps, and the names of the recipe images.

import Foundation

// All of these vars should be pulled from the database
// This is the information that is displayed on the today page, which is the first page the user is taken to when the app loads
// It is the current day's recipe information
var recipeName = "Blackened Catfish Tacos"
var recipePicture = "1_main.jpg"
var prepTime = 20
var cookTime = 5
var todaysServings = defaultServings
var recipeDescription = "Today’s recipe puts a Southern twist on tacos. The blackening powder gives the catfish a subtle kick. The lime and garlic crema is simple and it balances out the kick of the fish. We recommend fresh cooked corn tortillas if you can get your hands on them, but if not – any kind of taco or tortilla will do.\n\nIf you have a cast iron pan, you’re going to want to get it out for this – it’s the secret to the best blackened catfish – but if you don’t, any old pan will work. Whatever type you use, get it as hot as you can. Whenever you think it’s hot enough, get it even hotter! \n\nOnce the fish is cooked throw it all together and enjoy. Watch out, this dinner can get messy! Share your pictures afterwards – we’re looking for the people who managed to get messiest while eating. Enjoy!"


// This array needs to be pulled from the database instead of filled in here.
// This is the array that has the text for each of the steps in Today's Recipe
let contentWords = ["Cover both sides of catfish with blackening powder and set aside for 20 minutes",
                    "Zest lime with grater and cut garlic into small pieces",
                    "Mix lime zest, garlic, the juice from the lime, and  the sour cream in a bowl to make a crema",
                    "Cut lettuce and tomatoes into pieces and set aside",
                    "Heat cast iron (or other kind if you don't have one) pan as hot as possible",
                    "Add catfish to pan",
                    "Cook for 1-2 minutes until bottom is blackened",
                    "Flip the fish over and cook for another 1-2 minutes on that side",
                    "Fish should be opaque inside",
                    "Turn off the heat to the pan and add the tortillas to warm them",
                    "Break fish into pieces and put on the tortillas",
                    "Add crema, lettuce, and tomato. Serve"]


// This array needs to be pulled from the database instead of filled in here.
// These are the names for the images for Today's Recipe steps
let contentImages = ["1_1", "1_2", "1_3", "1_4", "1_5", "1_6", "1_7", "1_8", "1_9", "1_10", "1_11", "1_12"]


////  There's probably a better way to do this...
// Ingredients for Today's Recipe
// let ingredientsForToday = []
// let ingredientQuantityforToday = []
// let ingredientUnitsForToday = []
