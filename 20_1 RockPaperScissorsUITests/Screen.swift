//
//  Helpers.swift
//  20_1 RockPaperScissorsUITests
//
//  Created by Dzyubin Danila on 27/05/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import XCTest

final class Screen {
    
    private let app: XCUIApplication
    
    init(
        app: XCUIApplication
    ) {
        self.app = app
    }
    
    // Элементы - иконки на главном экране
    var botSignLabel: XCUIElement {
        app.staticTexts["botSignLabel"]
    }
    
    // Элементы - тексты на главном экране
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
    
    // Элемент - кнопка 'Играть снова' на главном экране (появляется при тапе на кнопки камень, ножницы или бумагу)
    var playAgainButton: XCUIElement {
        app.buttons["playAgainButton"]
    }
    
    // Элемент - навбар с текстом "Best of the best"
    var navBar: XCUIElement {
        app.navigationBars["Best of the best"]
    }
    
    // Элемент - кнопка "Close"
    var closeButton: XCUIElement {
        navBar.buttons["Close"]
    }
    
    // Элемент - текст "Best of the best" в БШ
    var bestOfTheBestLabel: XCUIElement {
        navBar.staticTexts["Best of the best"]
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
}
