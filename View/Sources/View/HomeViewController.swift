//
//  HomeViewController.swift
//  
//
//  Created by Kenichi Maezawa on 2022/09/05.
//

import UIKit
import Foundation

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

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}