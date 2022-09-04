//
//  TestViewController.swift
//  
//
//  Created by Kenichi Maezawa on 2022/09/05.
//

import UIKit

public class TestViewController: UIViewController {

    // インスタンス化
    public static func configure() -> Self {
        if #available(iOS 13.0, *) {
            let viewController = UIStoryboard(name: Self.className, bundle: .module)
                .instantiateViewController(identifier: Self.className) as! Self
            return viewController
        } else {
            // Fallback on earlier versions
            return TestViewController() as! Self
        }
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
