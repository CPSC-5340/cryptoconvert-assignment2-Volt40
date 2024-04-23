//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by Michael Baljet on 4/22/24.
//

import SwiftUI

struct CryptoConverter: View {
    
    @State private var bitcoinAmount: String = ""
    @ObservedObject var viewModel = CryptoConverterViewModel()
    
    var body: some View {
        VStack {
            Text("Crypto Converter")
            HStack {
                Spacer()
                Text("Bitcoin: ")
                TextField("Amount", text: $bitcoinAmount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
            }
            Spacer(minLength: 30)
            VStack {
                ForEach(viewModel.listOfConversions) { conversion in
                    HStack {
                        Text(conversion.cryptoName + ": ")
                        Text("\(calculatedAmount(conversion: conversion))")
                    }
                }
            }
            Spacer()
        }
        .onAppear {
            viewModel.fetchConversions()
        }
    }
    
    func calculatedAmount(conversion: CryptoItemModel) -> Double {
        if let amount = Double(bitcoinAmount), amount > 0 {
            return amount * conversion.multiplier
        } else {
            return 0
        }
    }
    
}

#Preview {
    CryptoConverter()
}
