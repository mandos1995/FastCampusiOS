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
            Text("1")
                .font(.system(size: 16, weight: .bold))
                .frame(width: 30)
                .foregroundColor(.blue)
            
            Image("TSLA")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("TSLA")
                    .font(.system(size: 12))
                    
                HStack {
                    Text("1,000,000 원")
                        .font(.system(size: 12))
                    Text("+0.4%")
                        .foregroundColor(.red)
                }
            }
            .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.black)
        
    }
}

struct StockRankRow_Previews: PreviewProvider {
    static var previews: some View {
        StockRankRow()
    }
}
