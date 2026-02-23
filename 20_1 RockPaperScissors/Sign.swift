//
//  Enum.swift
//  20_1 RockPaperScissors
//
//  Created by Dzyubin Danila on 14/04/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import GameplayKit

// Рандом для выбора хода бота
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

// Рандомный ход бота
func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

// Enum для обозначения хода
enum Sign {
    case rock
    case paper
    case scissors

    // Для визуального обозначения хода
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }

    // Сравнение со знаком оппонента
    func compareSigns(botSign: Sign) -> GameState {
        if self == botSign {
            return .draw
        }

        switch self {
        case .rock:
            if botSign == .scissors {
                return .win
            }
        case .paper:
            if botSign == .rock {
                return .win
            }
        case .scissors:
            if botSign == .paper {
                return .win
            }
        }
        return .lose
    }
}
