//
//  GameState.swift
//  20_1 RockPaperScissors
//
//  Created by Dzyubin Danila on 14/04/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

enum GameState {
    case start
    case win
    case lose
    case draw

    var status: String {
        switch self {
        case .start:
            return "Камень, Ножницы, Бумага?"
        case .win:
            return "Вы победили! =)"
        case .lose:
            return "Вы проиграли! =("
        case .draw:
            return "Ничья! =/"
        }
    }
}
