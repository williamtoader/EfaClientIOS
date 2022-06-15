//
//  ContentView.swift
//  iOS Example
//
//  Created by DB EFA Interns Team on Jun 15, 2022.
//

import SwiftUI
import EfaClientIOS

struct SwiftUIEfaClientIOS: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return EfaClientIOS()
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            SwiftUIEfaClientIOS()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
