//
//  HomeView.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/19.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        // top movers view
                        TopMoversView(viewModel: viewModel)
                        
                        Divider()
                        
                        // all coins view
                        AllCoinsView(viewModel: viewModel)
                    }
                }
                
                if viewModel.isLoadingData {
                    CustomLoadingIndicator()
                }
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
