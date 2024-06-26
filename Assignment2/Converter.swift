//
//  Converter.swift
//  Assignment2
//
//  Created by Michael Baljet on 4/22/24.
//

import SwiftUI

struct Converter: View {
    
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(viewModel.listOfCards) { card in
                    CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                }
            }
        }
        .onAppear {
            viewModel.fetchCards()
        }
    }
}

#Preview {
    Converter()
}
