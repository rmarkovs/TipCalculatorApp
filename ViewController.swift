//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Rebecca Markovsky on 2/2/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var txtBillAmount: UITextField!
    
    @IBOutlet weak var segTipPercent: UISegmentedControl!


    @IBAction func btnCalculate(_ sender: UIButton) {
        let userInput = Float(txtBillAmount.text!)
        let index : Int = segTipPercent.selectedSegmentIndex
        var tipRate : Float = 0.15
        if(index==0)
        {
            tipRate = 0.15
        }
        else if(index==1)
        {
            tipRate = 0.18
        }
        else
        {
            tipRate = 0.2
        }
        
        let tip = userInput! * tipRate
        let display = String (format: "%.2f", tip)
        lblResult.text = display
    }
    
    
    @IBOutlet weak var lblResult: UILabel!
    
}

