//
//  🎲Menu.swift
//  PharaohsSecrets
//
//  Created by Janiece Eleonour on 16.07.2024.
//

import SwiftUI

struct Menu: View {
    @EnvironmentObject var router: Router
    @EnvironmentObject var score: Score
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true

    private var pharaohe: some View {
        Image(.Menu.pharaohe)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .padding(.leading, 32)
            .ignoresSafeArea()
    }
    
    private var menu: some View {
        VStack {
            Image(.Menu.startButton)
                .onTapGesture {
                    score.restart()
                    if isFirstLaunch {
                        router.navigate(to: .histories)
                        isFirstLaunch = false
                    } else {
                        router.navigate(to: .game)
                    }
                }
            Image(.Menu.treasuryButton)
                .onTapGesture {
                    router.navigate(to: .treasury)
                }
            Image(.Menu.howToButton)
                .onTapGesture {
                    router.navigate(to: .adventure)
                }

        }
        .frame(maxWidth: 500, alignment: .trailing)
    }
    
    var body: some View {
        ZStack {
            fullScreenBackground(.Menu.background)
            pharaohe
            menu
        }
    }
}

#Preview {
    Menu()
        .environmentObject(Router())
        .environmentObject(Score())
}
