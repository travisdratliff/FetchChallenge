//
//  FoodListView.swift
//  FetchChallenge
//
//  Created by Travis Domenic Ratliff on 7/20/24.
//

import SwiftUI

struct FoodListView: View {
    var foodData = FoodData()
    var category: Category
    var body: some View {
        NavigationView {
            List {
                ForEach(foodData.meal.meals, id: \.self) { food in
                    NavigationLink {
                        FoodDetailView(foodModel: food)
                    } label: {
                        HStack {
                            AsyncImage(url: URL(string: food.strMealThumb)) { result in
                                result.image?
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60)
                            }
                            Text(food.strMeal)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(category.rawValue)
            .task {
                await foodData.fetchFoodListData(category: category)
            }
        }
        .accentColor(.primary)
    }
}

#Preview {
    FoodListView(category: .beef)
}
