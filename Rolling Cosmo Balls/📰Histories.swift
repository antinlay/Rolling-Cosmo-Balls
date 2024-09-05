//
//  📰Histories.swift
//  PharaohsSecrets
//
//  Created by Janiece Eleonour on 17.07.2024.
//

import SwiftUI

struct Histories: View {
    @EnvironmentObject var router: Router
    
    private var histories: [String] = [
                        """
                        My name is Adam. I have devoted my whole life to exploring the mysteries of the universe. Not so long ago, I managed to meet an astronaut who saw with his own eyes the entrance to a mysterious cosmic vault...

                        Unfortunately, he couldn't get inside and find out what was hidden in it. I intend to complete his mission!
                        """,
                        """
                        According to one of the legends, this cosmic vault contains a collection of powerful artifacts that defy the laws of time. An ancient interstellar civilization discovered them and locked them away in a hidden space station. The vault is concealed from prying eyes by intricate labyrinths shrouded in cosmic dust and asteroid fields, but the most daunting thing that scares me...
                        """,
                        """
                        Ancient traps! And the space station, which is many millennia old, has clearly not been preserved as well as the artifacts endowed with cosmic power.. For safety, I take some advanced tools with me, and the scientist, whose tip led me on this journey, advised me to take a jetpack. I wonder why I need it inside the space station..?
                        """]
    @State private var historyIndex = 0
    
    private var pharaohe: some View {
        Image(.Menu.pharaohe)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .offset(x: -84)
            .ignoresSafeArea()
    }
    
    private var historyText: some View {
        GeometryReader { geo in
            Text(histories[historyIndex])
                .font(.cabin(.bold, size: 22))
                .foregroundStyle(.white)
                .frame(width: geo.size.width / 1.6)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                .padding(.trailing)
        }
    }
    
    private var tappedNextImage: some View {
        Image(.Histories.next)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .padding()
            .onTapGesture {
                if historyIndex < histories.count - 1 {
                    historyIndex += 1
                } else {
                    router.navigate(to: .game)
                }
            }
    }
    
    var body: some View {
        ZStack {
            fullScreenBackground(.Histories.background)
            pharaohe
            historyText
                .animation(.easeOut, value: historyIndex)
            tappedNextImage
        }
    }
}

#Preview {
    Histories()
}
