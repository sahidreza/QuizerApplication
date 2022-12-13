//
//  ViewController.swift
//  Quizer Application
//
//  Created by Sahid Reza on 11/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // UI PartCOmplete Now is Funtionla part
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print(sender.titleLabel?.text)
    }
    
}

