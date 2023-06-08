//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by 김민석 on 2023/06/08.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        return models.filter { $0.isFavorite }.count
    }
}
