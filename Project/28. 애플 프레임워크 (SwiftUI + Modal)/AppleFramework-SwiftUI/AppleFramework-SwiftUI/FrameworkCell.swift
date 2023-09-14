//
//  FrameworkCell.swift
//  AppleFramework-SwiftUI
//
//  Created by 김민석 on 2023/06/01.
//

import SwiftUI

struct FrameworkCell: View {
    
    @Binding var framework: AppleFramework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Text(framework.name)
                .font(.system(size: 16, weight: .bold))
            Spacer()
        }
    }
}

