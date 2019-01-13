//
//  ViewController.swift
//  SampleScreenChange
//
//  Created by 박정훈 on 13/01/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func goBackbutton(_ sender: UIStoryboardSegue){
    }
    @IBAction func goBackSegue(_ sender: UIStoryboardSegue){
    }
    @IBAction func goBackSegue2(_ sender: UIStoryboardSegue){
    }
    
    @IBAction func presentSecondView(_ sender: Any) {
        guard let secondViewInstance = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else{
            return
        }
        secondViewInstance.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        self.present(secondViewInstance, animated: true, completion: nil)
    }
    
    @IBAction func manualSegueBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ActionSegue"){
            NSLog("action segue 실행!")
        }else if(segue.identifier == "ManualSegue"){
            NSLog("Manual segue 실행!")
        }else if(segue.identifier == "CustomSegue"){
            NSLog("Custom segue 실행!")
        }else{
            NSLog("알수없는 segue 입니다.")
        }
    }
    
    

}

