//
//  StatisticView.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/24.
//

import SwiftUI

struct StatisticView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Current Price")
                .font(.caption)
            
            Text("$21,536.00")
                .font(.headline)
            
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption)
                
                Text("1.23%")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor(.green)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}
