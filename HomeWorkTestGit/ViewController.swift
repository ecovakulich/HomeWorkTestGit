//
//  ViewController.swift
//  HomeWorkTestGit
//
//  Created by Anastasiya Laptseva on 13.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
        createTextFields()
    }
    
    func createButton() {
        let button = UIButton(frame: CGRect(x: 100.0, y: 400.0, width: 100.0, height: 50.0))
        button.backgroundColor = .gray
        button.setTitle("Save", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    func createTextFields() {
        let textField: UITextField = UITextField(frame: CGRect(x: 50.0, y: 100.0, width: 200.0, height: 30.0));
        self.view.addSubview(textField)
        
        textField.borderStyle = UITextField.BorderStyle.line
        textField.text = "Enter any text"
        textField.backgroundColor = UIColor.green
        
        let textField2: UITextField = UITextField(frame: CGRect(x: 50.0, y: 150.0, width: 200.0, height: 30.0));
        self.view.addSubview(textField2)
        
        textField2.borderStyle = UITextField.BorderStyle.line
        textField2.text = "Enter some more text"
        textField2.backgroundColor = UIColor.green
    }
    
    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }


}

