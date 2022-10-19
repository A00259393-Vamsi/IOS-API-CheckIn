//
//  ViewController.swift
//  swapi
//
//  Created by Cambrian on 2022-09-20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        SWAPI_Helper.fetchDir()
    }

    @IBAction func kontests(_ sender: UIButton) {

        SWAPI_Helper.fetchDir()
    
    }
    
    
    @IBAction func jsdelivr(_ sender: UIButton) {

        SWAPI_Helper.fetchCurrency()
    }
    
    
    @IBAction func arbeitnow(_ sender: UIButton) {
        SWAPI_Helper.fetchJobs()
    }
    
    
    
    
}

