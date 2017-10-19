//
//  ViewController.swift
//  calculation
//
//  Created by Bibhuranjan Bihari on 19/10/17.
//  Copyright © 2017 Bibhuranjan Bihari. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame:CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 0.9393837246, green: 0.5449611443, blue: 0.01208640769, alpha: 1)
        calBtn.setTitle("Calcualte", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.caluclate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
    }
    @objc func caluclate ()
    {
        
    }



}

