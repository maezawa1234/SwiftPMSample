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

extension NSObject {
    class var className: String {
        return String(describing: self)
    }

    var className: String {
        return type(of: self).className
    }
}

// MARK: - Bundle
extension NSObject {
    static var bundle: Bundle {
        return Bundle(for: self.self)
    }
}

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
            .emit(onNext: { [weak self] in
                let homeVC = HomeViewController()
                self?.present(homeVC, animated: true)
            })
            .disposed(by: disposeBag)
    }
}

