//
//  SearchView.swift
//  i4data
//
//  Created by iredefbmac_01 on 26/11/25.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    let vagas = [
        "Teste de Pesquisa",
        "Filtro",
        "I4Data"
    ]
    
    // Filtra baseado em searchText
    var vagasFiltradas: [String] {
        if searchText.isEmpty {
            return vagas
        } else {
            return vagas.filter { vaga in
                vaga.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        Text("Buscar")
            .navigationTitle("Buscar")
            .padding(.top)
        VStack {
            SearchBar(searchText: $searchText, placeholder: "Pesquisar Vagas")
                .padding()
            
            List(vagasFiltradas, id: \.self) { vaga in
                Text(vaga)
            }
        }
    }
}

#Preview {
    SearchView()
}
