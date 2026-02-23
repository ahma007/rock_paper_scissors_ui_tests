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
    private let bottomSheet: BottomSheet
    
    init(
        app: XCUIApplication,
        base: BaseTestCase
    ) {
        self.app = app
        self.baseTest = base
        self.screen = Screen(app: app)
        self.bottomSheet = BottomSheet(app: app)
    }
    
    // Открытие приложения
    func launchApp() {
        XCTAssertTrue(screen.waitForScreen(), "Главный экран не отобразился")
    }
    
    // Проверяем видна ли кнопка «Лучшие игроки»
    func checkBestPlayersButtonIsVisible() {
            XCTAssertTrue(
                screen.bestPlayersButton.waitForExistence(timeout: 5),
                "Кнопка «Лучшие игроки» не видна"
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
    
    // Проверяем видна ли кнопка «Ножницы»
    func checkRockButtonIsVisible() {
        XCTAssertTrue(
            screen.rockButton.waitForExistence(timeout: 5),
            "Кнопка камень не видна"
        )
    }
    
    // Проверяем видна ли иконка робота
    func checkBotSignLabel() {
        XCTAssertTrue(
            screen.botSignLabel.waitForExistence(timeout: 5),
            "Иконка робота не видна"
        )
    }
    
    // Проверяем виден ли Текст «Камень, Ножницы, Бумага?
    func checkGameStateLabel() {
        XCTAssertTrue(
            screen.gameStateLabel.waitForExistence(timeout: 5),
            "Текст «Камень, Ножницы, Бумага?» не виден"
        )
    }
    
    // Проверяем, что при нажатии игровых кнопок состояние главного экрана меняется, и SwiftUI автоматически перерисовывает интерфейс, показывая новое состояние экрана
    func makeMove(_ move: Move) {
            screen.tapMove(move)
        }
    
    // Проверяем, что при нажатии на кнопку "Играть снова" снова отображается главный экран
    func tapPlayAgain() {
            screen.tapPlayAgain()
            XCTAssertTrue(
                screen.waitForScreen(),
                "Главный экран не появился снова"
            )
        }
    
    // Проверяем, что при нажатии на кнопку "Лучшие игроки" отображается БШ
    func openBestPlayers() {
            screen.openBestPlayers()
            XCTAssertTrue(
                bottomSheet.waitForSheet(),
                "БШ «Лучшие игроки» не появился"
            )
        }
    
    // Проверяем, что при нажатии на кнопку "Close" отображается главный экран
    func closeBestPlayers() {
            bottomSheet.close()
            XCTAssertTrue(
                screen.waitForScreen(),
                "Главный экран не появился снова"
            )
        }
    
    // Проверяем видна ли кнопка «Close» в БШ
    func checkCloseButtonAreVisible() {
        XCTAssertTrue(bottomSheet.closeButton.exists)
    }
    
    // Проверяем видны ли тексты "Бумажная бумага", "Каменный камень" и "Ножничные ножницы"
    func checkPlayersAreVisible() {
            XCTAssertTrue(bottomSheet.paperPlayerLabel.exists)
            XCTAssertTrue(bottomSheet.rockPlayerLabel.exists)
            XCTAssertTrue(bottomSheet.scissorPlayerLabel.exists)
        }
    
//    func tapScissors() {
//        XCTAssertTrue(
//            screen.scissorsButton
//                .waitForExistence(timeout: 5),
//            "Отсутствует кнопка 'Ножницы'"
//        )
//        screen.scissorsButton.tap()
//    }
//    
//    func tapRock() {
//        XCTAssertTrue(
//            screen.rockButton
//                .waitForExistence(timeout: 5),
//            "Отсутствует кнопка 'Камень'"
//        )
//        screen.rockButton.tap()
//    }
//    
//    func tapPaper() {
//        XCTAssertTrue(
//            screen.paperButton
//                .waitForExistence(timeout: 5),
//            "Отсутствует кнопка 'Бумага'"
//        )
//        screen.paperButton.tap()
//    }
    
    // Проверяем видна ли кнопка «Играть снова»
    func checkPlayAgainButtonIsVisible() {
        XCTAssertTrue(
            screen.playAgainButton
                .waitForExistence(timeout: 5),
        "Отсутствует кнопка 'Играть снова'")
    }
}
