//
//  SecondView.swift
//  EnvironmentObjectTest
//
//  Created by 김민석 on 2023/06/15.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            NavigationLink {
                ThirdView()
            } label: {
                Text("Third View")
            }
            
        }
        .navigationTitle("Second View")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
