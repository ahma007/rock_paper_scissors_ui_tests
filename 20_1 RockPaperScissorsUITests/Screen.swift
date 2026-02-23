//
//  Helpers.swift
//  20_1 RockPaperScissorsUITests
//
//  Created by Dzyubin Danila on 27/05/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import XCTest

enum Move {
    case rock
    case paper
    case scissors
}

final class Screen {

    private let app: XCUIApplication

    init(
        app: XCUIApplication
    ) {
        self.app = app
    }

    // Элемент - иконка робота на главном экране
    var botSignLabel: XCUIElement {
        app.staticTexts["botSignLabel"]
    }
    
    // Элемент - текст 'Камень, Ножницы, Бумага?' на главном экране
    var gameStateLabel: XCUIElement {
        app.staticTexts["gameStateLabel"]
    }
    
    // Элемент - кнопка 'Камень' на главном экране
    var rockButton: XCUIElement {
        app.buttons["rockButton"]
    }
    
    // Элемент - кнопка 'Ножницы' на главном экране
    var scissorsButton: XCUIElement {
        app.buttons["scissorsButton"]
    }
    
    // Элемент - кнопка 'Бумага' на главном экране
    var paperButton: XCUIElement {
        app.buttons["paperButton"]
    }
    
    // Элемент - кнопка 'Лучшие игроки' на главном экране
    var bestPlayersButton: XCUIElement {
        app.buttons["Лучшие игроки"]
    }
    
    // Элемент - кнопка 'Играть снова' на главном экране при тапе на кнопки камень, ножницы или бумагу
    var playAgainButton: XCUIElement {
        app.buttons["playAgainButton"]
    }
    
    func waitForScreen(timeout: TimeInterval = 5) -> Bool {
            return gameStateLabel.waitForExistence(timeout: timeout)
        }
    
    func tapMove(_ move: Move) {
            button(for: move).tap()
        }
    
    private func button(for move: Move) -> XCUIElement {
        switch move {
                case .rock: return rockButton
                case .scissors: return scissorsButton
                case .paper: return paperButton
                }
    }
    
    func tapPlayAgain() {
            playAgainButton.tap()
        }

    func openBestPlayers() {
            bestPlayersButton.tap()
        }
}

final class BottomSheet {
    
    private let app: XCUIApplication

    init(
        app: XCUIApplication
    ) {
        self.app = app
    }
    
    // Элемент - навбар с текстом "Best of the best"
    var navBar: XCUIElement {
        app.navigationBars["Best of the best"]
    }
    
    // Элемент - кнопка "Close"
    var closeButton: XCUIElement {
        navBar.buttons["Close"]
    }
    
    // Элемент - текст "Бумажная бумага"
    var paperPlayerLabel: XCUIElement {
        app.staticTexts["Бумажная бумага"]
    }
    
    // Элемент - текст "Каменный камень"
    var rockPlayerLabel: XCUIElement {
        app.staticTexts["Каменный камень"]
    }
    
    // Элемент - текст "Ножничные ножницы"
    var scissorPlayerLabel: XCUIElement {
        app.staticTexts["Ножничные ножницы"]
    }
    
    func waitForSheet(timeout: TimeInterval = 5) -> Bool {
            return navBar.waitForExistence(timeout: timeout)
        }

        func close() {
            closeButton.tap()
        }
}


