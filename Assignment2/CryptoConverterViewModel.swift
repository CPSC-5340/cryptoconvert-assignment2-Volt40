//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    
    @Published private(set) var listOfConversions = [CryptoItemModel]()
    
    func fetchConversions() {
        self.listOfConversions = [
            CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 23450),
            CryptoItemModel(cryptoName: "Ethereum", cryptoCode: "ETH", multiplier: 14.2),
            CryptoItemModel(cryptoName: "Tether", cryptoCode: "USDT", multiplier: 23450),
            CryptoItemModel(cryptoName: "Binance Coin", cryptoCode: "BNB", multiplier: 77.2),
            CryptoItemModel(cryptoName: "USD Coin", cryptoCode: "USDC", multiplier: 23452),
            CryptoItemModel(cryptoName: "Ripple", cryptoCode: "XRP", multiplier: 62113)
        ]
    }
    
}
