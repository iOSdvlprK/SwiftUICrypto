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
        ScrollView {
            // chart
            ChartView(viewModel: viewModel)
                .frame(height: 300)
                .padding(.vertical)
                .shadow(color: viewModel.chartLineColor, radius: 10)
                .shadow(color: viewModel.chartLineColor.opacity(0.5), radius: 10)
            
            // overview
            CoinDetailsSection(model: viewModel.overviewSectionModel)
                .padding(.vertical)
            
            // addtional details
            CoinDetailsSection(model: viewModel.additionalDetailsSectionModel)
                .padding(.vertical)
        }
        .padding()
        .navigationTitle(viewModel.coinName)
    }
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CoinDetailsView(coin: dev.coin)
        }
    }
}
