// This is free software: you can redistribute and/or modify it
// under the terms of the GNU General Public License 3.0
// as published by the Free Software Foundation https://fsf.org
//
//  FakePriceFetcher.swift
//  SatsPrice
//
//  Created by Terry Yiu on 2/21/24.
//

#if DEBUG
import Foundation

/// Fake price fetcher that returns a randomized price. Useful for development testing without requiring a network call.
class FakePriceFetcher: PriceFetcher {
    func btcToUsd() async throws -> Decimal? {
        Decimal(Double.random(in: 10000...100000))
    }
}
#endif