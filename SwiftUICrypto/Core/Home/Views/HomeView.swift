//
//  HomeView.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    // top movers view
                    TopMoversView()
                    
                    Divider()
                    
                    // all coins view
                    AllCoinsView()
                }
                .navigationTitle("Live Prices")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
