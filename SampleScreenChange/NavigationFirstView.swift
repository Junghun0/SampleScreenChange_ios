//
//  NavigationFirstView.swift
//  SampleScreenChange
//
//  Created by 박정훈 on 13/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class NavigationFirstView : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func naviGoSecond(_ sender: Any) {
        guard let naviSecondview = self.storyboard?.instantiateViewController(withIdentifier: "NavigationSecondView") else{
            return
        }
        self.navigationController?.pushViewController(naviSecondview, animated: true)
    }
}
