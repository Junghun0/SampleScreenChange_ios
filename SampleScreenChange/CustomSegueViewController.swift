//
//  CustomSegueViewController.swift
//  SampleScreenChange
//
//  Created by 박정훈 on 13/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class CustomSegueViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func customSegueBackbtn(_ sender: Any) {
        performSegue(withIdentifier: "UnwindSegue", sender: self)
    }
}
