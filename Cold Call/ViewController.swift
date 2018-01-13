//
//  ViewController.swift
//  Cold Call
//
//  Created by Emily on 1/10/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var num: UILabel!
    
    let nameBank = [
        ("Anna"),("Bnna"),("Cnna"),("Dnna"),("Enna"),("Fnna"),("Gnna"),("Hnna"),
    ]
    let numberBank = [1,2,3,4,5]
//    let number = Int(arc4random_uniform(5) + 1)
    var x = 0
    var y = 0
    @IBAction func coldcallButtonPress(_ sender: UIButton) {
        x = Int(arc4random_uniform(UInt32(nameBank.count)))
        name.text = nameBank[x]
        y = Int(arc4random_uniform(UInt32(numberBank.count)))
        num.text = String(numberBank[y])
        if num.text == "1" {
            num.textColor = UIColor.red
        }else if  num.text == "2" {
            num.textColor = UIColor.green
        }else if  num.text == "3" {
            num.textColor = UIColor.blue
        }else if num.text == "4" {
            num.textColor = UIColor.purple
        }else{
            num.textColor = UIColor.yellow
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    }

