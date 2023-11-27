//
//  ChartView.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/27.
//

import SwiftUI
import Charts

struct ChartView: View {
    let viewModel: CoinDetailsViewModel
    
    var body: some View {
        if #available(iOS 16.0, *) {
            Chart {
                ForEach(viewModel.chartData) { item in
                    LineMark(
                        x: .value("Date", item.date),
                        y: .value("Price", item.value)
                    )
                    .interpolationMethod(.cardinal)
                }
            }
            .chartXScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.startDate, upper: viewModel.endDate)))
            .chartXAxis {
                AxisMarks(position: .bottom, values: viewModel.xAxisValues)
            }
            .chartYScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.minPrice, upper: viewModel.maxPrice)))
            .chartYAxis {
                AxisMarks(position: .leading, values: viewModel.yAxisValues)
            }
        } else {
            // Fallback on earlier versions
            // But, we're just under the assumption that we have iOS 16 available to us.
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(viewModel: CoinDetailsViewModel(coin: dev.coin))
    }
}
