//
//  NoViewController.swift
//  MaryMe
//
//  Created by lucas meireles on 21/01/23.
//

import Foundation
import UIKit

class NoViewController: UIViewController {
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        label.numberOfLines = 0
        label.text = "Try again \nnext year :("
        label.textColor = UIColor(displayP3Red: 213/255.0, green: 57/255.0, blue: 250/255.0, alpha: 0.7)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Times New Roman", size: CGFloat(70))
        view.addSubview(label)
        
        view.backgroundColor = UIColor(displayP3Red: 108/255.0, green: 57/255.0, blue: 250/255.0, alpha: 0.7)
        
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
        ])
    }
}
