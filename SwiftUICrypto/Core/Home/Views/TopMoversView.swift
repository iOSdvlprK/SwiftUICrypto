//
//  TopMoversView.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/19.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topMovingCoins) { coin in
                        NavigationLink(destination: {
                            LazyNavigationView(
                                CoinDetailsView(coin: coin)
                            )
                        }, label: {
                            TopMoversItemView(coin: coin)
                        })
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
