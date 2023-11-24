//
//  PreviewProvider.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/24.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    let stat1 = StatisticModel(title: "Current Price",
                               value: "$21,543.00",
                               percentageChange: 1.23)
    
    let stat2 = StatisticModel(title: "Market Capitalization",
                               value: "$413.15Bn",
                               percentageChange: 1.67)
    
    let stat3 = StatisticModel(title: "Rank",
                               value: "1",
                               percentageChange: nil)
    
    let stat4 = StatisticModel(title: "Volume",
                               value: "$35.99Bn",
                               percentageChange: nil)
    
    lazy var sectionModel = CoinDetailSectionModel(title: "Overview", stats: [stat1, stat2, stat3, stat4])
}
