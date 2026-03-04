//
//  Steps.swift
//  20_1 RockPaperScissors
//
//  Created by Danila Dziubin on 13.01.2023.
//  Copyright © 2023 Dzyubin Danila. All rights reserved.
//

import Foundation
import XCTest

final class Steps {
    
    private let app: XCUIApplication
    private let baseTest: BaseTestCase
    private let screen: Screen
    // private let bottomSheet: BottomSheet
    
    init(
        app: XCUIApplication,
        base: BaseTestCase
    ) {
        self.app = app
        self.baseTest = base
        self.screen = Screen(app: app)
        // self.bottomSheet = BottomSheet(app: app)
    }
    
    // Проверяем видна ли кнопка «Лучшие игроки» на главном экране (дефолтное состояние экрана)
    func checkBestPlayersButtonIsVisible() {
        XCTAssertTrue(
            screen.bestPlayersButton.waitForExistence(timeout: 5),
            "Кнопка «Лучшие игроки» не видна"
        )
    }
    
    // Проверяем отсутствует ли кнопка «Лучшие игроки» при открытии нового состояния экрана (тапнув на любую игровую кнопку- «Камень»,«Ножницы» или «Бумага»)
    func checkBestPlayersButtonIsNotVisible() {
        XCTAssertFalse(
            screen.bestPlayersButton.waitForExistence(timeout: 5),
            "Кнопка «Лучшие игроки» видна"
        )
    }
    
    // Проверяем видна ли кнопка «Ножницы»
    func checkScissorButtonIsVisible() {
        XCTAssertTrue(
            screen.scissorsButton.waitForExistence(timeout: 5),
            "Кнопка ножницы не видна"
        )
    }
    
    // Проверяем видна ли кнопка «Бумага»
    func checkPaperButtonIsVisible() {
        XCTAssertTrue(
            screen.paperButton.waitForExistence(timeout: 5),
            "Кнопка бумага не видна"
        )
    }
    
    // Проверяем видна ли кнопка «Камень»
    func checkRockButtonIsVisible() {
        XCTAssertTrue(
            screen.rockButton.waitForExistence(timeout: 5),
            "Кнопка камень не видна"
        )
    }
    
    // Проверяем видны ли иконки на экране
    func checkBotSignLabel() {
        XCTAssertTrue(
            screen.botSignLabel.waitForExistence(timeout: 5),
            "Иконки на главном экране не видны"
        )
    }
    
    // Проверяем видны ли тексты на экране
    func checkGameStateLabel() {
        XCTAssertTrue(
            screen.gameStateLabel.waitForExistence(timeout: 5),
            "Тексты на главном экране не видны"
        )
    }
    
    // Проверяем видна ли кнопка «Играть снова»
    func checkPlayAgainButtonIsVisible() {
        XCTAssertTrue(
            screen.playAgainButton.waitForExistence(timeout: 5),
            "Отсутствует кнопка 'Играть снова'")
    }
    
    // Проверяем отсутствует ли кнопка «Играть снова» на главном экране (дефолтное состояние экрана)
    func checkPlayAgainButtonIsNotVisible() {
        XCTAssertFalse(
            screen.playAgainButton.waitForExistence(timeout: 5),
            "Отображается кнопка 'Играть снова'")
    }
    
    // Проверяем, что при нажатии на кнопку "Играть снова" отображается главный экран (дефолтное состояние)
    func tapPlayAgain() {
        XCTAssertTrue(
            screen.playAgainButton.waitForExistence(timeout: 5),
            "Главный экран не появился снова"
        )
        screen.playAgainButton.tap()
    }
    
    // Проверяем, что при нажатии на кнопку "Лучшие игроки" отображается БШ
    func tapBestPlayers() {
        XCTAssertTrue(
            screen.bestPlayersButton.waitForExistence(timeout: 5),
            "БШ «Лучшие игроки» не появился"
        )
        screen.bestPlayersButton.tap()
    }
    
    // Проверяем, что в БШ есть текст "Best of the best"
    func checkBestOfTheBestLabelVisible() {
        XCTAssertTrue(
            screen.bestOfTheBestLabel.waitForExistence(timeout: 5),
            "Текст Best of the best не появился"
        )
    }
    
    // Проверяем, что при нажатии на кнопку "Close" отображается главный экран
    func closeBestPlayers() {
        XCTAssertTrue(
            screen.closeButton.waitForExistence(timeout: 5),
            "Главный экран не появился снова"
        )
        screen.closeButton.tap()
    }
    
    // Проверяем видна ли кнопка «Close» в БШ
    func checkCloseButtonAreVisible() {
        XCTAssertTrue(
            screen.closeButton.waitForExistence(timeout: 5),
            "Отсутствует кнопка 'Close'"
        )
    }
    
    // Проверяем видны ли тексты "Бумажная бумага", "Каменный камень" и "Ножничные ножницы" в БШ
    func checkPlayersAreVisible() {
        XCTAssertTrue(screen.paperPlayerLabel.exists)
        XCTAssertTrue(screen.rockPlayerLabel.exists)
        XCTAssertTrue(screen.scissorPlayerLabel.exists)
    }
    
    // Проверяем, что не отображается бш с текстом "Best of the best"
    func checkNavBarIsNotVisible() {
        XCTAssertFalse(
            screen.navBar.waitForExistence(timeout: 5),
            "Отображается навбар с текстом 'Best of the best'"
        )
    }
    
    // проверяем нажатие на кнопку «Ножницы»
    func tapScissors() {
        XCTAssertTrue(
            screen.scissorsButton.waitForExistence(timeout: 5),
            "Отсутствует кнопка 'Ножницы'"
        )
        screen.scissorsButton.tap()
    }
    
    // проверяем нажатие на кнопку «Камень»
    func tapRock() {
        XCTAssertTrue(
            screen.rockButton.waitForExistence(timeout: 5),
            "Отсутствует кнопка 'Камень'"
        )
        screen.rockButton.tap()
    }
    
    // проверяем нажатие на кнопку «Бумага»
    func tapPaper() {
        XCTAssertTrue(
            screen.paperButton.waitForExistence(timeout: 5),
            "Отсутствует кнопка 'Бумага'"
        )
        screen.paperButton.tap()
    }
}
