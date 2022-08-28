//
//  ModuleFactory.swift
//  SMSH-Summer
//
//  Created by 강윤서 on 2022/08/27.
//

import Foundation
import UIKit

protocol ModuleFactoryProtocol {
    
    // MARK: - Auth
    func VC() -> ViewController
    func SplashVC() -> splashVC
    func WriteVC() -> writeVC
}

class ModuleFactory: ModuleFactoryProtocol {

    static func resolve() -> ModuleFactory {
        return ModuleFactory()
    }
  
    // MARK: - Main
    func VC() -> ViewController {
        let vc = ViewController.controllerFromStoryboard(.main)
        return vc
    }
    
    func Home() -> HomeViewController {
        let vc = HomeViewController()
        return vc
    }
    
    func SplashVC() -> splashVC {
        let vc = splashVC.controllerFromStoryboard(.Splash)
        return vc
    }
    
    func WriteVC() -> writeVC {
        let vc = writeVC.controllerFromStoryboard(.WriteView)
        return vc
    }
}
