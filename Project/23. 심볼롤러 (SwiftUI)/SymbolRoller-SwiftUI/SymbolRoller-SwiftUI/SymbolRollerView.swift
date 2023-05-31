//
//  SymbolRollerView.swift
//  SymbolRoller-SwiftUI
//
//  Created by 김민석 on 2023/05/31.
//

import SwiftUI

struct SymbolRollerView: View {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State private var imageName: String = "moon"
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold))
            
            Button {
                print("button tapped")
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                    VStack {
                        Text("Reload")
                            .font(.system(size: 30, weight: .bold))
                        Text("click me to reload")
                    }
                }
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
            
            

        }
    }
}

struct SymbolRollerView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}
