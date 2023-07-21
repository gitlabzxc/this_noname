//
//  Controler.swift
//  test1
//
//  Created by user on 10.07.2023.
//

import Foundation
class TikTakToe {
    var XOs:[XO] = []
    var winConbination = [[0,3,6],[1,4,7],[2,5,8],[0,1,2],[3,4,5],[6,7,8],[0,4,8],[6,4,2],[8,6,2]]
    var indexup = 0
    init() {
        for _ in 0...8 {
            let XO1 = XO()
            XOs.append(XO1)
        }
    }
    func buttonswich(at index:Int) {
        indexup += 1
        if indexup%2 == 0 {
            XOs[index].XO = "🔘"
        }
        else {
            XOs[index].XO = "✖️"
        }
        XOs[index].isFaceUp = true
    }
    func winCom() -> String? {
        for i in winConbination {
            if XOs[i[0]].XO == XOs[i[1]].XO && XOs[i[1]].XO == XOs[i[2]].XO && XOs[i[0]].isFaceUp {
                return XOs[i[0]].XO
            }
        }
        if indexup == 9 {
            return "ничия"
        }
        return nil
    }
}
