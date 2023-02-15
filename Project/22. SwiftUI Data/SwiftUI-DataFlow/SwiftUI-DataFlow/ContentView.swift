//
//  ContentView.swift
//  SwiftUI-DataFlow
//
//  Created by 김민석 on 2023/02/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayerView(episode: Episode.list.first!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
