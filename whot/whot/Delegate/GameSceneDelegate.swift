//
//  GameSceneDelegete.swift
//  whot
//
//  Created by stimLite on 04.08.2020.
//  Copyright © 2020 stimLite. All rights reserved.
//

import Foundation


protocol GameSceneDelegate: AnyObject {
    
    func didEndGame (withResult result: Int)
}
