//
//  EnvironmentObjectTestApp.swift
//  EnvironmentObjectTest
//
//  Created by 김민석 on 2023/06/15.
//

import SwiftUI

@main
struct EnvironmentObjectTestApp: App {
    
    @StateObject var userProfile = UserProfileSetting()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
