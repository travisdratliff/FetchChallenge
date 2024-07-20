//
//  DessertModel.swift
//  FetchChallenge
//
//  Created by Travis Domenic Ratliff on 7/16/24.
//

import Foundation
import Observation
import SwiftUI


struct FoodModel: Decodable, Hashable {
    var strMeal: String
    var strMealThumb: String
    var idMeal: String
}

struct FoodDetailModel: Decodable, Hashable {
    var idMeal: String
    var strMeal: String
    var strDrinkAlternate: String?
    var strCategory: String?
    var strArea: String?
    var strInstructions: String?
    var strMealThumb: String?
    var strTags: String?
    var strYoutube: String?
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    var strIngredient16: String?
    var strIngredient17: String?
    var strIngredient18: String?
    var strIngredient19: String?
    var strIngredient20: String?
    var strMeasure1: String?
    var strMeasure2: String?
    var strMeasure3: String?
    var strMeasure4: String?
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    var strMeasure10: String?
    var strMeasure11: String?
    var strMeasure12: String?
    var strMeasure13: String?
    var strMeasure14: String?
    var strMeasure15: String?
    var strMeasure16: String?
    var strMeasure17: String?
    var strMeasure18: String?
    var strMeasure19: String?
    var strMeasure20: String?
    var strSource: String?
    var strImageSource: String?
    var strCreativeCommonsConfirmed: String?
    var dateModified: String?
}

struct Food: Decodable {
    var meals = [FoodModel]().sorted { $0.strMeal < $1.strMeal }
}

struct FoodDetails: Decodable {
    var meals = [FoodDetailModel]()
}

enum Category: String, CaseIterable {
    case beef = "Beef"
    case breakfast = "Breakfast"
    case chicken = "Chicken"
    case dessert = "Dessert"
    case goat = "Goat"
    case lamb = "Lamb"
    case misc = "Miscellaneous"
    case pasta = "Pasta"
    case pork = "Pork"
    case seafood = "Seafood"
    case side = "Sides"
    case starter = "Starters"
    case vegan = "Vegan"
    case veggie = "Vegetarian"
}

struct Ingredient: ViewModifier {
    var ingredient: String?
    var measure: String?
    func body(content: Content) -> some View {
        if let ingredient, let measure {
            let i = ingredient.trimmingCharacters(in: .whitespacesAndNewlines)
            let m = measure.trimmingCharacters(in: .whitespacesAndNewlines)
            if (i != "" && m != "") || (i != "" || m != "") {
                content
            }
        }
    }
}

extension View {
    func hideText(ingredient: String?, measure: String?) -> some View {
        modifier(Ingredient(ingredient: ingredient, measure: measure))
    }
}

@Observable
class FoodData {
    var meal = Food()
    func fetchFoodListData(category: Category) async {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=\(category)") else {
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(Food.self, from: data) {
                meal = decodedResponse
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

@Observable
class FoodDetailData {
    var foodDetails = FoodDetails()
    func fetchDetailData(id: String) async {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(id)") else {
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(FoodDetails.self, from: data) {
                foodDetails = decodedResponse
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
