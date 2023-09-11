//
//  CoinsViewModel.swift
//  CryptoCurrencySwiftUI
//
//  Created by Yogesh on 9/8/23.
//

import Foundation

class CoinsViewModel : ObservableObject {
    @Published var coin = ""
    @Published var price = ""
    
    init() {
        fetchData(coin: "bitcoin")
    }
    
    func fetchData(coin: String) {
       let urlString = "https://api.coingecko.com/api/v3/simple/price?ids=\(coin)&vs_currencies=usd"
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
        }.resume()
    }
}
