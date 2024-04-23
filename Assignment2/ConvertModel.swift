//
//  ConvertModel.swift
//  Assignment2
//
//

import Foundation

struct ConvertModel<T> : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : T
}

struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double
}

struct CryptoItemModel : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    let cryptoName : String
    let cryptoCode : String
    let multiplier : Double
}
