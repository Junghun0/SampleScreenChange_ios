//
//  SecondViewController.swift
//  SampleScreenChange
//
//  Created by 박정훈 on 13/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func presentBackPressed(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
