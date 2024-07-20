//
//  DessertDetailView.swift
//  FetchChallenge
//
//  Created by Travis Domenic Ratliff on 7/16/24.
//

import SwiftUI

struct FoodDetailView: View {
    var foodModel: FoodModel
//    var dessertsDetailData = DessertsDetailData()
    var foodDetailData = FoodDetailData()
    @State private var youtubeLink = ""
    @Environment(\.openURL) var openURL
    var body: some View {
        NavigationView {
            List {
                ForEach(foodDetailData.foodDetails.meals, id: \.self) { dessert in
                    if dessert.idMeal == foodModel.idMeal {
                        Text(dessert.strMeal)
                            .font(.largeTitle)
                            .bold()
                        Section {
                            AsyncImage(url: URL(string: dessert.strMealThumb ?? "")) { result in
                                result.image?
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        Divider()
                        Section {
                            VStack(alignment: .leading) {
                                if let ingredient1 = dessert.strIngredient1 {
                                    if let measure1 = dessert.strMeasure1 {
                                        HStack {
                                            Text(ingredient1)
                                            Spacer()
                                            Text(measure1)
                                        }
                                        .hideText(ingredient: ingredient1, measure: measure1)
                                    }
                                }
                                if let ingredient2 = dessert.strIngredient2 {
                                    if let measure2 = dessert.strMeasure2 {
                                        HStack {
                                            Text(ingredient2)
                                            Spacer()
                                            Text(measure2)
                                        }
                                        .hideText(ingredient: ingredient2, measure: measure2)
                                    }
                                }
                                if let ingredient3 = dessert.strIngredient3 {
                                    if let measure3 = dessert.strMeasure3 {
                                        HStack {
                                            Text(ingredient3)
                                            Spacer()
                                            Text(measure3)
                                        }
                                        .hideText(ingredient: ingredient3, measure: measure3)
                                    }
                                }
                                if let ingredient4 = dessert.strIngredient4 {
                                    if let measure4 = dessert.strMeasure4 {
                                        HStack {
                                            Text(ingredient4)
                                            Spacer()
                                            Text(measure4)
                                        }
                                        .hideText(ingredient: ingredient4, measure: measure4)
                                    }
                                }
                                if let ingredient5 = dessert.strIngredient5 {
                                    if let measure5 = dessert.strMeasure5 {
                                        HStack {
                                            Text(ingredient5)
                                            Spacer()
                                            Text(measure5)
                                        }
                                        .hideText(ingredient: ingredient5, measure: measure5)
                                    }
                                }
                                if let ingredient6 = dessert.strIngredient6 {
                                    if let measure6 = dessert.strMeasure6 {
                                        HStack {
                                            Text(ingredient6)
                                            Spacer()
                                            Text(measure6)
                                        }
                                        .hideText(ingredient: ingredient6, measure: measure6)
                                    }
                                }
                                if let ingredient7 = dessert.strIngredient7 {
                                    if let measure7 = dessert.strMeasure7 {
                                        HStack {
                                            Text(ingredient7)
                                            Spacer()
                                            Text(measure7)
                                        }
                                        .hideText(ingredient: ingredient7, measure: measure7)
                                    }
                                }
                                if let ingredient8 = dessert.strIngredient8 {
                                    if let measure8 = dessert.strMeasure8 {
                                        HStack {
                                            Text(ingredient8)
                                            Spacer()
                                            Text(measure8)
                                        }
                                        .hideText(ingredient: ingredient8, measure: measure8)
                                    }
                                }
                                if let ingredient9 = dessert.strIngredient9 {
                                    if let measure9 = dessert.strMeasure9 {
                                        HStack {
                                            Text(ingredient9)
                                            Spacer()
                                            Text(measure9)
                                        }
                                        .hideText(ingredient: ingredient9, measure: measure9)
                                    }
                                }
                                if let ingredient10 = dessert.strIngredient10 {
                                    if let measure10 = dessert.strMeasure10 {
                                        HStack {
                                            Text(ingredient10)
                                            Spacer()
                                            Text(measure10)
                                        }
                                        .hideText(ingredient: ingredient10, measure: measure10)
                                    }
                                }
                                if let ingredient11 = dessert.strIngredient11 {
                                    if let measure11 = dessert.strMeasure11 {
                                        HStack {
                                            Text(ingredient11)
                                            Spacer()
                                            Text(measure11)
                                        }
                                        .hideText(ingredient: ingredient11, measure: measure11)
                                    }
                                }
                                if let ingredient12 = dessert.strIngredient12 {
                                    if let measure12 = dessert.strMeasure12 {
                                        HStack {
                                            Text(ingredient12)
                                            Spacer()
                                            Text(measure12)
                                        }
                                        .hideText(ingredient: ingredient12, measure: measure12)
                                    }
                                }
                                if let ingredient13 = dessert.strIngredient13 {
                                    if let measure13 = dessert.strMeasure13 {
                                        HStack {
                                            Text(ingredient13)
                                            Spacer()
                                            Text(measure13)
                                        }
                                        .hideText(ingredient: ingredient13, measure: measure13)
                                    }
                                }
                                if let ingredient14 = dessert.strIngredient14 {
                                    if let measure14 = dessert.strMeasure14 {
                                        HStack {
                                            Text(ingredient14)
                                            Spacer()
                                            Text(measure14)
                                        }
                                        .hideText(ingredient: ingredient14, measure: measure14)
                                    }
                                }
                                if let ingredient15 = dessert.strIngredient15 {
                                    if let measure15 = dessert.strMeasure15 {
                                        HStack {
                                            Text(ingredient15)
                                            Spacer()
                                            Text(measure15)
                                        }
                                        .hideText(ingredient: ingredient15, measure: measure15)
                                    }
                                }
                                if let ingredient16 = dessert.strIngredient16 {
                                    if let measure16 = dessert.strMeasure16 {
                                        HStack {
                                            Text(ingredient16)
                                            Spacer()
                                            Text(measure16)
                                        }
                                        .hideText(ingredient: ingredient16, measure: measure16)
                                    }
                                }
                                if let ingredient17 = dessert.strIngredient17 {
                                    if let measure17 = dessert.strMeasure17 {
                                        HStack {
                                            Text(ingredient17)
                                            Spacer()
                                            Text(measure17)
                                        }
                                        .hideText(ingredient: ingredient17, measure: measure17)
                                    }
                                }
                                if let ingredient18 = dessert.strIngredient18 {
                                    if let measure18 = dessert.strMeasure18 {
                                        HStack {
                                            Text(ingredient18)
                                            Spacer()
                                            Text(measure18)
                                        }
                                        .hideText(ingredient: ingredient18, measure: measure18)
                                    }
                                }
                                if let ingredient19 = dessert.strIngredient19 {
                                    if let measure19 = dessert.strMeasure19 {
                                        HStack {
                                            Text(ingredient19)
                                            Spacer()
                                            Text(measure19)
                                        }
                                        .hideText(ingredient: ingredient19, measure: measure19)
                                    }
                                }
                                if let ingredient20 = dessert.strIngredient20 {
                                    if let measure20 = dessert.strMeasure20 {
                                        HStack {
                                            Text(ingredient20)
                                            Spacer()
                                            Text(measure20)
                                        }
                                        .hideText(ingredient: ingredient20, measure: measure20)
                                    }
                                }
                            }
                        } header: {
                            Text("Ingredients")
                                .font(.headline)
                                .foregroundColor(.primary)
                        }
                        Divider()
                        Section {
                            VStack(alignment: .leading) {
                                if let instructions = dessert.strInstructions {
                                    Text(instructions)
                                }
                            }
                        } header: {
                            Text("Instructions")
                                .font(.headline)
                                .foregroundColor(.primary)
                        }
                    }
                }
                .listRowSeparator(.hidden)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        openYoutube()
                    } label: {
                        Image(systemName: "video.fill")
                            .foregroundColor(.primary)
                    }
                }
            }
            .listStyle(.plain)
            .task {
                await foodDetailData.fetchDetailData(id: foodModel.idMeal)
                for des in foodDetailData.foodDetails.meals {
                    if foodModel.idMeal == des.idMeal {
                        if let youtube = des.strYoutube {
                            youtubeLink = youtube
                        }
                    }
                }
            }
        }
        .accentColor(.primary)
    }
    func openYoutube() {
        guard let url = URL(string: youtubeLink) else { return }
        openURL(url)
    }
}

#Preview {
    FoodDetailView(foodModel: FoodModel(strMeal: "Apple Frangipan Tart", strMealThumb: "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg", idMeal: "52768"))
}
