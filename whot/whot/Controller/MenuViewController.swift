//
//  ViewController.swift
//  whot
//
//  Created by stimLite on 03.08.2020.
//  Copyright © 2020 stimLite. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var statusGame: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "startGame":
            guard  let destination = segue.destination as? GameViewController else { return }
            destination.delegate = self
        default:
            break
        }
    }
}

extension MenuViewController: GameViewControllerDelegate {
    func didEndGame(withResult result: Int) {
        print ("hi this is result \(result)")
    }
    
    
}
