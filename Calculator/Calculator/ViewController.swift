//
//  ViewController.swift
//  Calculator
//
//  Created by toru murayama  on 2019/11/29.
//  Copyright © 2019 toru murayama . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tF1: UITextField!
    @IBOutlet weak var tF2: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calButton(_ sender: UIButton) {
        
        if self.tF1.text?.count == 0 {
            showAlert(title: "Error", message: "上のテキストに文字を入れてください")
            print("returnしました")
            return
        }
        
        if self.tF2.text?.count == 0 {
            showAlert(title: "Error", message: "下のテキストに文字を入れてください")
            print("returnしました")
            return
        }
        
        let first = Int(self.tF1.text ?? "")!
        let second = Int(self.tF2.text ?? "")!
        
        
        var result = 0
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            result = first + second
            break
        case 1:
            result = first - second
            break
        case 2:
            result = first * second
            break
        case 3:
            result = first / second
            break
        default:
            break
        }
        print(result)
        
        resultLabel.text = String(result)
    }
    
    func showAlert(title:String, message:String){
        let alert:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action:UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

