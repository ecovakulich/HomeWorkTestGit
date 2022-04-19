//
//  SecondViewController.swift
//  HomeWorkTestGit
//
//  Created by Alexander Vakulich on 14.04.22.
//

import Foundation
import UIKit

protocol ShowTextDelegate {
    func showTheText(_ input: String)
}

class SecondViewController: UIViewController, ShowTextDelegate {
    
    let textLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createLabel()
    }

    func showTheText(_ input: String) {
        textLabel.text = input
    }
    
    func createLabel(){
        textLabel.frame = CGRect(x: 50, y:  self.view.frame.width / 2 - 20, width:  self.view.frame.width - 100, height: 40)
        textLabel.backgroundColor = UIColor.gray
        textLabel.textColor = UIColor.black
        textLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(textLabel)
    }

}
