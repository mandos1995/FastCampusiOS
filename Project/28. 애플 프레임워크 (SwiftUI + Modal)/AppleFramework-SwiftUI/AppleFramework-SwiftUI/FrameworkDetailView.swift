//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 김민석 on 2023/09/14.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
            Text(framework.name)
            Text(framework.description)
            
            Button {
                print("--> Tapped")
            } label: {
                Text("Learn More")
                    
            }

        }
    }
}

