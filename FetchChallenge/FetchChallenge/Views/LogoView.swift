//
//  LogoView.swift
//  FetchChallenge
//
//  Created by Travis Domenic Ratliff on 7/19/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            Image(systemName: "book.closed")
                .font(.system(size: 300))
            Image(systemName: "fork.knife")
                .font(.system(size: 140))
                .offset(x: 10, y: -33)
        }
    }
}

#Preview {
    LogoView()
}
