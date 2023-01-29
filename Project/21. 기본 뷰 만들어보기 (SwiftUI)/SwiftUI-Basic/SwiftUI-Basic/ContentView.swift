//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by 김민석 on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImageView()
            ButtonView()
            TextView()
            
            Spacer()
            
            HStack {
                ImageView()
                ButtonView()
                TextView()
            }
            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
