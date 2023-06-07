//
//  StockRankView.swift
//  StockRank-SwiftUI
//
//  Created by 김민석 on 2023/06/07.
//

import SwiftUI

struct StockRankView: View {
    
    @State var list = StockModel.list
    
    var body: some View {
        
        List(list) { item in
            StockRankRow(stock: item)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                .frame(height: 80)
        }
        .listStyle(.plain)
        .background(.black)
    }
}

struct StockRankView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
    }
}
