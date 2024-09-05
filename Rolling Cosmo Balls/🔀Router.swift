//
//  🔀Router.swift
//  PharaohsSecrets
//
//  Created by Janiece Eleonour on 02.08.2024.
//

import Foundation

enum GameViews {
    case menu
    case adventure
    case treasury
    case parachute
    
    case histories
    case game
    case youWin
    case tryAgain
    case winHistory
    case diedHistory
    case notDiscovered
    case pause
    case crashed
}

class Router: ObservableObject {
    @Published var currentView: GameViews = .menu
    
    func navigate(to view: GameViews) {
        currentView = view
    }
}
