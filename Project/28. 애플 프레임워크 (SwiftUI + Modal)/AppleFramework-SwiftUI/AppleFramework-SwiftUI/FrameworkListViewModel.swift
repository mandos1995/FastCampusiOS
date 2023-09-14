//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by 김민석 on 2023/09/14.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false
    @Published var selectedItem: AppleFramework?
}
