//
//  ViewController.swift
//  I18n Demo
//
//  Created by dam on 08/06/2019.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        populateValues()
    }
    
    var currencyFormater: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }

    private func populateValues(){
        textLabel.text = NSLocalizedString("HELLO_WORLD", comment: "Hello world")
        currencyLabel.text = currencyFormater.string(from: 10000)
        dateLabel.text = dateFormatter.string(from: NSDate() as Date)
        imageView.image = UIImage(named: "flag")
    }

}

