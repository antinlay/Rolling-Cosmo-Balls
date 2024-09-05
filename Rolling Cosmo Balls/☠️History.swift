//
//  ☠️History.swift
//  PharaohsSecrets
//
//  Created by Janiece Eleonour on 22.07.2024.
//

import SwiftUI

struct DiedHistory: View {
    @EnvironmentObject var router: Router
    
    private var description: String = """
                                        In a recent expedition to the ancient space station, a young astronaut Adam Ryder tragically died. His equipment was not prepared for the mission and the young man perished due to a malfunction of the jetpack. We offer our condolences to Adam's family and loved ones.
                                        """
    var body: some View {
        ZStack {
            fullScreenBackground(.Histories.background)
            Image(.Histories.tablo)
                .overlay(alignment: .center) {
                    VStack(spacing: 30) {
                        Text("BREAKING NEWS")
                            .foregroundStyle(.white)
                            .font(.alumniSans(.medium, size: 58))
                        
                        Text(description)
                            .foregroundStyle(.white)
                            .font(.cabin(.bold, size: 12))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        Text("Tap to continue")
                            .foregroundStyle(.white)
                            .font(.cabin(.bold, size: 19))
                            .onTapGesture {
                                router.navigate(to: .tryAgain)
                            }
                    }
                }
        }
    }
}

#Preview {
    DiedHistory()
        .environmentObject(Router())
}
