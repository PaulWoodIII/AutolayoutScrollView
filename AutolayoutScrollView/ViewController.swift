//
//  ViewController.swift
//  AutolayoutScrollView
//
//  Created by Paul Wood on 8/11/16.
//  Copyright © 2016 Paul Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func refreshText(_ sender: UIButton) {
        label1.text = String.randomLoremIpsumString()
        label2.text = String.randomLoremIpsumString()
        label3.text = String.randomLoremIpsumString()
    }
    
}


extension String {
    static func randomLoremIpsumString() -> String {
        let loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et aliquam tortor, venenatis commodo nulla. Sed ultrices bibendum efficitur. Duis id ex condimentum, pulvinar purus congue, facilisis felis. Etiam volutpat, nulla sed blandit dictum, massa neque finibus velit, ut scelerisque purus ex et magna. Aenean gravida velit lacus, sed egestas enim imperdiet eu. Duis metus odio, viverra et condimentum vitae, dapibus at mi."
        
        var finalString = loremIpsum
        let randomNumber = arc4random_uniform(10)
        
        for _ in 0..<randomNumber {
            finalString += "\n"
            finalString += loremIpsum
        }
        
        return finalString
    }
}
