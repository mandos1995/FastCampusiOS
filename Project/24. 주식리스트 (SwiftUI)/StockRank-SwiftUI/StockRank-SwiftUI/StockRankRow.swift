//
//  StockRankRow.swift
//  StockRank-SwiftUI
//
//  Created by 김민석 on 2023/05/31.
//

import SwiftUI

struct StockRankRow: View {
    var body: some View {
        HStack {
            Text("TSLA")
            Image("TSLA")
        }
    }
}

struct StockRankRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRankRow()
    }
}
