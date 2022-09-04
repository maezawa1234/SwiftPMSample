//
//  ViewController.swift
//  Sample3
//
//  Created by Kenichi Maezawa on 2022/09/05.
//

import UIKit
import ViewModels

class ViewController: UIViewController {
    private let homeViewModel = HomeViewModel()
    private let featureA = FeatureA()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(homeViewModel.text)
        print(featureA.text)
    }
}

