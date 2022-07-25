//
//  ViewController.swift
//  LEDBoard
//
//  Created by 백래훈 on 2022/07/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentLabel.textColor = .yellow
    }


}

