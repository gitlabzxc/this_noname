//
//  ViewController.swift
//  test1
//
//  Created by user on 10.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var game = TikTakToe()
    @IBOutlet var arrayButton: [UIButton]!
    
    @IBOutlet var winer: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        let index = arrayButton.firstIndex(of: sender)!
        game.buttonswich(at: index)
        UpdateView()
    }
    
    func UpdateView() {
        for i in arrayButton.indices {
            let card = game.XOs[i]
            let button = arrayButton[i]
            if card.isFaceUp { button.setTitle(card.XO, for: .normal)
                button.isEnabled = false
            }
        }
        if let win = game.winCom()
        {
            winer.text = "Победитель \(win)"
            for i in arrayButton {
                i.isEnabled = false
            }
        }
    }
}
