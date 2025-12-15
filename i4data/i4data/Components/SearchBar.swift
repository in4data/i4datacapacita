//
//  BotaoPesquisa.swift
//  i4data
//
//  Created by iredefbmac_01 on 06/12/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var placeholder: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
                .font(.system(size: 18))
            
            TextField(placeholder, text: $searchText)
                .font(.body)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color(.systemGray6))
        .cornerRadius(25)
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.black.opacity(32), lineWidth: 1)
        )
    }
}


