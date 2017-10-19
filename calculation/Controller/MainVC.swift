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
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame:CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 0.9393837246, green: 0.5449611443, blue: 0.01208640769, alpha: 1)
        calBtn.setTitle("Calcualte", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.caluclate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func caluclate ()
    {
        if let wageTxt = wageTxt.text ,let priceTxt = priceTxt.text
        {
            if let wage = Double (wageTxt) , let price = Double (priceTxt)
            {
                view.endEditing(true)// to close the keyboard or decimal pad
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any)
    {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    

}

