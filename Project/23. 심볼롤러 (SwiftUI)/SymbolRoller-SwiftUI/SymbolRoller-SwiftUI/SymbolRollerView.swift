//
//  SymbolRollerView.swift
//  SymbolRoller-SwiftUI
//
//  Created by 김민석 on 2023/05/31.
//

import SwiftUI

struct SymbolRollerView: View {
    
    @State private var imageName: String = "moon"
    
    var body: some View {
        VStack {
            Spacer()
            WeatherImage(imageName: $imageName)
            Spacer()
            WeatherText(title: $imageName)
            ReloadButton(imageName: $imageName)
        }
    }
}

struct WeatherImage: View {
    @Binding var imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct WeatherText: View {
    @Binding var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 40, weight: .bold))
    }
}

struct ReloadButton: View {
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    @Binding var imageName: String
    
    var body: some View {
        Button {
            print("button tapped")
            imageName = symbols.randomElement()!
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
        .clipShape(Capsule())
    }
}

struct SymbolRollerView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}
