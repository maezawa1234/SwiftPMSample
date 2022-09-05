//
//  HomeViewController.swift
//  
//
//  Created by Kenichi Maezawa on 2022/09/05.
//

import UIKit
import Foundation
import ViewModel

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

public class HomeViewController: UIViewController {
    private let viewModel = HomeViewModel()

    // MARK: - Initialize
    public init() {
        super.init(nibName: Self.className, bundle: .module)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        print(viewModel.text)
        // Do any additional setup after loading the view.
    }
}
