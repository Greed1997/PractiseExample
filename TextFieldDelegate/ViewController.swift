//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Александр on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var oneTF: UITextField!
    @IBOutlet var twoTF: UITextField!
    
    @IBOutlet var someNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
     private var someInt = 10

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let oneVC = viewController as? OneViewController {
                oneVC.someInt = someInt
            } else if let twoVC = viewController as? TwoViewController {
                twoVC.someInt = someInt
            }
        }
    }
}
extension ViewController {
    private func someNumberFunc() {
        someNumber.text = String(someInt)
        someInt += 1
    }
}
extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == oneTF {
            twoTF.becomeFirstResponder()
        } else {
            someNumberFunc()
        }
        return true
    }
    
}
