//
//  ⏸️Pause.swift
//  PharaohsSecrets
//
//  Created by Janiece Eleonour on 18.07.2024.
//

import SwiftUI

struct Pause: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var router: Router
    @EnvironmentObject var score: Score
    
    private var pauseContent: some View {
        VStack(spacing: 0) {
            Text("Pause")
                .font(.cabin(.medium, size: 44))
                .foregroundStyle(.accent)
                .padding(.bottom, 10)
            Image(.Pause.continue)
                .onTapGesture {
                    dismiss()
                }
            Image(.Pause.restart)
                .onTapGesture {
                    score.restart()
                    dismiss()
                }
            Image(.TryAgain.main)
                .onTapGesture {
                    router.navigate(to: .menu)
                }
        }
    }
    
    var body: some View {
        ZStack {
            fullScreenBackground(.Adventure.background)
            Image(.Pause.tablo)
                .padding(.top)
            pauseContent
        }
    }
}

extension Score {
    func restart() {
        offset = 0
        direction = .right
        runnerPoint = CGRect()
        startGame = false
        disableControl = true
        newTresury = nil
        itemScore.keys = false
        itemScore.weapons = false
        itemScore.coins = 0
        itemScore.lives = 3
    }
}

#Preview {
    Pause()
        .environmentObject(Score())
        .environmentObject(Router())
}
