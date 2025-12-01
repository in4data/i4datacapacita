//
//  TabBar.swift
//  i4data
//
//  Created by iredefbmac_01 on 26/11/25.
//

import SwiftUI

struct TabItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
}

struct TabBar: View {
    @Binding var selectedIndex: Int
    let tabs: [TabItem]

    var body: some View {
        HStack {
            ForEach(tabs.indices, id: \.self) { index in
                let tab = tabs[index]

                VStack(spacing: 6) {
                    Image(systemName: tab.icon)
                        .font(.system(size: 26, weight: .regular))
                    Text(tab.title)
                        .font(.system(size: 15, weight: .regular))
                }
                .foregroundColor(selectedIndex == index ? .black : Color(.black).opacity(0.3))
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.spring(response: 0.25, dampingFraction: 0.8)) {
                        selectedIndex = index
                    }
                }
            }
        }
        .background(
            Color("Background-Tab")
                .clipShape(RoundedRectangle(cornerRadius: 28))
        )
        .padding(.horizontal, 12)
    }
}
