//
//  CoinDetailsViewModel.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/25.
//

import Foundation

class CoinDetailsViewModel {
    private let coin: Coin
    
    var overviewSectionModel: CoinDetailSectionModel {
        // price stats
        let price = coin.currentPrice.toCurrency()
        let pricePercentChange = coin.priceChangePercentage24H
        let priceStats = StatisticModel(title: "Current Price",
                                        value: price,
                                        percentageChange: pricePercentChange)
        
        // market cap stats
        let marketCap = coin.marketCap ?? 0
        let marketCapPercentChange = coin.marketCapChangePercentage24H
        let marketCapStat = StatisticModel(title: "Market Capitalization",
                                           value: String(marketCap),
                                           percentageChange: marketCapPercentChange)
        
        // rank stats
        let rank = coin.marketCapRank
        let rankStat = StatisticModel(title: "Rank", value: "\(rank)", percentageChange: nil)
        
        // volume stats
        let volume = coin.totalVolume ?? 0
        let volumeStat = StatisticModel(title: "Volume",
                                        value: "\(volume)",
                                        percentageChange: nil)
        
        return CoinDetailSectionModel(title: "Overview", stats: [priceStats, marketCapStat, rankStat, volumeStat])
    }
    
    var additionalDetailsSectionModel: CoinDetailSectionModel {
        // 24H high
        let high = coin.high24H?.toCurrency() ?? "n/a"
        let highStat = StatisticModel(title: "24H High",
                                      value: high,
                                      percentageChange: nil)
        
        // 24H low
        let low = coin.low24H?.toCurrency() ?? "n/a"
        let lowStat = StatisticModel(title: "24H Low",
                                      value: low,
                                      percentageChange: nil)
        
        // 24H price change
        let priceChange24H = coin.priceChange24H.toCurrency()
        let percentChange24H = coin.priceChangePercentage24H
        let priceChangeStat = StatisticModel(title: "24H Price Change",
                                             value: priceChange24H,
                                             percentageChange: percentChange24H)
        
        // 24H market cap change
        let marketCapChange = coin.marketCapChange24H?.toCurrency() ?? "n/a"
        let marketCapChangePercent = coin.marketCapChangePercentage24H
        let marketStat = StatisticModel(title: "24H Market Cap Change",
                                        value: marketCapChange,
                                        percentageChange: marketCapChangePercent)
        
        return CoinDetailSectionModel(title: "Additional Details", stats: [highStat, lowStat, priceChangeStat, marketStat])
    }
    
    init(coin: Coin) {
        self.coin = coin
    }
}
