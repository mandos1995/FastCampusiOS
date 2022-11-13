//
//  FrameworkListViewModel.swift
//  AppleFramework
//
//  Created by 김민석 on 2022/11/13.
//

import Foundation
import Combine

final class FrameworkListViewModel {
    
    init(items: [AppleFramework]) {
        self.items = CurrentValueSubject(items)
    }
    
    // Data => Output
    let items: CurrentValueSubject<[AppleFramework], Never>
    let selectedItem = PassthroughSubject<AppleFramework, Never>()
    
    // User Action => Input
    func didSelect(at indexPath: IndexPath) {
        let item = items.value[indexPath.item]
        selectedItem.send(item)
    }
}
