//
//  ContentView.swift
//  MacroC-APITest
//
//  Created by Kimjaekyeong on 2023/10/16.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var userAuth = AppleAuth()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
            Text("currentUserIdentifier:\(KeychainItem.currentUserIdentifier)")
            Text("currentfullName:\(KeychainItem.currentfullName)")
            Text("currentemail:\(KeychainItem.currentemail)")
            Text("currentIdentityToken:\(KeychainItem.currentIdentityToken)")
            Text("currentAuthorizationCode:\(KeychainItem.currentAuthorizationCode)")
            
            
            Button {
                KeychainItem.deleteUserIdentifierFromKeychain() //키체인에서 UserIdentifier 제거
                userAuth.showLoginView = true //로그인뷰로 돌아가기
            } label: {
                Text("LogOut")
            }
        }
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
