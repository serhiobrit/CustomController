//
//  ViewController.swift
//  CustomController
//
//  Created by Serhio Brit on 28.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customSegment: CustomSegment!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var statsLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customSegment.items = ["DAILY", "WEEKLY", "MONTHLY"]
        customSegment.font = UIFont(name: "Avenir-Black", size: 12)
        customSegment.selectedIndex = 1
        customSegment.padding = 4
        customSegment.addTarget(self, action: #selector(ViewController.segmentValueChanged(_:)), for: .valueChanged)
        
        statsLabel.font = UIFont(name: "Avenir-Black", size: 16)
        statsLabel.textColor = UIColor(white: 1.0, alpha: 1.0)
        statsLabel.text = "PROFIT"
        
        amountLabel.font = UIFont(name: "Avenir-Black", size: 30)
        amountLabel.textColor = UIColor.white
        amountLabel.text = "$25.785"
        
    }
    
    @objc func segmentValueChanged(_ sender: AnyObject?) {
        if customSegment.selectedIndex == 0 {
            amountLabel.text = "$1.290"
        } else if customSegment.selectedIndex == 1 {
            amountLabel.text = "$34.736"
        } else {
            amountLabel.text = "$104.211"
        }
    }


}

