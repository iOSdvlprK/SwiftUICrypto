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
    
    /*
    let coin = Coin(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 61408,
        marketCapRank: 1,
        marketCap: 1141731099010,
        fullyDilutedValuation: 1285385611303,
        totalVolume: 67190952980,
        high24H: 61712,
        low24H: 56220,
        priceChange24H: 3952.64,
        priceChangePercentage24H: 6.87944,
        marketCapChange24H: 72110681879,
        marketCapChangePercentage24H: 6.74171,
        circulatingSupply: 18653043,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 61712,
        athChangePercentage: -0.97589,
        athDate: "2021-03-13T20:49:26.606Z",
        atl: 67.81,
        atlChangePercentage: 54710.71018,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-11-20T13:54:23.378Z",
        sparklineIn7D: SparklineIn7D(price: [
            36795.57113424511,
            36951.70031013419,
            36846.299498709894,
            36771.18254565363,
            36826.699952108465,
            36877.82472769619,
            36648.163279346496,
            36762.38073450954,
            36853.55932751403,
            36815.67139117826,
            36437.7836967649,
            36556.12320473314,
            36549.16204829837,
            36223.31232606392,
            36407.95318118144,
            36423.937400058334,
            36460.327543816646,
            36510.58204228086,
            36613.891555707756,
            36666.87962550011,
            36698.75352811377,
            36740.39552999041,
            36526.080298771296,
            36509.54328582069,
            36330.5454067207,
            36395.086313228174,
            36554.31613769191,
            36595.39415854397,
            36132.70318203377,
            36298.16148703754,
            36152.8269043818,
            35284.820419943026,
            35289.034993556146,
            35266.335242154084,
            35578.75303693282,
            35600.915413431205,
            35545.201433454065,
            35553.4929570494,
            35501.056059298586,
            35480.001015120666,
            35389.21900849932,
            35577.049505337236,
            35629.027714432654,
            35619.25073013464,
            35574.9178249679,
            35815.42238135602,
            35797.48206930911,
            35859.259689371625,
            36250.773207587685,
            36282.24840171514,
            36136.335084775885,
            36119.57143025458,
            36397.07945959704,
            36392.07898045584,
            36496.59967868011,
            37433.21417703956,
            37492.220592756494,
            37463.40214037469,
            37655.825028585976,
            37761.00853505901,
            37903.66245166294,
            37826.36685950436,
            37464.28404051854,
            37557.96985041627,
            37443.56247829998,
            37453.64109418541,
            37433.45025617561,
            37540.40254352169,
            37449.44822077931,
            37353.98537885555,
            37379.06249787419,
            37337.02999503687,
            37226.388081132034,
            37115.752578242944,
            36861.18679414148,
            36739.645841596954,
            36379.79999641866,
            36544.51628227986,
            36448.385891631624,
            36234.831967022554,
            35841.3117294496,
            36055.70531604448,
            35985.23717564191,
            36235.00577174696,
            36163.46689036523,
            36356.78342196292,
            36551.34316496115,
            36470.87256684636,
            36517.10471656712,
            36445.86899342715,
            36333.82905466318,
            36382.533811227106,
            36225.1695532378,
            36396.39850534106,
            36350.066270107374,
            36327.443151059924,
            36365.54623893652,
            36419.96859704596,
            36311.78964712377,
            36031.0668801605,
            36054.25707338411,
            35961.40139342393,
            36490.86224117981,
            36492.57414669125,
            36301.35425177167,
            36522.74630566679,
            36406.00134698672,
            36546.96421848689,
            36618.603212685804,
            36422.4005120057,
            36435.98908456511,
            36427.59675017515,
            36375.36086424323,
            36420.503133352606,
            36348.29105842537,
            36283.87120142703,
            36429.28685207062,
            36470.088843324,
            36402.80403786543,
            36469.56168863435,
            36434.144724931015,
            36471.98868436398,
            36451.862659168386,
            36513.9006278419,
            36689.87126018735,
            36733.939773701015,
            36636.030705664554,
            36746.60953633107,
            36692.866042648944,
            36621.67239940781,
            36568.579036778465,
            36532.153607590735,
            36588.255832804745,
            36503.78343590226,
            36506.96503516864,
            36481.45052527601,
            36518.91882982612,
            36557.56930239484,
            36525.19431003651,
            36633.124621298855,
            36623.74357507149,
            36646.538903301014,
            36651.52964230982,
            36576.9978804993,
            36469.89195084626,
            36507.484202873035,
            36489.69790548668,
            36455.02842592002,
            36575.22784249426,
            36573.62206405465,
            36575.05429494628,
            36844.55888439244,
            36978.09927850687,
            36920.690186238084,
            37030.31035337546,
            36960.80556076372,
            37413.99460790531,
            37278.70425465546,
            37297.77624372937,
            37322.733299603904,
            37106.63557113921,
            37231.56857334532,
            37147.203762634825,
            37210.1094542998,
            37267.75139103715,
            37109.931783161046,
            37214.94223860236,
            37323.631210928055
        ]),
        priceChangePercentage24HInCurrency: 1.7834425269915035)
    */
    
    // more efficient way of adding the mock coin data
    let coin: Coin = {
        let json: String = """
    {
        "id": "bitcoin",
        "symbol": "btc",
        "name": "Bitcoin",
        "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
        "current_price": 37155,
        "market_cap": 725514191615,
        "market_cap_rank": 1,
        "fully_diluted_valuation": 779410701422,
        "total_volume": 15946129099,
        "high_24h": 37516,
        "low_24h": 36441,
        "price_change_24h": 651.03,
        "price_change_percentage_24h": 1.78344,
        "market_cap_change_24h": 11695483357,
        "market_cap_change_percentage_24h": 1.63844,
        "circulating_supply": 19547843,
        "total_supply": 21000000,
        "max_supply": 21000000,
        "ath": 69045,
        "ath_change_percentage": -46.1703,
        "ath_date": "2021-11-10T14:24:11.849Z",
        "atl": 67.81,
        "atl_change_percentage": 54710.71018,
        "atl_date": "2013-07-06T00:00:00.000Z",
        "roi": null,
        "last_updated": "2023-11-20T13:54:23.378Z",
        "sparkline_in_7d": {
          "price": [
            36795.57113424511,
            36951.70031013419,
            36846.299498709894,
            36771.18254565363,
            36826.699952108465,
            36877.82472769619,
            36648.163279346496,
            36762.38073450954,
            36853.55932751403,
            36815.67139117826,
            36437.7836967649,
            36556.12320473314,
            36549.16204829837,
            36223.31232606392,
            36407.95318118144,
            36423.937400058334,
            36460.327543816646,
            36510.58204228086,
            36613.891555707756,
            36666.87962550011,
            36698.75352811377,
            36740.39552999041,
            36526.080298771296,
            36509.54328582069,
            36330.5454067207,
            36395.086313228174,
            36554.31613769191,
            36595.39415854397,
            36132.70318203377,
            36298.16148703754,
            36152.8269043818,
            35284.820419943026,
            35289.034993556146,
            35266.335242154084,
            35578.75303693282,
            35600.915413431205,
            35545.201433454065,
            35553.4929570494,
            35501.056059298586,
            35480.001015120666,
            35389.21900849932,
            35577.049505337236,
            35629.027714432654,
            35619.25073013464,
            35574.9178249679,
            35815.42238135602,
            35797.48206930911,
            35859.259689371625,
            36250.773207587685,
            36282.24840171514,
            36136.335084775885,
            36119.57143025458,
            36397.07945959704,
            36392.07898045584,
            36496.59967868011,
            37433.21417703956,
            37492.220592756494,
            37463.40214037469,
            37655.825028585976,
            37761.00853505901,
            37903.66245166294,
            37826.36685950436,
            37464.28404051854,
            37557.96985041627,
            37443.56247829998,
            37453.64109418541,
            37433.45025617561,
            37540.40254352169,
            37449.44822077931,
            37353.98537885555,
            37379.06249787419,
            37337.02999503687,
            37226.388081132034,
            37115.752578242944,
            36861.18679414148,
            36739.645841596954,
            36379.79999641866,
            36544.51628227986,
            36448.385891631624,
            36234.831967022554,
            35841.3117294496,
            36055.70531604448,
            35985.23717564191,
            36235.00577174696,
            36163.46689036523,
            36356.78342196292,
            36551.34316496115,
            36470.87256684636,
            36517.10471656712,
            36445.86899342715,
            36333.82905466318,
            36382.533811227106,
            36225.1695532378,
            36396.39850534106,
            36350.066270107374,
            36327.443151059924,
            36365.54623893652,
            36419.96859704596,
            36311.78964712377,
            36031.0668801605,
            36054.25707338411,
            35961.40139342393,
            36490.86224117981,
            36492.57414669125,
            36301.35425177167,
            36522.74630566679,
            36406.00134698672,
            36546.96421848689,
            36618.603212685804,
            36422.4005120057,
            36435.98908456511,
            36427.59675017515,
            36375.36086424323,
            36420.503133352606,
            36348.29105842537,
            36283.87120142703,
            36429.28685207062,
            36470.088843324,
            36402.80403786543,
            36469.56168863435,
            36434.144724931015,
            36471.98868436398,
            36451.862659168386,
            36513.9006278419,
            36689.87126018735,
            36733.939773701015,
            36636.030705664554,
            36746.60953633107,
            36692.866042648944,
            36621.67239940781,
            36568.579036778465,
            36532.153607590735,
            36588.255832804745,
            36503.78343590226,
            36506.96503516864,
            36481.45052527601,
            36518.91882982612,
            36557.56930239484,
            36525.19431003651,
            36633.124621298855,
            36623.74357507149,
            36646.538903301014,
            36651.52964230982,
            36576.9978804993,
            36469.89195084626,
            36507.484202873035,
            36489.69790548668,
            36455.02842592002,
            36575.22784249426,
            36573.62206405465,
            36575.05429494628,
            36844.55888439244,
            36978.09927850687,
            36920.690186238084,
            37030.31035337546,
            36960.80556076372,
            37413.99460790531,
            37278.70425465546,
            37297.77624372937,
            37322.733299603904,
            37106.63557113921,
            37231.56857334532,
            37147.203762634825,
            37210.1094542998,
            37267.75139103715,
            37109.931783161046,
            37214.94223860236,
            37323.631210928055
          ]
        },
        "price_change_percentage_24h_in_currency": 1.7834425269915035
      }
"""
        let data = json.data(using: .utf8)!
        return try! JSONDecoder().decode(Coin.self, from: data)
    }()
}
