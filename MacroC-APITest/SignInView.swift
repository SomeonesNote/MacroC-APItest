//
//  SignInView.swift
//  MacroC-APITest
//
//  Created by Kimjaekyeong on 2023/10/16.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            AppleSigninButton()
        }
        .padding()
    }
}

#Preview {
    SignInView()
}
