//
//  ViewController.swift
//  Sample3
//
//  Created by Kenichi Maezawa on 2022/09/05.
//

import UIKit
import ViewModels
import RxSwift
import RxCocoa
import View

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!

    private let homeViewModel = HomeViewModel()
    private let featureA = FeatureA()

    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(homeViewModel.text)
        print(featureA.text)

        button.rx.tap.asSignal()
            .emit(onNext: {

            })
            .disposed(by: disposeBag)
    }
}

