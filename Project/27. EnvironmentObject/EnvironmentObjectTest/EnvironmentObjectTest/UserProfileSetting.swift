//
//  UserProfileSetting.swift
//  EnvironmentObjectTest
//
//  Created by 김민석 on 2023/06/15.
//

import Foundation

final class UserProfileSetting: ObservableObject {
    
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
