//
//  CoinDetailsView.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/23.
//

import SwiftUI

struct CoinDetailsView: View {
    let viewModel: CoinDetailsViewModel
    
    init(coin: Coin) {
        self.viewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // chart
                
                // overview
                CoinDetailsSection(model: viewModel.overviewSectionModel)
                    .padding(.vertical)
                
                // addtional details
                CoinDetailsSection(model: viewModel.additionalDetailsSectionModel)
                    .padding(.vertical)
            }
            .padding()
            .navigationTitle("Bitcoin")
        }
    }
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView(coin: dev.coin)
    }
}
