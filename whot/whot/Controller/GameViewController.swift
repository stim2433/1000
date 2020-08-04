//
//  GameViewController.swift
//  whot
//
//  Created by stimLite on 04.08.2020.
//  Copyright © 2020 stimLite. All rights reserved.
//

import UIKit



protocol GameViewControllerDelegate: AnyObject {
    func didEndGame (withResult result: Int)
}

class GameViewController: UIViewController {
    
    weak var delegate: GameViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scen = GameScene()
        scen.gameDelegate = self
    }
}

extension GameViewController: GameSceneDelegate {
    func didEndGame(withResult result: Int) {
        self.delegate?.didEndGame(withResult: result)
        self.dismiss(animated: true, completion: nil)
    }
}
