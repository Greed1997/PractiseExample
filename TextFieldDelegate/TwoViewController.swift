//
//  TwoViewController.swift
//  TextFieldDelegate
//
//  Created by Александр on 25.07.2022.
//

import UIKit

class TwoViewController: UITabBarController {

    @IBOutlet var someLabel: UILabel!
    var someInt: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        someLabel?.text = String(someInt + 2)
    }

}
