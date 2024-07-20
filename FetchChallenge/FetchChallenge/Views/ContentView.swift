//
//  ContentView.swift
//  FetchChallenge
//
//  Created by Travis Domenic Ratliff on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(Category.allCases, id: \.self) { view in
                    NavigationLink {
                        FoodListView(category: view)
                    } label: {
                        HStack {
                            Text(view.rawValue)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Categories")
            .toolbar {
                ToolbarItem {
                    HStack {
                        Text("Cook Book")
                            .font(.headline)
                        ZStack {
                            Image(systemName: "book.closed")
                                .font(.system(size: 20))
                            Image(systemName: "fork.knife")
                                .font(.system(size: 8))
                                .offset(x: 1, y: -3)
                        }
                    }
                }
            }
        }
        .accentColor(.primary)
    }
}

#Preview {
    ContentView()
}
