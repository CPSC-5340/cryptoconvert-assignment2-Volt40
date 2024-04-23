//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Conversion App")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            NavigationView {
                VStack(alignment: .leading) {
                    NavigationLink("World Currency Exchange") {
                        Converter()
                    }
                    NavigationLink("Crypto Exchange") {
                        CryptoConverter()
                    }
                    Spacer()
                }
                
            }
            .navigationViewStyle(.stack)
            .navigationDestination(for: String.self) { value in
                Text("This is screen number \(value)")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
