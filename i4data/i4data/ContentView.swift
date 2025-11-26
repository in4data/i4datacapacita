//
//  ContentView.swift
//  i4data
//
//  Created by Iredefbmac_14 on 12/11/25.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedIndex = 0
    // Icones/Itens da TabBar
    let tabs = [
        TabItem(icon: "house.fill", title: "Início"),
        TabItem(icon: "magnifyingglass", title: "Buscar"),
        TabItem(icon: "bell.fill", title: "Notificações"),
        TabItem(icon: "gear", title: "Config.")
    ]

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {

                // Ação de mudar as telas
                Group {
                    switch selectedIndex {
                    case 0: HomeView()
                    case 1: SearchView()
                    case 2: NotificationView()
                    default: HomeView()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.bottom, 100) // espaço para a tab bar

                TabBar(selectedIndex: $selectedIndex, tabs: tabs)
            }
            .padding(.top)
        }
    }
}
#Preview {
    ContentView()
}
