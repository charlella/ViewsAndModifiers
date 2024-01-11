//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by charlene hoareau on 11/01/2024.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}
struct ContentView: View {
    var body: some View {
        Text("Hello world!")
            .title()
    }
}

#Preview {
    ContentView()
}
