//
//  ViewController.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 9/7/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    struct Kariem: Developer {
        var name = "Kimo"
        var age = 25
        func saySwift() {
            
    
        }
        
    }
    
    
    
    
}



protocol Developer {
    var name: String { get set }
    var age : Int { get set }
    func saySwift()
}
