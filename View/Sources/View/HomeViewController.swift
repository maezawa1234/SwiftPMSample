import UIKit
import Foundation
import ViewModel
import Repositories
import RxSwift

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
    private let repository = HomeRepository()
    private let disposeBag = DisposeBag()

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
        repository.getHomeData()
            .subscribe(onSuccess: {
                print("get data!", $0)
            })
            .disposed(by: disposeBag)
        if #available(iOS 13.0, *) {
            let image = Asset.iconAirdrop.image
            let testImage = UIImageView(image: image)

            testImage.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
            self.view.addSubview(testImage)
        } else {
        }
    }
}
