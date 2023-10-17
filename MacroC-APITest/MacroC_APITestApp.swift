//
//  MacroC_APITestApp.swift
//  MacroC-APITest
//
//  Created by Kimjaekyeong on 2023/10/16.
//

import SwiftUI

@main
struct MacroC_APITestApp: App {
    
    @StateObject private var userAuth = AppleAuth()
 
    var body: some Scene {
        WindowGroup {
            
            if userAuth.showLoginView {
            SignInView().environmentObject(userAuth)
            } else {
                ContentView().environmentObject(userAuth)
            }
        }
    }
}
