//
//  BotaoReutilizavel.swift
//  i4data
//
//  Created by iredefbmac_01 on 19/11/25.
//

import SwiftUI

struct BotaoReutilizavel: View {
    let title: String
    let action: () -> Void
    let gradientColors: [Color]

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    LinearGradient(
                        colors: gradientColors,
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .cornerRadius(10)
        }
    }
}
