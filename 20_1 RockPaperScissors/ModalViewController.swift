//
//  ModalViewController.swift
//  20_1 RockPaperScissors
//

import UIKit

class ModalViewController1: UIViewController {

    @IBOutlet weak var dismiss: UIButton!

    @IBAction func dis(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
