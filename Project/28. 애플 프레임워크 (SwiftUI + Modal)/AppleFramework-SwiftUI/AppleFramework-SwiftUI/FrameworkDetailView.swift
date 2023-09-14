//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 김민석 on 2023/09/14.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @StateObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            Image(viewModel.framework.imageName)
            Text(viewModel.framework.name)
            Text(viewModel.framework.description)
            
            Button {
                print("--> Tapped")
            } label: {
                Text("Learn More")
                
            }
            
        }
    }
}

