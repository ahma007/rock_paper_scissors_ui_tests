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
        
        steps.checkBestPlayersButtonIsVisible() // находим кнопку "Лучшие игроки"
        steps.checkScissorButtonIsVisible() // находим кнопку ножницы
        steps.checkPaperButtonIsVisible() // находим кнопку бумага
        steps.checkRockButtonIsVisible() // находим кнопку камень
        steps.checkBotSignLabel() // находим иконку робота
        steps.checkGameStateLabel() // находим текст "Камень, Ножницы, Бумага?"
    }
    
    // проверка бш Лучшие игроки
    func testBestPlayersFlow() {
        
        steps.checkBestPlayersButtonIsVisible() // находим кнопку "Лучшие игроки"
        steps.tapBestPlayers() // тапаем на кнопку "Лучшие игроки" - открываем бш "Best of the best"
        steps.checkBestOfTheBestLabelVisible() // находим текст "Best of the best" в бш
        steps.checkPlayersAreVisible() // находим список игроков в бш
        steps.checkCloseButtonAreVisible() // находим кнопку "Close" в бш
        steps.closeBestPlayers() // тапаем на кнопку "Close" - закрываем бш "Best of the best" - отображаем главный экран
        steps.checkNavBarIsNotVisible() // проверяем, что бш "Best of the best" закрыт 
    }
    
    // Нажали камень - проверили экран
    func testRockDraws() {
        
        steps.tapRock() // тапаем на кнопку камень - показываем новое состояние экрана
        steps.checkBotSignLabel() // находим иконку камень
        steps.checkGameStateLabel() // находим текст "Ничья!=/"
        steps.checkPlayAgainButtonIsVisible() // находим кнопку "Играть снова"
    }
    
    // Нажали ножницы - проверили экран
    func testScissorsWins() {
        
        steps.tapScissors() // тапаем на кнопку ножницы - показываем новое состояние экрана
        steps.checkBotSignLabel() // находим иконки ножницы и бумага
        steps.checkGameStateLabel() // находим текст "Вы победили!=)"
        steps.checkPlayAgainButtonIsVisible() // находим кнопку "Играть снова"
    }
    
    // Нажали бумагу - проверили экран
    func testPaperLose() {
        
        steps.tapPaper() // тапаем на кнопку бумага - показываем новое состояние экрана
        steps.checkBotSignLabel() // находим иконки бумага и ножницы
        steps.checkGameStateLabel() // находим текст "Вы проиграли!=("
        steps.checkPlayAgainButtonIsVisible() // находим кнопку "Играть снова"
    }
    
    // работоспособность кнопки Играть снова
    func testTapPlayAgain() {
        
        steps.tapPaper() // тапаем на любую игровую кнопку, например на бумагу - показываем новое состояние экрана
        steps.checkBestPlayersButtonIsNotVisible() // проверяем отсутствует ли кнопка «Лучшие игроки» в новом состоянии экрана
        steps.checkPlayAgainButtonIsVisible() // находим кнопку "Играть снова"
        steps.tapPlayAgain() // тапаем на кнопку "Играть снова" - возвращаем дефолтное состояние главного экрана
        steps.checkPlayAgainButtonIsNotVisible() // проверяем отсутствует ли кнопка «Играть снова», для проверки, что мы на главном экране
        steps.checkBestPlayersButtonIsVisible() // находим кнопку "Лучшие игроки", как проверочный элемент, что мы на главном экране
    }
}
