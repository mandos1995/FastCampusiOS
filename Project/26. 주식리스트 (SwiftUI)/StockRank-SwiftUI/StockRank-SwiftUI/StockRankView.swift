//
//  StockRankView.swift
//  StockRank-SwiftUI
//
//  Created by 김민석 on 2023/06/07.
//

import SwiftUI

struct StockRankView: View {
    
    @StateObject var viewModel = StockRankViewModel()
    
    var body: some View {
        NavigationView {
            List($viewModel.models) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(viewModel: viewModel, stock: $item)
                    } label: {
                        EmptyView()
                    }
                    StockRankRow(stock: $item)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
                .listRowSeparator(.hidden)

            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

struct StockRankView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
            .preferredColorScheme(.dark)
    }
}
