//
//  ContentView.swift
//  i4data
//
//  Created by Iredefbmac_14 on 12/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        BotaoReutilizavel(
            title: "Próximo Passo",
            action: { print("Botão acionado!") },
            gradientColors: [.azulBotão, .verdeBotão]
        )
        .padding()
    }
}

#Preview {
    ContentView()
}
