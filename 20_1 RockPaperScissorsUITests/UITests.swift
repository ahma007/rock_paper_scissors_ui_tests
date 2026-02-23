//
//  File.swift
//  20_1 RockPaperScissorsUITests
//
//  Created by Dzyubin Danila on 27/05/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import XCTest

class UITests: BaseTestCase {

    // целиком проверка главного экрана
    func testAllElementsOnMainScreen() {
        steps.launchApp()
        steps.checkBestPlayersButtonIsVisible()
        steps.checkScissorButtonIsVisible()
        steps.checkPaperButtonIsVisible()
        steps.checkRockButtonIsVisible()
        steps.checkBotSignLabel()
        steps.checkGameStateLabel()
    }
    
    // проверка бш Лучшие игроки
    func testBestPlayersFlow() {

            steps.launchApp()
            steps.checkBestPlayersButtonIsVisible()
            steps.openBestPlayers()
            steps.checkPlayersAreVisible()
            steps.checkCloseButtonAreVisible()
            steps.closeBestPlayers()
        }
    
    // Нажали Камень - проверили экран
    func testRockDraws() {
        steps.launchApp()
        steps.makeMove(.rock)
        steps.checkBotSignLabel()
        steps.checkGameStateLabel()
        steps.checkPlayAgainButtonIsVisible()
    }
    
    // Нажали ножницы - проверили экран
    func testScissorsWins() {
        steps.launchApp()
        steps.makeMove(.scissors)
        steps.checkBotSignLabel()
        steps.checkGameStateLabel()
        steps.checkPlayAgainButtonIsVisible()
    }
    
    // Нажали бумагу - проверили экран
    func testPaperLose() {
        steps.launchApp()
        steps.makeMove(.paper)
        steps.checkBotSignLabel()
        steps.checkGameStateLabel()
        steps.checkPlayAgainButtonIsVisible()
    }
    
    // работоспособность кнопки Играть снова
    func testTapPlayAgain() {
        steps.launchApp()
        steps.makeMove(.paper)
        steps.checkPlayAgainButtonIsVisible()
        steps.tapPlayAgain()
    }
}
