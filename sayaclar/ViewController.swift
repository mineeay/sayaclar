//
//  ViewController.swift
//  sayaclar
//
//  Created by Mine mac on 13.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zamanLabel: UILabel!
     var timer = Timer()
    var kalanzaman = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
      kalanzaman = 15
        zamanLabel.text = "Zaman:\(kalanzaman)"
}
    @IBAction func baslattiklandi(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(timerfonksiyonu), userInfo: nil, repeats: true)
    }
    
    @objc func timerfonksiyonu(){
    
    zamanLabel.text = "Zaman: \(kalanzaman)"
        kalanzaman = kalanzaman - 1
    
}
    }

