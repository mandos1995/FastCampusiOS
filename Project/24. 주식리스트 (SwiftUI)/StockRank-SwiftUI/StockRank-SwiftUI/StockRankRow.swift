//
//  StockRankRow.swift
//  StockRank-SwiftUI
//
//  Created by 김민석 on 2023/05/31.
//

import SwiftUI

struct StockRankRow: View {
    var stock: StockModel
    
    var body: some View {
        HStack {
            Text("\(stock.rank)")
                .font(.system(size: 16, weight: .bold))
                .frame(width: 30)
                .foregroundColor(.blue)
            
            Image("\(stock.imageName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("\(stock.imageName)")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                HStack {
                    Text("\(stock.price) 원")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("\(stock.diff * 100, specifier: "%.2f") %")
                        .foregroundColor(stock.diff > 0 ? .red : .blue)
                        .font(.system(size: 12))
                }
            }
            
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        
    }
}

struct StockRankRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRankRow(stock: StockModel.list.first!)
    }
}
