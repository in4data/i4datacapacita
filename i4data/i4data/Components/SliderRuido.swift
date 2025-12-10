//
//  SliderRuido.swift
//  i4data
//
//  Created by iredefbmac_01 on 09/12/25.
//
import SwiftUI

struct SliderRuido: View {
    @State private var noiseLevel: Float = 1.0
    
    let minValue: Float = 1.0
    let maxValue: Float = 5.0

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(uiColor: .systemGray6))
                .frame(width: 370, height: 90)
                .overlay(
                    HStack(spacing: 1) {
                        Image(systemName: "ear")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.purple)
                            .padding(.leading, 10)
                        

                        VStack {
                            Slider(
                                value: $noiseLevel,
                                in: minValue...maxValue,
                                step: 1.0
                            )
                            .tint(.purple)
                            .padding(.horizontal, 10)


                            HStack {
                                Text("1(Baixo)")
                                    .fontWeight(noiseLevel == 1 ? .bold : .regular)
                                Spacer()
                                Text("2")
                                    .fontWeight(noiseLevel == 2 ? .bold : .regular)
                                Spacer()
                                Text("3")
                                    .fontWeight(noiseLevel == 3 ? .bold : .regular)
                                Spacer()
                                Text("4")
                                    .fontWeight(noiseLevel == 4 ? .bold : .regular)
                                Spacer()
                                Text("5(Alto)")
                                    .fontWeight(noiseLevel == 5 ? .bold : .regular)
                            }
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                            .padding(.horizontal, 10)
                        }
                    }
                    .padding(.vertical, 15)
                    .padding(.trailing, 30.0)
                )
        }
        .padding(.horizontal)
    }
}

#Preview {
    SliderRuido()
}
