//
//  CoinDetailsView.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/23.
//

import SwiftUI

struct CoinDetailsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                // chart
                
                // overview
                CoinDetailsSection()
                    .padding(.vertical)
                
                // addtional details
                CoinDetailsSection()
                    .padding(.vertical)
            }
            .padding()
            .navigationTitle("Bitcoin")
        }
    }
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView()
    }
}
