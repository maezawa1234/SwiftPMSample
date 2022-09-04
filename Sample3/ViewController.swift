//
//  ViewController.swift
//  Sample3
//
//  Created by Kenichi Maezawa on 2022/09/05.
//

import UIKit
import ViewModels

class ViewController: UIViewController {

    private let viewModel = ViewModel("SwiftPM Sample App")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(viewModel.text)
    }
}

