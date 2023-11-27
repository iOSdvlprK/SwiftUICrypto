//
//  ChartData.swift
//  SwiftUICrypto
//
//  Created by joe on 2023/11/26.
//

import Foundation

struct ChartData: Identifiable {
    let id = UUID().uuidString
    let date: Date
    let value: Double
}
