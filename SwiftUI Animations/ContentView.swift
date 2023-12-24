//
//  ContentView.swift
//  SwiftUI Animations
//
//  Created by Sesili Tsikaridze on 24.12.23.
//

import SwiftUI
import EffectsLibrary

struct ContentView: View {
    @State private var textAnimation = false
    @State private var textColor = Color.blue

    var body: some View {
        ZStack {
            FireworksView()
            SwiftUIXmasTree2()
            VStack {
                Text("TBC IT Academy")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(textColor)
            }
            .scaleEffect(textAnimation ? 1.5 : 1)
            .offset(y: textAnimation ? 0 : 30)
            .onAppear() {
                withAnimation(.easeInOut(duration: 2.0).repeatForever()) {
                    textAnimation.toggle()
                }
                withAnimation(.easeInOut(duration: 2.0).repeatForever()) {
                    textColor = .red
                }
            }
            SnowView()
        }
    }
}

#Preview {
    ContentView()
}
