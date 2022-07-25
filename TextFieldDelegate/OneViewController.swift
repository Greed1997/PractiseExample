//
//  OneViewController.swift
//  TextFieldDelegate
//
//  Created by Александр on 25.07.2022.
//

import UIKit

class OneViewController: UITabBarController {

    @IBOutlet var someLabel: UILabel!
    var someInt: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
//        print(type(of: someLabel?.text))
//        print(type(of: String(someInt)))
        someLabel?.text = String(someInt) // Почему не работает? Как исправить?
    }
}
