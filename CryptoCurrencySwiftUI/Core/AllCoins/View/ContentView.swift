//
//  ContentView.swift
//  CryptoCurrencySwiftUI
//
//  Created by Yogesh on 9/8/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = CoinsViewModel()
    var body: some View {
        Text("\(viewModel.coin) : \(viewModel.price)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
