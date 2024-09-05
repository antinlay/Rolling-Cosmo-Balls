//
//  🥇YouWin.swift
//  PharaohsSecrets
//
//  Created by Janiece Eleonour on 22.07.2024.
//

import SwiftUI

struct YouWin: View {
    @EnvironmentObject var router: Router
    @EnvironmentObject var score: Score
    
    var body: some View {
        ZStack {
            fullScreenBackground(.YouWin.background)
            VStack {
                Text("YOU\nWIN!")
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .font(.lemon(.regular, size: 79))
                    .foregroundStyle(.yellow)
                    .padding()
                VStack {
                    HStack {
                        Text("\(score.itemScore.coins)")
                            .font(.cabin(.bold, size: 63))
                            .foregroundStyle(.darkAccent)
                        Image(.Treasury.triada)
                            .padding()
                    }
                    Text("You discovered new treasures!")
                        .font(.cabin(.bold, size: 19))
                        .foregroundStyle(.darkAccent)
                    Image(.YouWin.treasuryButton)
                        .onTapGesture {
                            router.navigate(to: .treasury)
                        }
                }
            }
        }
    }
}

#Preview {
    YouWin()
        .environmentObject(Score())
        .environmentObject(Router())
}
