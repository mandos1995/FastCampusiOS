//
//  StockRank_SwiftUIApp.swift
//  StockRank-SwiftUI
//
//  Created by 김민석 on 2023/06/07.
//

import SwiftUI

@main
struct StockRank_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            StockRankView()
                .preferredColorScheme(.dark)
        }
    }
}
